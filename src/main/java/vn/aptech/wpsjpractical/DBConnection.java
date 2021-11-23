package vn.aptech.wpsjpractical;

/*
 * Copyright 2021 by AnhNBT
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nguyen Ba Tuan Anh <anhnbt.it@gmail.com>
 */
public class DBConnection {
    public static Connection getConnection() {
        Connection conn = null;
        try {
            if (conn == null || conn.isClosed()) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("Connecting...");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/wpsj_practical", "anhnbt", "KhoaiTay@2019");
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
    
}
