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

    public static Order addOrder(Order order) {
        Order orders = Order.getInstance();
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO orders (employeeName,customerName,orderDateTime,phoneNumber,doctorName,totalPrice)VALUES(?,?,?,?,?,?);";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, order.getEmployeeName());
            preparedStatement.setString(2, order.getCustomerName());
            preparedStatement.setString(3, order.getOrderDateTime());
            preparedStatement.setString(4, order.getPhoneNumber());
            preparedStatement.setString(5, order.getDoctorName());
            preparedStatement.setDouble(6, order.getTotalPrice());

            System.out.println(preparedStatement);
            int row = preparedStatement.executeUpdate();
            System.out.println(row);
            if (row != 0) {
                String sql2 = "SELECT * from orders where orderDateTime=?";
                PreparedStatement preparedStatement2 = con.prepareStatement(sql2);
                preparedStatement2.setString(1, order.getOrderDateTime());
                ResultSet rs = preparedStatement2.executeQuery();
                if (rs.next()) {
                    System.out.println(rs.getInt("orderId"));
                    //result = rs.getInt("orderId");
                    orders.setOrderId(rs.getInt("orderId"));
                    orders.setCustomerName(rs.getString("customerName"));
                    orders.setOrderDateTime(rs.getString("orderDateTime"));
                    orders.setPhoneNumber(rs.getString("phoneNumber"));
                    orders.setDoctorName(rs.getString("doctorName"));
                    orders.setTotalPrice(rs.getDouble("totalPrice"));
                    orders.setEmployeeName(rs.getString("employeeName"));
                }
                
            }
        } catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            System.out.println(errorMessage);
            log.error(errorMessage);
        }

        return orders;
    }

    public static ArrayList getAllOrder() {
        ArrayList orderList = new ArrayList();
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * from orders";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Order order = Order.getInstance();
                order.setOrderId(rs.getInt("orderId"));
                order.setCustomerName(rs.getString("customerName"));
                order.setOrderDateTime(rs.getString("orderDateTime"));
                order.setPhoneNumber(rs.getString("phoneNumber"));
                order.setDoctorName(rs.getString("doctorName"));
                order.setTotalPrice(rs.getDouble("totalPrice"));
                order.setEmployeeName(rs.getString("employeeName"));
                orderList.add(order);
            }
        } catch (SQLException ex) {
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
            String sql = "UPDATE orders SET customerName = ?,phoneNumber = ?,doctorName = ?,totalPrice =? WHERE orderId=? ;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, order.getCustomerName());
            preparedStatement.setString(2, order.getPhoneNumber());
            preparedStatement.setString(3, order.getDoctorName());
            preparedStatement.setDouble(4, order.getTotalPrice());
            preparedStatement.setInt(5, order.getOrderId());

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
