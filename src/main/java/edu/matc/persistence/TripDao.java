package edu.matc.persistence;
import edu.matc.entity.Trip;
import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import java.io.FileNotFoundException;
import java.util.*;

/**
 * Created by nataliya.knudson on 9/19/2016.
 */
public class TripDao {
        private final Logger log = Logger.getLogger(this.getClass());

        /** Return a list of all trips
         *
         * @return All trips
         */
        public List<Trip> getAllTrips() {
            List<Trip> trips = new ArrayList<Trip>();
            Session session = SessionFactoryProvider.getSessionFactory().openSession();
            trips = session.createCriteria(Trip.class).list();
            return trips;
        }

        public List<String> getAllCountries() {
            List<String> countries = new ArrayList<String>();
            Session session = SessionFactoryProvider.getSessionFactory().openSession();
            List<Trip> trips = session.createCriteria(Trip.class).list();
            HashSet<String> distinct_countries = new HashSet<>();
            for (Trip trip : trips) {
                distinct_countries.add(trip.getCountry());
            }
            countries.addAll(distinct_countries);
            Collections.sort(countries);
            return countries;
        }

        /**
         * retrieve a trip given their id
         *
         * @param id the trip's id
         * @return trip
         */
        public Trip getTrip(int id) {
            log.info("id = " + id);
            Session session = SessionFactoryProvider.getSessionFactory().openSession();
            Trip trip = (Trip) session.get(Trip.class, id);
            log.info("trip = " + trip);
            return trip;

        }
    /**
     * retrieve a trip given their county
     *
     * @param country the trip's country
     * @return trip
     */
    public Trip getTripByCountry(String country) throws FileNotFoundException {
        log.info("Line 47 country = " + country);
        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        Criteria criteria = session.createCriteria(Trip.class).add(Restrictions.eq("country", country));
        if (criteria.list().size() == 0) {
            throw new FileNotFoundException("Country " + country + " is not found");
        }
        Trip trip= (Trip) criteria.list().get(0);
        //Trip trip = (Trip) session.get(Trip.class, country);
        log.info("Line 50 trip = " + country);
        return trip;

    }


        /**
         * add a user
         *
         * @param trip
         * @return the id of the inserted record
         */
        public int addTrip(Trip trip) {
            Session session = SessionFactoryProvider.getSessionFactory().openSession();
            Transaction trns = null;
            int id = 0;
            try {
                trns = session.beginTransaction();
                id = (Integer) session.save(trip);
                trns.commit();
            } catch (RuntimeException ex) {
                if (trns != null) {
                    trns.rollback();
                }
                ex.printStackTrace();
            } finally {
                session.flush();
                session.close();
            }
            return id;
        }

        /**
         * delete a trip by id
         * @param id the trip's id
         */
        public Boolean deleteTrip(int id) {
            Session session = SessionFactoryProvider.getSessionFactory().openSession();
            //User user = (User) session.delete()

            Transaction trns = null;
            try {
                trns = session.beginTransaction();
                Trip trip = (Trip) session.get(Trip.class, id);
                session.delete(trip);
                session.getTransaction().commit();

            } catch (RuntimeException e) {
                if (trns != null) {
                    trns.rollback();
                }
                e.printStackTrace();
                return false; //if void = Boolean
            }
            finally {
                session.flush();
                session.close();
            }
            return true;
        }

        /**
         * Update the trip
         * @param trip
         */

        public void updateTrip(Trip trip) {
            Transaction trns = null;
            Session session = SessionFactoryProvider.getSessionFactory().openSession();
            try {
                trns = session.beginTransaction();
                session.update(trip);
                //log.info(trip);
                session.getTransaction().commit();
            } catch (RuntimeException e) {
                if (trns != null) {
                    trns.rollback();
                }
                e.printStackTrace();
            } finally {
                session.flush();
                session.close();
            }

        }



    }

