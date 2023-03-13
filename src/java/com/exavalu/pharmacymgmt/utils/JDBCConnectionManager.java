package com.exavalu.pharmacymgmt.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import org.apache.log4j.Logger;

/**
 * JDBC class to establish connection with the MySQL database
 * @author All
 */
public class JDBCConnectionManager {
    static Logger logger = Logger.getLogger(JDBCConnectionManager.class.getName());


    public static Connection connection = null;

    public static Connection getConnection() {

        JDBCUtility jdbcUtility = JDBCUtility.getInstanceOfJDBCUtility();

        String user = jdbcUtility.getPropertyValue("user");
        String password = jdbcUtility.getPropertyValue("pass");
        String dbName = jdbcUtility.getPropertyValue("dbName");
        String url = jdbcUtility.getPropertyValue("url");
        System.out.println(user+password+dbName+url);

        try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(url + dbName, user, password);

        } catch (ClassNotFoundException | SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            System.out.println(errorMessage);
            logger.error(errorMessage);
        }

        return connection;
    }

}
