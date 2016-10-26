package edu.matc.controller;

import edu.matc.entity.Trip;
import edu.matc.persistence.TripDao;
import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


/**
 * Created by nataliya.knudson on 10/19/2016.
 */
@WebServlet(name = "DisplayTrip", urlPatterns = {"/displayTrip"})

public class ViewTrips extends HttpServlet {

    private final Logger log = Logger.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        TripDao dao = new TripDao();
        List<Trip> reports = dao.getAllTrips();
        req.setAttribute("tripReports", reports);
        log.debug("Sending back the trip reports...");


         RequestDispatcher dispatcher = req.getRequestDispatcher("/displayTrip" +
              ".jsp");
        dispatcher.forward(req, resp);
    }
}

