/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.services;

import com.exavalu.pharmacymgmt.models.Admin;
import com.exavalu.pharmacymgmt.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import org.apache.log4j.Logger;

/**
 *
 * @author Biswajit
 */
public class LoginService {

    static Logger logger = Logger.getLogger(LoginService.class.getName());

    public static String doLogin(String emailId, String password) {
        String res = "FAILURE";

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
                    Admin.getInstance().setAdminName(rs.getString("name"));
                    Admin.getInstance().setEmailId(rs.getString("emailId"));
                    res = "ADMIN";
                }else{
                    //Employee.getInstance().setEmployeeName(rs.getString("name"));
                    //Employee.getInstance().setEmailId(rs.getInt("emailId"));
                    res = "EMPLOYEE";
                }
            }
        } catch (SQLException ex) {
            logger.error(ex.getMessage() + LocalDateTime.now());
        }
        return res;
    }
}
