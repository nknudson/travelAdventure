package edu.matc.persistence;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;
import edu.matc.entity.User;
import edu.matc.entity.UserRole;
/**
 * Created by nataliya.knudson on 10/19/2016.
 */
public class UserDao {

    private final Logger log = Logger.getLogger(this.getClass());


/*
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<User>();
        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        session.createCriteria(User.class).list();
        return users;
    }

    public User getUser(int id) {
        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        User user = (User) session.get(User.class, id);
        return user;
    }

    public void updateUser(User user) {

    }

    public void deleteUser(User user) {
        AbstractDao dao = new AbstractDao(User.class);
        dao.delete(user);
    }

*/
    public int addUser(User user) {
        Session session = SessionFactoryProvider.getSessionFactory().openSession();
        Transaction tx = null;
        Integer userId = 0;
        try {
            tx = session.beginTransaction();
            userId = (Integer) session.save(user);
            session.save(createUserRole(user));
            tx.commit();
            log.info("Added user: " + user);
        } catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            log.error(e);
        } finally {
            session.close();
        }
        return userId;
    }

    private UserRole createUserRole(User user) {

        UserRole usersRoles = new UserRole();
        usersRoles.setUserName(user.getUserName());
        usersRoles.setRole("registeredUser");
        return usersRoles;
    }

}