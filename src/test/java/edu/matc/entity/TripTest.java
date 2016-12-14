package edu.matc.entity;

import org.junit.Before;
import org.junit.Test;

import javax.validation.constraints.AssertTrue;
import java.time.LocalDate;

import static org.junit.Assert.*;

/**
 * Created by nataliya.knudson on 12/8/2016.
 */
public class TripTest {
    Trip trip;

    @Before
    public void setUp(){
    trip = new Trip("Singapore", "Singapore", "Hotel 81 Dickson", "walked on Marina Bay",  LocalDate.of(2011,12,30), LocalDate.of(2012,01,02), 938.45);
    }
    @Test
    public void getId() throws Exception {
        assertEquals(0, (trip.getTripId()));
    }

    @Test
    public void setId() throws Exception {
        trip.setTripId(5);
        assertEquals(5, (trip.getTripId()));
    }

    @Test
    public void getCountry() throws Exception {
     assertTrue("Singapore".equalsIgnoreCase(trip.getCountry()));
    }

    @Test
    public void setCountry() throws Exception {
        trip.setCountry("USA");
        assertFalse("Singapore".equalsIgnoreCase(trip.getCountry()));
        assertTrue("USA".equalsIgnoreCase(trip.getCountry()));
    }

    @Test
    public void getCity() throws Exception {
        assertTrue("Singapore".equalsIgnoreCase(trip.getCity()));
    }

    @Test
    public void setCity() throws Exception {
        trip.setCity("Madison");
        assertFalse("Singapore".equalsIgnoreCase(trip.getCity()));
        assertTrue("Madison".equalsIgnoreCase(trip.getCity()));
    }

    @Test
    public void getHotel() throws Exception {
        assertTrue("Hotel 81 Dickson".equalsIgnoreCase(trip.getHotel()));
    }

    @Test
    public void setHotel() throws Exception {
        trip.setHotel("Concourse");
        assertFalse("Hotel 81 Dickson".equalsIgnoreCase(trip.getHotel()));
        assertTrue("Concourse".equalsIgnoreCase(trip.getHotel()));
    }

    @Test
    public void getActivity() throws Exception {
        assertTrue("walked on Marina Bay".equalsIgnoreCase(trip.getActivity()));
    }

    @Test
    public void setActivity() throws Exception {
        trip.setActivity("walked on Monona Drive");
        assertFalse("walked on Marina Bay".equalsIgnoreCase(trip.getActivity()));
        assertTrue("walked on Monona Drive".equalsIgnoreCase(trip.getActivity()));
    }


    @Test
    public void getBeginDate() throws Exception {
        assertTrue(LocalDate.of(2011,12,30).equals(trip.getBeginDate()));
    }

    @Test
    public void setBeginDate() throws Exception {
        trip.setBeginDate(LocalDate.of(2016,12,30));
        assertFalse(LocalDate.of(2011,12,30).equals(trip.getBeginDate()));
        assertTrue(LocalDate.of(2016,12,30).equals(trip.getBeginDate()));

    }

    @Test
    public void getEndDate() throws Exception {
        assertTrue(LocalDate.of(2012,01,02).equals(trip.getEndDate()));
    }

    @Test
    public void setEndDate() throws Exception {
        trip.setEndDate(LocalDate.of(2016,12,30));
        assertFalse(LocalDate.of(2012,01,02).equals(trip.getEndDate()));
        assertTrue(LocalDate.of(2016,12,30).equals(trip.getEndDate()));
    }

    @Test
    public void getCost() throws Exception {
        assertTrue(938.45==(trip.getCost()));
    }

    @Test
    public void setCost() throws Exception {
        trip.setCost(1938.45);
        assertFalse(938.45 ==(trip.getCost()));
        assertTrue(1938.45 == (trip.getCost()));
    }

    @Test
    public void toStringTest() throws Exception {
        String testTrip = "Trip{country='Singapore', city='Singapore', hotel='Hotel 81 Dickson', activity='walked on Marina Bay', tripId='0', beginDate='2011-12-30', endDate+'2012-01-02', cost+'938.45}";
        assertEquals(testTrip, trip.toString());
    }



}