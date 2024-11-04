package com.example.adastra_tomcat;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PlanetDAO {

    // This method retrieves all planets from the database and returns them in a list
    public List<Planet> getAllPlanets() throws SQLException {
        List<Planet> allPlanets = new ArrayList<>();

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement sqlStatement = connection.prepareStatement("SELECT * FROM planets");
             ResultSet planetResultSet = sqlStatement.executeQuery()) {

            // Print out a message to the console to confirm that the planets were retrieved from the database
            System.out.println("Retrieved planets from the database.");

            // Loop through the result set and create a Planet object for each row, adding it to the list
            while (planetResultSet.next()) {
                Planet planet = new Planet(
                        planetResultSet.getInt("id"),
                        planetResultSet.getString("name"),
                        planetResultSet.getString("type"),
                        planetResultSet.getInt("price"),
                        planetResultSet.getLong("distance_from_earth_km"),
                        planetResultSet.getInt("number_of_moons"),
                        planetResultSet.getDouble("mass_kg"),
                        planetResultSet.getDouble("size_diameter_km"),
                        planetResultSet.getInt("surface_temperature_celsius"),
                        planetResultSet.getDouble("orbital_period_days")
                );
                allPlanets.add(planet);
            }

            // Print out a message to the console to confirm how many planets were retrieved from the database
            if (allPlanets.isEmpty()) {
                System.out.println("No planets found in the database.");
            } else {
                System.out.println("Retrieved " + allPlanets.size() + " planets from the database.");
            }

        } catch (SQLException e) {
            throw e;
        }

        // Return the list of planets
        return allPlanets;
    }

    // adds a new planet to the database
    public void addPlanet(String name, String type, int price, long distance_from_earth_km, int number_of_moons, double mass_kg, double size_diameter_km, int surface_temperature_celsius, double orbital_period_days) {
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement sqlStatement = connection.prepareStatement("INSERT INTO planets (name, type, price, distance_from_earth_km, number_of_moons, mass_kg, size_diameter_km, surface_temperature_celsius, orbital_period_days) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)")) {

            // Set the parameters of the prepared statement to the values passed in as arguments
            sqlStatement.setString(1, name);
            sqlStatement.setString(2, type);
            sqlStatement.setInt(3, price);
            sqlStatement.setLong(4, distance_from_earth_km);
            sqlStatement.setInt(5, number_of_moons);
            sqlStatement.setDouble(6, mass_kg);
            sqlStatement.setDouble(7, size_diameter_km);
            sqlStatement.setInt(8, surface_temperature_celsius);
            sqlStatement.setDouble(9, orbital_period_days);

            // add the new planet to the database
            sqlStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
