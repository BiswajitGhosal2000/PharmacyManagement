/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.models;

import com.exavalu.pharmacymgmt.services.OrderService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;
import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author lokes
 */
public class Order extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

    static Logger logger = Logger.getLogger(Order.class.getName());

    private static Order order = null;

    public static Order getInstance() {
        if (order == null) {
            return new Order();
        } else {
            return order;
        }
    }
    private String productName, customerName, orderDateTime, phoneNumber, doctorName,emailId;
    private int orderId;
    private double totalPrice;

    private ApplicationMap map = (ApplicationMap) ActionContext.getContext().getApplication();
    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();

    @Override
    public void setApplication(Map<String, Object> application) {
        map = (ApplicationMap) application;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        sessionMap = (SessionMap) session;
    }

    /**
     * @return the orderId
     */
    public int getOrderId() {
        return orderId;
    }

    /**
     * @param orderId the orderId to set
     */
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    /**
     * @return the productName
     */
    public String getProductName() {
        return productName;
    }

    /**
     * @param productName the productName to set
     */
    public void setProductName(String productName) {
        this.productName = productName;
    }

    /**
     * @return the customerName
     */
    public String getCustomerName() {
        return customerName;
    }

    /**
     * @param customerName the customerName to set
     */
    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    /**
     * @return the orderDateTime
     */
    public String getOrderDateTime() {
        return orderDateTime;
    }

    /**
     * @param orderDateTime the orderDateTime to set
     */
    public void setOrderDateTime(String orderDateTime) {
        this.orderDateTime = orderDateTime;
    }

    /**
     * @return the phoneNumber
     */
    public String getPhoneNumber() {
        return phoneNumber;
    }

    /**
     * @param phoneNumber the phoneNumber to set
     */
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    /**
     * @return the doctorName
     */
    public String getDoctorName() {
        return doctorName;
    }

    /**
     * @param doctorName the doctorName to set
     */
    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    /**
     * @return the totalPrice
     */
    public double getTotalPrice() {
        return totalPrice;
    }

    /**
     * @param totalPrice the totalPrice to set
     */
    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
    
    
    /**
     * @return the emailId
     */
    public String getEmailId() {
        return emailId;
    }

    /**
     * @param emailId the emailId to set
     */
    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String addOrder() {
        String result = "FAILURE";
        boolean success = OrderService.addOrder(this);
        if (success) {
            ArrayList orderList = OrderService.getAllOrder();
            sessionMap.put("OrderList", orderList);
            result = "SUCCESS";
        } else {
            logger.error("Something error Occured");
        }
        return result;
    }

    public String getAllOrder() {
        String result = "FAILURE";
        ArrayList orderList = OrderService.getAllOrder();
        if (!orderList.isEmpty()) {
            sessionMap.put("OrderList", orderList);
            result = "SUCCESS";
        } else {
            logger.error("Something error Occured");
        }
        return result;
    }

    public String updateOrder() {
        String result = "FAILURE";
        boolean success = OrderService.updateOrder(this);
        if (success) {
            ArrayList orderList = OrderService.getAllOrder();
            sessionMap.put("OrderList", orderList);
            result = "SUCCESS";
        } else {
            logger.error("Something error Occured");
        }
        return result;
    }
}
