package edu.matc.entity;

import org.apache.log4j.Logger;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.*;
import java.time.LocalDate;
import edu.matc.util.LocalDateAttributeConverter;
import org.hibernate.annotations.GenericGenerator;
import java.time.Period;
import static java.time.LocalDate.now;


/**
 * Created by nataliya.knudson on 9/19/2016.
 */

@Entity
@Table(name = "trips")

public class Trip {
    @Column(name = "country")
    private String country;

    @Column(name="city")
    private String city;


    @Column(name = "hotel")
    private String hotel;

    @Column(name="activity")
    private String activity;
    @Id
    @GeneratedValue(generator="increment")
    @GenericGenerator(name="increment", strategy = "increment")
    @Column(name = "id")
    private int tripId;

    @Column(name = "begin_date")
    @Convert(converter = LocalDateAttributeConverter.class)
    private LocalDate beginDate;

    @Column(name = "end_date")
    @Convert(converter = LocalDateAttributeConverter.class)
    private LocalDate endDate;

    @Column (name = "cost")
    private Double cost;

   
    /**
     * Instantiates a new User.
     */
    public Trip() {
    }

    //Constractor
    public Trip(String country, String city, String hotel, String activity, LocalDate beginDate, LocalDate endDate, Double cost) {
        this.country = country;
        this.city = city;
        this.hotel = hotel;
        this.activity = activity;
        this.beginDate = beginDate;
        this.endDate = endDate;
        this.cost = cost;
    }
    //Getters and Setters
    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getHotel() {
        return hotel;
    }

    public void setHotel(String hotel) {
        this.hotel = hotel;
    }

    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public int getTripid() {
        return tripId;
    }

    public void setTripid(int tripid) {
        this.tripId = tripid;
    }

    public LocalDate getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(LocalDate beginDate) {
        this.beginDate = beginDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }
    @Override
    public String toString() {
        return "Trip{" +
                "country='" + country + '\'' +
                ", city='" + city + '\'' +
                ", hotel='" + hotel + '\'' +
                ", activity='" + activity + '\'' +
                ", tripId='" + tripId + '\'' +
                ", beginDate='" + beginDate + '\'' +
                ", endDate+'" + endDate +'\'' +
                ", cost+'" + cost +
                '}';

    }
}

