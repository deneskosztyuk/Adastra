package com.example.adastra_tomcat;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "AddPlanetServlet", urlPatterns = {"/AddPlanetServlet"})
public class AddPlanetServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        int price = Integer.parseInt(request.getParameter("price"));
        long distance_from_earth_km = Long.parseLong(request.getParameter("distance_from_earth_km"));
        int number_of_moons = Integer.parseInt(request.getParameter("number_of_moons"));
        double mass_kg = Double.parseDouble(request.getParameter("mass_kg"));
        double size_diameter_km = Double.parseDouble(request.getParameter("size_diameter_km"));
        int surface_temperature_celsius = Integer.parseInt(request.getParameter("surface_temperature_celsius"));
        double orbital_period_days = Double.parseDouble(request.getParameter("orbital_period_days"));

        PlanetDAO planetsDAO = new PlanetDAO();
        planetsDAO.addPlanet(name, type, price, distance_from_earth_km, number_of_moons, mass_kg, size_diameter_km, surface_temperature_celsius, orbital_period_days);

        response.sendRedirect("planets.jsp");
    }
}
