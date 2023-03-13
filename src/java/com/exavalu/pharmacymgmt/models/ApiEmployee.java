/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.models;

import com.exavalu.pharmacymgmt.services.APIService;
import com.exavalu.pharmacymgmt.services.EmployeeService;
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
 * Model for fetching Aadhaar details of employees using API call
 *
 * @author Pratik
 */
public class ApiEmployee extends ActionSupport implements ApplicationAware, SessionAware, Serializable {
    
    private String aadharNo,firstName,lastName,address,city,state,gender,dob;
    private int index;
    
    static Logger logger = Logger.getLogger(ApiEmployee.class.getName());
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
     * @return the aadharNo
     */
    public String getAadharNo() {
        return aadharNo;
    }

    /**
     * @param aadharNo the aadharNo to set
     */
    public void setAadharNo(String aadharNo) {
        this.aadharNo = aadharNo;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the state
     */
    public String getState() {
        return state;
    }

    /**
     * @param state the state to set
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the index
     */
    public int getIndex() {
        return index;
    }

    /**
     * @param index the index to set
     */
    public void setIndex(int index) {
        this.index = index;
    }

    /**
     * @return the dob
     */
    public String getDob() {
        return dob;
    }

    /**
     * @param dob the dob to set
     */
    public void setDob(String dob) {
        this.dob = dob;
    }
    
    public String getApiEmployee() {
        String result = "FAILURE";
        try {
            ApiEmployee apiEmployee;
            apiEmployee = APIService.getApiEmployeeByAadharNo(this);
            sessionMap.put("ApiEmp", apiEmployee);
            ArrayList empList = EmployeeService.getAllEmployees();
            sessionMap.put("EmpList", empList);
            sessionMap.put("index", this.index);
            result = "SUCCESS";
        } catch (Exception ex) {
            logger.error("Something error occured during API data fetch");
        }
        return result;
    }
}
