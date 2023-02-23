/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.models;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;
import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author gaurav
 */
public class Admin extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

    public static Admin admin = null;

    public static Admin getInstance() {
        if (admin == null) {
            admin = new Admin();
        }

        return admin;
    }

    private String emailId, password,adminName,phoneNumber;
    
    private ApplicationMap map = (ApplicationMap) ActionContext.getContext().getApplication();
    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();
    private static final Logger log = Logger.getLogger(Admin.class);

    @Override
    public void setApplication(Map<String, Object> application) {
        map = (ApplicationMap) application;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        sessionMap = (SessionMap) session;
    }

//    public String doEmployeeAdd() throws SQLException {
//        String result = "SUCCESS";
//        EmployeeService.addEmployee(this);
//        String createdMsg = "Employee created successfully!!";
//        sessionMap.put("CreatedMsg", createdMsg);
//        ArrayList empList = new ArrayList();
//        empList = EmployeeService.getInstance().getAllEmployees();
//        sessionMap.put("EmpList", empList);
//        System.out.println("returning Success from doSearch method");
//        result = "SUCCESS";
//        return result;
//    }

//    public String doEmployeeUpdate() throws Exception {
//
//        String result = "FAILURE";
//        boolean success = EmployeeService.updateEmployee(this);
//
//        if (success) {
//            String updateMsg = "updated Employee";
//            sessionMap.put("UpdateMsg", updateMsg);
//
//            ArrayList empList = EmployeeService.getInstance().getAllEmployees();
//            sessionMap.put("EmpList", empList);
//
//            System.out.println("returning Success from doSearch method");
//            result = "SUCCESS";
//
//        }
//        return result;
//    }
//
//    public String doEmployeeDelete() throws Exception {
//
//        String result = "FAILURE";
//        boolean success = EmployeeService.deleteEmployee(this);
//
//        if (success) {
//            String updateMsg = "deleted successfully!";
//            sessionMap.put("UpdateMsg", updateMsg);
//
//            ArrayList empList = new ArrayList();
//            empList = EmployeeService.getInstance().getAllEmployees();
//            sessionMap.put("EmpList", empList);
//
//            result = "SUCCESS";
//
//        }
//        return result;
//    }
//
//    public String doInventoryAdd() throws SQLException {
//        String result = "SUCCESS";
//        InvertoryService.addInventory(this);
//        String createdMsg = "Inventory created successfully!!";
//        sessionMap.put("CreatedMsg", createdMsg);
//        ArrayList invList = new ArrayList();
//        invList = InventoryService.getInstance().getAllInventory();
//        sessionMap.put("InvList", invList);
//        System.out.println("returning Success from doSearch method");
//        result = "SUCCESS";
//        return result;
//    }
//
//    public String doInventoryUpdate() throws SQLException {
//        String result = "SUCCESS";
//        InvertoryService.updateInventory(this);
//        String createdMsg = "Inventory created successfully!!";
//        sessionMap.put("CreatedMsg", createdMsg);
//        ArrayList invList = new ArrayList();
//        invList = InventoryService.getInstance().getAllInventory();
//        sessionMap.put("InvList", invList);
//        System.out.println("returning Success from doSearch method");
//        result = "SUCCESS";
//        return result;
//    }
//
//    public String doInventoryDelete() throws SQLException {
//        String result = "SUCCESS";
//        InvertoryService.deleteInventory(this);
//        String createdMsg = "Inventory deleted!!";
//        sessionMap.put("CreatedMsg", createdMsg);
//        ArrayList invList = new ArrayList();
//        invList = InventoryService.getInstance().getAllInventory();
//        sessionMap.put("InvList", invList);
//        System.out.println("returning Success from doInventoryDelete method");
//        result = "SUCCESS";
//        return result;
//    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

}
