package com.example.adastra_tomcat;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "PlanetsServlet", urlPatterns = {"/planets"})
public class PlanetsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PlanetDAO planetDAO = new PlanetDAO();

        try {
            List<Planet> planets = planetDAO.getAllPlanets();
            request.setAttribute("planets", planets);
        } catch (SQLException e) {
            // Log the error message
            System.err.println("Error in PlanetsServlet: " + e.getMessage());
            e.printStackTrace();

            // Set an error message attribute in the request
            request.setAttribute("errorMessage", "An error occurred while processing your request. Please try again later.");

            // Forward the request to an error page
            request.getRequestDispatcher("/error.jsp").forward(request, response);
            return;
        }

        request.getRequestDispatcher("/jspDir/planets.jsp").forward(request, response);

    }
}
