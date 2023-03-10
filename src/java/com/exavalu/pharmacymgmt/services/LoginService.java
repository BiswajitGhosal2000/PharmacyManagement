/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.services;

import com.exavalu.pharmacymgmt.models.Admin;
import com.exavalu.pharmacymgmt.models.Employee;
import com.exavalu.pharmacymgmt.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import org.apache.log4j.Logger;

/**
 *Service methods to connect with the database of user table for login operation
 * @author Biswajit
 */
public class LoginService {

    static Logger logger = Logger.getLogger(LoginService.class.getName());

    public static ArrayList doLogin(String emailId, String password) {
        String res;
        ArrayList login = new ArrayList();

        String sql = "Select * from user where emailId=? and password=?";

        try (Connection con = JDBCConnectionManager.getConnection()){
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, emailId);
            ps.setString(2, password);

            System.out.println("LoginService : " + ps);

            ResultSet rs = ps.executeQuery();

            if (rs.next())
            {
                if (rs.getInt("roleId")== 1){
                    res = "ADMIN";
                    login.add(res);
                    Admin admin = Admin.getInstance();
                    admin.setFirstName(rs.getString("firstName"));
                    admin.setLastName(rs.getString("lastName"));
                    admin.setEmailId(rs.getString("emailId"));
                    login.add(admin);
                    
                }else{
                    res = "EMPLOYEE";
                    login.add(res);
                    Employee employee = Employee.getInstance();
                    employee.setFirstName(rs.getString("firstName"));
                    employee.setLastName(rs.getString("lastName"));
                    employee.setEmailId(rs.getString("emailId"));
                    login.add(employee);
                    
                }
            }
            else{
                login.add("FAILURE");
                logger.error("Login error");
            }
        } catch (SQLException ex) {
            logger.error(ex.getMessage() + LocalDateTime.now());
        }
        return login;
    }
}
