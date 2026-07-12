package com.cloudstorage.util;
import com.cloudstorage.servlet.LoginServlet;
public class TestLogin {

    public static void main(String[] args) {
        boolean result =
                LoginServlet.loginUser(
                        "sneha@gmail.com",
                        "1234"
                );
        if(result) {
            System.out.println("Login Success");
        }
        else {
            System.out.println("Invalid Login");
        }
    }
}