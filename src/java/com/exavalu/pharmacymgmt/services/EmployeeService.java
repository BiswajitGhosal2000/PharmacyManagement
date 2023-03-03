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
import java.time.LocalDateTime;
import java.util.ArrayList;
import org.apache.log4j.Logger;

/**
 *
 * @author gaura
 */
public class EmployeeService {

    private static final Logger logger = Logger.getLogger(EmployeeService.class);

    public static boolean addEmployee(Employee emp) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO employee(firstName,lastName,city,state,pincode,gender,phoneNumber,dob,salary,emailId,password,aadharNo,startDate,endDate,qualification)\n"
                    + "VALUES(?,? ,? ,? ,? ,?, ? ,? ,? ,? ,? ,? ,?,?,?);";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, emp.getFirstName());
            preparedStatement.setString(2, emp.getLastName());
            preparedStatement.setString(3, emp.getCity());
            preparedStatement.setString(4, emp.getState());
            preparedStatement.setString(5, emp.getPincode());
            preparedStatement.setString(6, emp.getGender());
            preparedStatement.setString(7, emp.getPhoneNumber());
            preparedStatement.setString(8, emp.getDob());
            preparedStatement.setString(9, emp.getSalary());
            preparedStatement.setString(10, emp.getEmailId());
            preparedStatement.setString(11, emp.getPassword());
            preparedStatement.setString(12, emp.getAadharNo());
            preparedStatement.setString(13, emp.getStartdate());
            preparedStatement.setString(14, emp.getEndDate());
            preparedStatement.setString(15, emp.getQualification());

           
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
            logger.error(errorMessage);
        }

        return result;
    }

    public static boolean updateEmployee(Employee emp) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE employee SET firstName = ? ,lastName = ?,state = ? ,phoneNumber = ? ,dob = ? ,\n"
                    + "salary = ? ,emailId = ?,city = ?,pincode = ?,gender = ?,qualification=?  WHERE employeeId = ?;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, emp.getFirstName());
            preparedStatement.setString(2, emp.getLastName());
            preparedStatement.setString(3, emp.getState());
            preparedStatement.setString(4, emp.getPhoneNumber());
            preparedStatement.setString(5, emp.getDob());
            preparedStatement.setString(6, emp.getSalary());
            preparedStatement.setString(7, emp.getEmailId());
            preparedStatement.setString(8, emp.getCity());
            preparedStatement.setString(9, emp.getPincode());
            preparedStatement.setString(10, emp.getGender());
            preparedStatement.setString(11, emp.getQualification());
            preparedStatement.setInt(12, emp.getEmployeeId());
            

            int row = preparedStatement.executeUpdate();
            System.out.println(preparedStatement);

            if (row == 1) {
                result = true;
                System.out.println(sql);
            }

        } catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            
            logger.error(errorMessage);
        }
        return result;

    }

    public static boolean deleteEmployee(Employee emp) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE employee SET status = 0 ,isDeleted=1,endDate=? WHERE employeeId = ?;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, LocalDateTime.now().toString());
            preparedStatement.setInt(2, emp.getEmployeeId());
            int row = preparedStatement.executeUpdate();
            if (row == 1) {
                result = true;
            }
        } catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            System.out.println(errorMessage);
            logger.error(errorMessage);
        }
        return result;

    }

    public static ArrayList getAllEmployees() {
        
        ArrayList empList = new ArrayList();
        String sql = "SELECT * FROM employee where status = 0 and isDeleted=0; ";
        try {
            Connection con = JDBCConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            System.out.println(sql);
            ResultSet rs = ps.executeQuery();
            System.out.println(sql);
            while (rs.next()) {
                Employee emp = Employee.getInstance();
                emp.setEmailId(rs.getString("emailId"));
                emp.setEmployeeId(rs.getInt("employeeId"));
                emp.setFirstName(rs.getString("firstName"));
                emp.setLastName(rs.getString("lastName"));
                emp.setCity(rs.getString("city"));
                emp.setState(rs.getString("state"));
                emp.setPincode(rs.getString("pincode"));
                emp.setGender(rs.getString("gender"));
                emp.setPhoneNumber(rs.getString("phoneNumber"));
                emp.setDob(rs.getString("dob"));
                emp.setAadharNo(rs.getString("aadharNo"));
                emp.setQualification(rs.getString("qualification"));
                empList.add(emp);

            }

        } catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            System.out.println(errorMessage);
            logger.error(errorMessage);
        }
        System.err.println("Total rows:" + empList.size());
        return empList;
    }
    public static ArrayList getAllVerfiedEmployees() {
        
        ArrayList empList = new ArrayList();
        String sql = "SELECT * FROM employee where status = 1; ";
        try {
            Connection con = JDBCConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            System.out.println(sql);
            ResultSet rs = ps.executeQuery();
            System.out.println(sql);
            while (rs.next()) {
                Employee emp = Employee.getInstance();
                emp.setEmailId(rs.getString("emailId"));
                emp.setEmployeeId(rs.getInt("employeeId"));
                emp.setFirstName(rs.getString("firstName"));
                emp.setLastName(rs.getString("lastName"));
                emp.setCity(rs.getString("city"));
                emp.setState(rs.getString("state"));
                emp.setPincode(rs.getString("pincode"));
                emp.setGender(rs.getString("gender"));
                emp.setPhoneNumber(rs.getString("phoneNumber"));
                emp.setDob(rs.getString("dob"));
                emp.setSalary(rs.getString("salary"));
                emp.setEndDate(rs.getString("endDate"));
                emp.setStartdate(rs.getString("startDate"));
                emp.setAadharNo(rs.getString("aadharNo"));
                emp.setQualification(rs.getString("qualification"));
//                emp.setPassword(rs.getString("password"));
                empList.add(emp);

            }
        } catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            System.out.println(errorMessage);
            logger.error(errorMessage);
        }
        System.err.println("Total rows:" + empList.size());
        return empList;
    }

    public static Employee getEmployeeById(int employeeId) {
        Employee emp = new Employee();
        String sql = "SELECT * FROM employee where employeeId = ?; ";
        try {
            Connection con = JDBCConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, employeeId);
            ResultSet rs = ps.executeQuery();
            System.out.println(ps);
            if(rs.next()){
                emp.setEmailId(rs.getString("emailId"));
                emp.setEmployeeId(rs.getInt("employeeId"));
                emp.setFirstName(rs.getString("firstName"));
                emp.setLastName(rs.getString("lastName"));
                emp.setCity(rs.getString("city"));
                emp.setState(rs.getString("state"));
                emp.setPincode(rs.getString("pincode"));
                emp.setGender(rs.getString("gender"));
                emp.setPhoneNumber(rs.getString("phoneNumber"));
                emp.setDob(rs.getString("dob"));
                emp.setSalary(rs.getString("salary"));
                //emp.setEndDate(rs.getString("endDate"));
                //emp.setStartdate(rs.getString("startDate"));
                emp.setAadharNo(rs.getString("aadharNo"));
                emp.setQualification(rs.getString("qualification"));
            }
        } catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            System.out.println(errorMessage);
            logger.error(errorMessage);
        }
        return emp;
    }
    public static boolean verifyEmployee(Employee emp) {
        
         boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE employee SET salary = ?,startDate=?, status=1 WHERE employeeId = ?";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            
            preparedStatement.setString(1, emp.getSalary());
            preparedStatement.setString(2, LocalDateTime.now().toString());
            preparedStatement.setInt(3, emp.getEmployeeId());
            

            int row = preparedStatement.executeUpdate();
            System.out.println(preparedStatement);

            if (row == 1) {
                result = true;
                System.out.println(sql);
            }

        } catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            
            logger.error(errorMessage);
        }
        return result;
        
    }

    public static boolean hardDeleteEmployee(Employee emp) {
        
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "DELETE from employee WHERE employeeId = ?;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, emp.getEmployeeId());
            int row = preparedStatement.executeUpdate();
            if (row == 1) {
                result = true;
            }
        } catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            System.out.println(errorMessage);
            logger.error(errorMessage);
        }
        return result;
        
    }
}
