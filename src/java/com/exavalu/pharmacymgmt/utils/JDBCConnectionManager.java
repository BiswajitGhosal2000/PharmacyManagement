package com.exavalu.pharmacymgmt.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.time.LocalDateTime;
import org.apache.log4j.Logger;

/**
 *
 * @author Avijit Chattopadhyay
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
            logger.error(ex.getMessage() + LocalDateTime.now());
        }

        return connection;
    }

}
