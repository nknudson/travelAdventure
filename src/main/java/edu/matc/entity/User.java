package edu.matc.entity;
import javax.persistence.*;
import org.hibernate.annotations.GenericGenerator;
import org.apache.log4j.Logger;
import org.hibernate.annotations.*;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.time.LocalDate;
import edu.matc.util.LocalDateAttributeConverter;
import org.hibernate.annotations.GenericGenerator;
import java.time.Period;
import static java.time.LocalDate.now;

/**
 * Created by nataliya.knudson on 10/19/2016.
 */
@Entity
@Table(name = "user")
public class User {

    //private int id;
    @Column(name = "user_name", nullable = true, length = 15)
    private String userName;
    @Column(name = "user_pass", nullable = true, length = 15)
    private String password;

    public User() {
    }

    public User(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    @Id
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")

    @Column(name = "id")
    private int Id;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


}
