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
 * Created by nataliya.knudson on 12/11/2016.
 */
@WebServlet(
        urlPatterns = {"/deleteTrip"}
)
public class DeleteTrip extends HttpServlet {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        logger.info("In the doPost()");
        logger.warn("In the doPost() - This is a warning");
        logger.info("Some message you want logged");

        TripDao tripData = new TripDao();
        String id = req.getParameter("id");

        logger.info("Delete Trip" + id);

        Boolean result = tripData.deleteTrip(Integer.parseInt(id));

        RequestDispatcher dispatcher;
        dispatcher = req.getRequestDispatcher("/displayTrip");
        /**if (result) {
            dispatcher = req.getRequestDispatcher("/displayTrip");
        } else {
            dispatcher = req.getRequestDispatcher("/deleteFailed.jsp");
        }*/
        dispatcher.forward(req, resp);
    }
}
