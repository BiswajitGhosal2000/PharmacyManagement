/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.services;

import com.exavalu.pharmacymgmt.models.Inventory;
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
 * @author lenovo
 */
public class InventoryService {
    
    private static final Logger log = Logger.getLogger(InventoryService.class);
    
    public static ArrayList getAllInventory(){
        
        ArrayList inventoryList = new ArrayList();
        String sql = "SELECT * FROM inventory";
        
        try {
            Connection con = JDBCConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            System.out.println(sql);
            ResultSet rs = ps.executeQuery();
            System.out.println(sql);
            while (rs.next()) {
                Inventory inventory = new Inventory();
                inventory.setProductNumber(rs.getInt("productNumber"));
                inventory.setProductName(rs.getString("productName"));
                inventory.setQuantity(rs.getInt("quantity"));
                inventory.setUnitPrice(rs.getDouble("unitPrice"));
                inventory.setExpiryDate(rs.getString("expiryDate"));
                inventory.setShelfNumber(rs.getString("shelfNumber"));
                
                inventoryList.add(inventory);

            }

        } catch (SQLException ex) {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            // Construct the error message with date and time
            String errorMessage = timestamp.toString() + ": " + ex.getMessage();
            System.out.println(errorMessage);
            log.error(errorMessage);
        }
        System.err.println("Total rows:" + inventoryList.size());
        
        return inventoryList;
    }
    
    public static boolean addInventory(Inventory inventory) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO inventory(productName,quantity,unitPrice,expiryDate,shelfNumber) "
                    + "VALUES(? ,? ,? ,? ,?)";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, inventory.getProductName());
            preparedStatement.setInt(2, inventory.getQuantity());
            preparedStatement.setDouble(3, inventory.getUnitPrice());
            preparedStatement.setString(4, inventory.getExpiryDate());
            preparedStatement.setString(5, inventory.getShelfNumber());
           
            System.out.println("Add inventory ps: "+sql);
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
    
    public static boolean updateInventory(Inventory inventory) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE inventory\n"
                    + "SET productName = ? ,quantity = ? ,unitPrice = ? ,expiryDate = ? ,shelfNumber = ? where productNumber = ?";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, inventory.getProductName());
            preparedStatement.setInt(2, inventory.getQuantity());
            preparedStatement.setDouble(3, inventory.getUnitPrice());
            preparedStatement.setString(4, inventory.getExpiryDate());
            preparedStatement.setString(5, inventory.getShelfNumber());
            preparedStatement.setInt(6, inventory.getProductNumber());

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
    
    public static boolean deleteInventory(Inventory inventory) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE inventory SET status = 0 WHERE productNumber = ?";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, inventory.getProductNumber());
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
    public static boolean getProduct(int productNumber) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * from inventory WHERE productNumber = ?";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, productNumber);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                Inventory.getInstance().setProductName(rs.getString("productName"));
                Inventory.getInstance().setQuantity(rs.getInt("quantity"));
                Inventory.getInstance().setProductName(rs.getString("productName"));
                Inventory.getInstance().setProductName(rs.getString("productName"));
                Inventory.getInstance().setProductName(rs.getString("productName"));
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
    
}
