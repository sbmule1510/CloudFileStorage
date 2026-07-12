package com.cloudstorage.util;
import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnection {

    public static Connection getConnection() {
        try {
            Class.forName("org.sqlite.JDBC");
            Connection con =
                    DriverManager.getConnection(
                            "jdbc:sqlite:C:/Users/DELL/IdeaProjects/CloudFileStorage/cloudstorage.db");
            return con;
        } catch (Exception e) {
            System.out.println("DATABASE ERROR:");
            e.printStackTrace();
        }
        return null;
    }
}