/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.services;

import com.exavalu.pharmacymgmt.models.Employee;
import com.exavalu.pharmacymgmt.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import org.apache.log4j.Logger;

/**
 *
 * @author gaura
 */
public class EmployeeService {

    public static EmployeeService employeeService = null;
    private static final Logger log = Logger.getLogger(EmployeeService.class);

    public static EmployeeService getInstance() {
        if (employeeService == null) {
            return new EmployeeService();
        } else {
            return employeeService;
        }
    }

    public static boolean addEmployee(Employee emp) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO pharmacydb.employee(firstName,lastName,city,state,pincode,gender,phoneNumber,age,salary,emailId,password,aadharNo,startDate,endDate)\n"
                    + "VALUES(? ,? ,? ,? ,? ,?, ? ,? ,? ,? ,? ,? ,?,?);";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, emp.getFirstName());
            preparedStatement.setString(2, emp.getLastName());
            preparedStatement.setString(3, emp.getCity());
            preparedStatement.setString(4, emp.getState());
            preparedStatement.setString(5, emp.getPincode());
            preparedStatement.setString(6, emp.getGender());
            preparedStatement.setString(7, emp.getPhoneNumber());
            preparedStatement.setString(8, emp.getAge());
            preparedStatement.setString(9, emp.getSalary());
            preparedStatement.setString(10, emp.getEmailId());
            preparedStatement.setString(11, emp.getPassword());
            preparedStatement.setString(12, emp.getAadharNo());
            preparedStatement.setString(13, emp.getStartdate());
            preparedStatement.setString(14, emp.getEndDate());

           
             System.out.println(sql);
            int row = preparedStatement.executeUpdate();
            
            if (row == 1) {
                result = true;
            }
            System.out.println(sql);
        } catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            System.out.println(errorMessage);
            log.error(errorMessage);
        }

        return result;
    }

    public static boolean updateEmployee(Employee emp) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE pharmacydb.employee\n"
                    + "SET firstName = ? ,lastName = ? ,district = ? ,state = ? ,phoneNumber = ? ,age = ? ,\n"
                    + "salary = ? ,emailId = ? ,password = ?,city = ?,pincode = ?  WHERE employeeId = ?;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, emp.getFirstName());
            preparedStatement.setString(2, emp.getLastName());
            preparedStatement.setString(3, emp.getDistrict());
            preparedStatement.setString(4, emp.getState());
            preparedStatement.setString(5, emp.getPhoneNumber());
            preparedStatement.setString(6, emp.getAge());
            preparedStatement.setString(7, emp.getSalary());
            preparedStatement.setString(8, emp.getEmailId());
            preparedStatement.setString(9, emp.getPassword());
            preparedStatement.setString(10, emp.getCity());
            preparedStatement.setString(11, emp.getPincode());
            preparedStatement.setString(11, emp.getEmployeeId());

            int row = preparedStatement.executeUpdate();

            if (row == 1) {
                result = true;
                System.out.println(sql);
            }

        } catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            log.error(errorMessage);
        }
        return result;

    }

    public static boolean deleteEmployee(Employee emp) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE pharmacydb.employee SET status = 0 WHERE employeeId = ?;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, emp.getEmployeeId());
            int row = preparedStatement.executeUpdate();
            if (row == 1) {
                result = true;
            }
        } catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            System.out.println(errorMessage);
            log.error(errorMessage);
        }
        return result;

    }

    public ArrayList getAllEmployees() {
        ArrayList empList = new ArrayList();
        String sql = "SELECT * FROM pharmacydb.employee where status = 1; ";
        try {
            Connection con = JDBCConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            System.out.println(sql);
            ResultSet rs = ps.executeQuery();
            System.out.println(sql);
            while (rs.next()) {
                Employee emp = new Employee();
                emp.setEmailId(rs.getString("emailId"));
                emp.setEmployeeId(rs.getString("employeeId"));
                emp.setFirstName(rs.getString("firstName"));
                emp.setLastName(rs.getString("lastName"));
                emp.setDistrict(rs.getString("district"));
                emp.setCity(rs.getString("city"));
                emp.setState(rs.getString("state"));
                emp.setPincode(rs.getString("pincode"));
                emp.setGender(rs.getString("gender"));
                emp.setPhoneNumber(rs.getString("phoneNumber"));
                emp.setAge(rs.getString("age"));
                emp.setSalary(rs.getString("salary"));
                emp.setEndDate(rs.getString("endDate"));
                emp.setStartdate(rs.getString("startDate"));
                emp.setAadharNo(rs.getString("aadharNo"));
                emp.setPassword(rs.getString("password"));
                empList.add(emp);

            }

        } catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            System.out.println(errorMessage);
            log.error(errorMessage);
        }
        System.err.println("Total rows:" + empList.size());
        return empList;
    }

}
