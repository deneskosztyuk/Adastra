package com.example.adastra_tomcat;

import jakarta.inject.Named;
import jakarta.enterprise.context.RequestScoped;

@Named
@RequestScoped
public class RegisterBean {
    private String username;
    private String email;
    private String password;
    public String register() {
        UserDAO userDAO = new UserDAO();
        User user = new User(username, password, email);
        boolean registered = userDAO.registerUser(user);

        if (registered) {
            return "success"; 
        } else {
            return "failure";
        }
    }
}
