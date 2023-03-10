/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.models;

import com.exavalu.pharmacymgmt.services.OrderService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Map;
import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *Model for Order where we are creating the instance variables for customer and the methods for CURD operations and sales report are mentioned.
 * @author lokesh
 */
public class Order extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

    /**
     * @return the orderDate
     */
    public String getOrderDate() {
        return orderDate;
    }

    /**
     * @param orderDate the orderDate to set
     */
    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    /**
     * @return the startDate
     */
    public String getStartDate() {
        return startDate;
    }

    /**
     * @param startDate the startDate to set
     */
    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    /**
     * @return the endDate
     */
    public String getEndDate() {
        return endDate;
    }

    /**
     * @param endDate the endDate to set
     */
    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    static Logger logger = Logger.getLogger(Order.class.getName());

    private static Order order = null;

    public static Order getInstance() {
        if (order == null) {
            return new Order();
        } else {
            return order;
        }
    }
    private String customerName, phoneNumber, doctorName,employeeName,startDate,endDate;
    private String orderDateTime= LocalDateTime.now().toString();
    private String orderDate = LocalDateTime.now().toLocalDate().toString();
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
     * @return the employeeName
     */
    public String getEmployeeName() {
        return employeeName;
    }

    /**
     * @param employeeName the employeeName to set
     */
    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String addOrder() {
        System.out.println("Add Order");
        String result = "FAILURE";
        Order order2 = OrderService.addOrder(this);
        if (order2 != null) {
            System.out.println("Order ID"+order2.getOrderId());
            sessionMap.put("Order",order2);
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

    public String completeOrder() {
        System.out.println("Calling update");
        String result = "FAILURE";
        boolean success = OrderService.updateOrder(this);
        if (success) {
//            ArrayList orderList = OrderService.getAllOrder();
//            sessionMap.put("OrderList", orderList);
            sessionMap.remove("Customer");
            sessionMap.remove("Order");
            sessionMap.remove("Product");
            sessionMap.remove("price");
            sessionMap.remove("totalPrice");
            sessionMap.remove("ProductList");
            result = "SUCCESS";
        } else {
            logger.error("Something error Occured");
        }
        return result;
    }
    
    public String salesReport() {
        String result = "FAILURE";
        ArrayList salesOrderList = OrderService.salesReport();
         System.out.println("Size of Sale :"+salesOrderList.size());
         if(!salesOrderList.isEmpty()){
              double thisDaySale = OrderService.getThisDaySale();
              sessionMap.put("ThisDaySale", thisDaySale);
              
              double thisMonthSale = OrderService.getThisMonthSale();
              sessionMap.put("ThisMonthSale", thisMonthSale);
              
              double thisYearSale = OrderService.getThisYearSale();
              sessionMap.put("ThisYearSale", thisYearSale);
              
            sessionMap.put("salesOrderList", salesOrderList);
            result = "SUCCESS";
        } else {
            logger.error("Something error Occured");
        }
        return result;
    }
    
    public String getCustomSalesReport() {
        String result = "FAILURE";
        ArrayList salesOrderList = OrderService.customSalesReport(this);
         System.out.println("Size of Sale :"+salesOrderList.size());
         if(!salesOrderList.isEmpty()){
              
            sessionMap.put("salesOrderList", salesOrderList);
            sessionMap.put("StartDate", this.getStartDate());
            sessionMap.put("EndDate", this.getEndDate());
            result = "SUCCESS";
        } else {
            logger.error("Something error Occured");
        }
        return result;
    }
    
    public String getMonthlySalesReport() {
        String result = "FAILURE";
        ArrayList salesOrderList = OrderService.monthlySalesReport();
         System.out.println("Size of Sale :"+salesOrderList.size());
         if(!salesOrderList.isEmpty()){
              
            sessionMap.put("salesOrderList", salesOrderList);
            result = "SUCCESS";
        } else {
            logger.error("Something error Occured");
        }
        return result;
    }
    
    public String getYearlySalesReport() {
        String result = "FAILURE";
        ArrayList salesOrderList = OrderService.yearlySalesReport();
         System.out.println("Size of Sale :"+salesOrderList.size());
         if(!salesOrderList.isEmpty()){
            sessionMap.put("salesOrderList", salesOrderList);
            result = "SUCCESS";
        } else {
            logger.error("Something error Occured");
        }
        return result;
    }
}
