package com.example.adastra_tomcat;

import jakarta.inject.Named;
import jakarta.enterprise.context.RequestScoped;



@Named
@RequestScoped
public class RegisterBean {
    private String username;
    private String email;
    private String password;

    // Getters and setters

    public String register() {
        // Implement your registration logic here
        // You'll need to create a UserDAO class to handle database operations

        UserDAO userDAO = new UserDAO();
        User user = new User(username, password, email);
        boolean registered = userDAO.registerUser(user);

        if (registered) {
            return "success"; // Redirect to a success page
        } else {
            return "failure"; // Redirect to a failure page
        }
    }
}
