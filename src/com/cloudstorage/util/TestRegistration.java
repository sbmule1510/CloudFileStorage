package com.cloudstorage.util;
import com.cloudstorage.servlet.RegisterServlet;
public class TestRegistration {

    public static void main(String[] args) {
        boolean result =
                RegisterServlet.registerUser(
                        "Sneha",
                        "sneha@gmail.com",
                        "1234"
                );
        if(result) {
            System.out.println("User Registered");
        }
        else {
            System.out.println("Registration Failed");
        }
    }
}