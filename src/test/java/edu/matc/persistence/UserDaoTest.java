package edu.matc.persistence;

import edu.matc.entity.User;
import org.junit.Before;
import org.junit.Test;

import java.time.LocalDate;

import static org.junit.Assert.*;

/**
 * Created by nataliya.knudson on 12/13/2016.
 */
public class UserDaoTest {
    UserDao dao;

    @Before
    public void setup() {
        dao = new UserDao();
    }

    @Test
    public void addUser() throws Exception {
        User newUser = new User("Jane", "december");
        int id = dao.addUser(newUser);

        assertEquals( id, newUser.getId());
    }
}