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
import java.time.LocalDate;

/**
 * Created by nataliya.knudson on 12/5/2016.
 */
@WebServlet(
        urlPatterns = {"/addTrip"}
)
public class AddTrip extends HttpServlet {
    private final Logger logger = Logger.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/addTrip" +
                ".jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        logger.info("In the doPost()");
        logger.warn("In the doPost() - This is a warning");
        logger.info("Some message you want logged");

        TripDao tripData = new TripDao();
        String countryInput = req.getParameter("country");
        String cityInput = req.getParameter("city");
        String hotelInput = req.getParameter("hotel");
        String activityInput = req.getParameter("activity");
        String beginDateInput = req.getParameter("beginDate");
        String endDateInput = req.getParameter("endDate");
        String costInput = req.getParameter("cost");

        logger.info("New Trip" + countryInput + " " + cityInput + " " + hotelInput
                + " " + activityInput + " " + beginDateInput + " " + endDateInput + " " + costInput);
        Trip newTrip = new Trip (countryInput, cityInput, hotelInput, activityInput, LocalDate.parse(beginDateInput),
                LocalDate.parse(endDateInput), Double.parseDouble(costInput));

        req.setAttribute("trip", tripData.addTrip(newTrip));
        RequestDispatcher dispatcher = req.getRequestDispatcher("/confirmation.jsp");
        dispatcher.forward(req, resp);
    }

}

