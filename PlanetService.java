package com.example.adastra_tomcat;

import java.sql.SQLException;
import java.util.List;

/**
 * Retrieves all the planets from the database using an instance of PlanetDAO.
 *
 * @return List of Planet objects representing all the planets in the database.
 */
public class PlanetService {
    public List<Planet> getAllPlanets() {
        PlanetDAO planetDAO = new PlanetDAO();
        List<Planet> planets = null;

        try {
            planets = planetDAO.getAllPlanets();
        } catch (SQLException e) {
            System.err.println("Error in PlanetService: " + e.getMessage());
            e.printStackTrace();
        }

        return planets;
    }
}
