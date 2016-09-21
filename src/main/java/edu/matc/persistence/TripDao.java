package edu.matc.persistence;
import edu.matc.entity.Trip;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.ArrayList;
import java.util.List;

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

        /**
         * retrieve a trip given their id
         *
         * @param id the trip's id
         * @return trip
         */
        public Trip getTrip(int id) {
            Session session = SessionFactoryProvider.getSessionFactory().openSession();
            Trip trip = (Trip) session.get(Trip.class, id);

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

