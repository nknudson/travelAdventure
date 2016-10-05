package edu.matc.persistence;

import org.junit.Before;
import org.junit.Test;

import java.time.LocalDate;
import java.util.List;

import edu.matc.entity.Trip;
import java.time.format.DateTimeFormatter;
import static org.junit.Assert.*;

/**
 * Created by nataliya.knudson on 9/19/2016.
 */
public class TripDaoTest {


       TripDao dao;

        @Before
        public void setup() {
            dao = new TripDao();
        }

        @Test
        public void getAllTrips() throws Exception {
            List<Trip> trips = dao.getAllTrips();
           // assertTrue(trips.size() < 0);
            assertEquals(9,trips.size());
        }

        @Test
        public void getTrip() throws Exception {
            assertEquals("Trip", "Costa Rica", dao.getTrip(1));

        }

        @Test
        public void addTrip() throws Exception {
            Trip newTrip = new Trip("Singapore", "Singapore", "Hotel 81 Dickson", "walked on Marina Bay",  LocalDate.of(2011,12,30), LocalDate.of(2012,01,02), 938.45);
            int id = dao.addTrip(newTrip);

            assertEquals("New id: ", id, newTrip.getTripid());
        }

        @Test
        public void deleteTrip() throws Exception {

            int id =7;
            Boolean result =  dao.deleteTrip(id);
            assertTrue( result);

        }

        @Test
        public void updateTrip() throws Exception {
            Trip updatedTrip =  dao.getTrip(5);
            String currentCity = updatedTrip.getCity();
            updatedTrip.setCity(currentCity + "x");
            dao.updateTrip(updatedTrip);
            assertEquals((currentCity + "y"),dao.getTrip(5).getCity());

            updatedTrip.setCity(currentCity);
            dao.updateTrip(updatedTrip);
}

    }
