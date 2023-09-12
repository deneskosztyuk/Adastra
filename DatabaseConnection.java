package com.example.adastra_tomcat;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

    private static final String DATABASE_URL = "jdbc:mariadb://localhost:3307/adastramdb";

    private static final String DATABASE_USER = "root";
    private static final String DATABASE_PASSWORD = "toor";

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USER, DATABASE_PASSWORD);
        } catch (ClassNotFoundException e) {
            System.err.println("Error loading MariaDB JDBC driver: " + e.getMessage());
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Error establishing database connection: " + e.getMessage());
            e.printStackTrace();
        }
        return connection;
    }
}
