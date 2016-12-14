package edu.matc.entity;

import org.junit.Before;
import org.junit.Test;

import java.time.LocalDate;

import static org.junit.Assert.*;

/**
 * Created by nataliya.knudson on 12/8/2016.
 */
public class UserTest {
    User user;
    @Before
    public void setUp(){
        user = new User("amar","katar");
    }

    @Test
    public void getId() throws Exception {
        assertEquals(0, (user.getId()));
    }

    @Test
    public void setId() throws Exception {
       user.setId(5);
        assertEquals(5, (user.getId()));
    }

    @Test
    public void getUserName() throws Exception {
        assertTrue("amar".equalsIgnoreCase(user.getUserName()));
    }

    @Test
    public void setUserName() throws Exception {
        user.setUserName("joe");
        assertFalse("amar".equalsIgnoreCase(user.getUserName()));
        assertTrue("joe".equalsIgnoreCase(user.getUserName()));
    }

    @Test
    public void getPassword() throws Exception {
        assertTrue("katar".equalsIgnoreCase(user.getPassword()));
    }

    @Test
    public void setPassword() throws Exception {
        user.setPassword("december");
        assertFalse("katar".equalsIgnoreCase(user.getPassword()));
        assertTrue("december".equalsIgnoreCase(user.getPassword()));

    }

}
