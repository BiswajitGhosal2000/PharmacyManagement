/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.services;

import com.exavalu.pharmacymgmt.models.Order;
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
 * @author Biswajit
 */
public class OrderService {
    private static final Logger log = Logger.getLogger(OrderService.class);

    public static boolean addOrder(Order order) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO orders (productName,customerName,orderDateTime,phoneNumber,doctorName,totalPrice,emailId)VALUES(?,?,?,?,?,?,?);";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, order.getProductName());
            preparedStatement.setString(2, order.getCustomerName());
            preparedStatement.setString(3, LocalDateTime.now().toString());
            preparedStatement.setString(4, order.getPhoneNumber());
            preparedStatement.setString(5, order.getDoctorName());
            preparedStatement.setDouble(6, order.getTotalPrice());
            preparedStatement.setString(7, order.getEmailId());

           
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
    public static ArrayList getAllOrder() {
        ArrayList orderList = new ArrayList();
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * from orders";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while(rs.next()){
                Order order = Order.getInstance();
                order.setOrderId(rs.getInt("orderId"));
                order.setProductName(rs.getString("productName"));
                order.setCustomerName(rs.getString("customerName"));
                order.setOrderDateTime(rs.getString("orderDateTime"));
                order.setPhoneNumber(rs.getString("phoneNumber"));
                order.setDoctorName(rs.getString("doctorName"));
                order.setTotalPrice(rs.getDouble("totalPrice"));
                order.setEmailId(rs.getString("emailId"));
                orderList.add(order);
            }
        }catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            System.out.println(errorMessage);
            log.error(errorMessage);
        }
        return orderList;
    }
    public static boolean updateOrder(Order order) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE orders SET productName = ?,customerName = ?,phoneNumber = ?,doctorName = ?,totalPrice =? WHERE orderId=? ;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, order.getProductName());
            preparedStatement.setString(2, order.getCustomerName());
            preparedStatement.setString(3, order.getPhoneNumber());
            preparedStatement.setString(4, order.getDoctorName());
            preparedStatement.setDouble(5, order.getTotalPrice());
            preparedStatement.setInt(6, order.getOrderId());

           
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
}
