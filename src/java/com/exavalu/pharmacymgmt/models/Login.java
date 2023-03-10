/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.models;

import com.exavalu.pharmacymgmt.services.EmployeeService;
import com.exavalu.pharmacymgmt.services.InventoryService;
import com.exavalu.pharmacymgmt.services.LoginService;
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
 *Model for role based login and logout operations
 * @author Biswajit
 */
public class Login extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

    private String emailId;
    private String password;
    
    
    private ApplicationMap map = (ApplicationMap) ActionContext.getContext().getApplication();
    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();
    static Logger logger = Logger.getLogger(Login.class.getName());

    @Override
    public void setApplication(Map<String, Object> application) {
        map = (ApplicationMap) application;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        sessionMap = (SessionMap) session;
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

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    public String doLogin() {
        
        System.out.println(this.getEmailId()+"   "+ this.getPassword());

        ArrayList login = LoginService.doLogin(this.emailId, this.password);
        String result = login.get(0).toString();
        if (result.equalsIgnoreCase("ADMIN")) {
            System.out.println("Returning Success From ADMIN Login");
            Admin admin = (Admin) login.get(1);
            sessionMap.put("Admin", admin);
            System.out.println(admin.getFirstName());
            
            ArrayList verifiedEmpList = EmployeeService.getAllVerfiedEmployees();
            sessionMap.put("VerifiedEmpList", verifiedEmpList);
            System.out.println("VerifiedEMPLIST"+verifiedEmpList.size());
            
            ArrayList empList = EmployeeService.getAllEmployees();
            sessionMap.put("EmpList", empList);
            System.out.println("EMPLIST"+empList.size());
            
            ArrayList inventoryList = InventoryService.getAllInventory();
            sessionMap.put("InventoryList", inventoryList);
        } else if (result.equalsIgnoreCase("EMPLOYEE")) {
            System.out.println("Returning Success From EMPLOYEE Login");
            Employee employee = (Employee) login.get(1);
            sessionMap.put("Employee", employee);
            System.out.println(employee.getEmailId());
            ArrayList inventoryList = InventoryService.getAllInventory();
            sessionMap.put("InventoryList", inventoryList);
        }else{
            sessionMap.put("LoginError", "Enter Correct Credentials!");
            logger.error("Something error in login page. TIME:"+ LocalDateTime.now());
            result="FAILURE";
        }

        return result;
    }

    public String doLogout() {
        sessionMap.clear();
        return "SUCCESS";
    }
}
