package edu.matc.controller;



import edu.matc.persistence.TripDao;
import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 * Created by nataliya.knudson on 11/22/2016.
 */
@WebServlet(
        urlPatterns = {"/searchTrip"}
)

public class SearchTrip extends HttpServlet {
    private final Logger logger = Logger.getLogger(this.getClass());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        logger.info("In the doPost()");
        logger.warn("In the doPost() - This is a warning");
        logger.info("Some message you want logged");

        TripDao tripData = new TripDao();
        String countryInput = req.getParameter("country");
        logger.info("COUNTRY INPUT" + countryInput);
        RequestDispatcher dispatcher;
        try {
            req.setAttribute("trip", tripData.getTripByCountry(countryInput));
            dispatcher = req.getRequestDispatcher("/displaySearchedTrip.jsp");
        } catch (FileNotFoundException ex) {
            req.setAttribute("error", ex.getMessage());
            dispatcher = req.getRequestDispatcher("/countryNotFound.jsp");
        }
        dispatcher.forward(req, resp);
    }

}
