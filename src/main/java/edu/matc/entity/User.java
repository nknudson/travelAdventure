package edu.matc.entity;
import javax.persistence.*;

/**
 * Created by nataliya.knudson on 10/19/2016.
 */
@Entity
@Table(name = "user")
public class User {

    private int id;
    private String userName;
    private String password;

    public User() {
    }

    public User(int id, String userName, String password) {
        this.id = id;
        this.userName = userName;
        this.password = password;
    }

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy=GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "user_name", nullable = true, length = 15)
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Basic
    @Column(name = "user_pass", nullable = true, length = 15)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
// Compares with database id and password
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User users = (User) o;

        if (id != users.id) return false;
        if (userName != null ? !userName.equals(users.userName) : users.userName != null)
            return false;
        if (password != null ? !password.equals(users.password) : users.password != null)
            return false;

        return true;
    }
// Identical IDs
    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (userName != null ? userName.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        return result;
    }
}
