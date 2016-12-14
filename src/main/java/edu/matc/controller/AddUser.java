package edu.matc.controller;

import edu.matc.entity.User;
import edu.matc.entity.UserRole;
import edu.matc.persistence.UserDao;
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
 * Created by nataliya.knudson on 12/8/2016.
 */
@WebServlet(
        urlPatterns = {"/signUp"}
)
public class AddUser extends HttpServlet {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/signUp" +
                ".jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        logger.info("In the doPost()");
        logger.warn("In the doPost() - This is a warning");
        logger.info("Some message you want logged");

        UserDao userData = new UserDao();
        String userNameInput = req.getParameter("userName");
        String passwordInput = req.getParameter("password");


        logger.info("New User " + userNameInput + " " + passwordInput);
        User newUser = new User (userNameInput, passwordInput);


        req.setAttribute("user ", userData.addUser(newUser));
        RequestDispatcher dispatcher = req.getRequestDispatcher("/confirmation.jsp");
        dispatcher.forward(req, resp);
    }

}
