/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.models;

import com.exavalu.pharmacymgmt.services.EmployeeService;
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
 * @author gaura
 */
public class Employee extends ActionSupport implements ApplicationAware, SessionAware, Serializable {
    
    private String employeeId;
    private String firstName;
    private String lastName;
    private String district;
    private String city;
    private String state;
    private String pincode;
    private String gender;
    private String phoneNumber;
    private String age;
    private String salary;
    private String emailId;
    private String password;
    private String startdate;
    private String endDate;
    private String aadharNo;
    
    
     public static Employee employee = null;

    public static Employee getInstance() {
        if (employee == null) {
            return new Employee();
        } else {
            return employee;
        }
    }
    
    private ApplicationMap map = (ApplicationMap) ActionContext.getContext().getApplication();
    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();
    private static final Logger log = Logger.getLogger(Admin.class);
    
        public String doEmployeeUpdate() throws Exception {

        String result = "FAILURE";
        boolean success = EmployeeService.updateEmployee(this);

        if (success) {
            String updateMsg = "updated Employee of EmployeeId :"+this.employeeId;
            sessionMap.put("UpdateMsg", updateMsg);

            ArrayList empList = EmployeeService.getInstance().getAllEmployees();
            sessionMap.put("EmpList", empList);

            System.out.println("returning Success from doEmployeeUpdate method");
            result = "SUCCESS";

        }
        return result;
    }
        
        public String doEmployeeDelete() throws Exception {

        String result = "FAILURE";
        boolean success = EmployeeService.deleteEmployee(this);

        if (success) {
            String updateMsg = "deleted successfully!";
            sessionMap.put("UpdateMsg", updateMsg);

            ArrayList empList = EmployeeService.getInstance().getAllEmployees();
            sessionMap.put("EmpList", empList);

            result = "SUCCESS";

        }
        return result;
    }
        
     public String doEmployeeAdd() throws SQLException {
        String result = "FAILURE";
        boolean success = EmployeeService.addEmployee(this);
        if (success){
            String createdMsg = "Employee created successfully!!";
            sessionMap.put("CreatedMsg", createdMsg);
            result = "SUCCESS";
            System.out.println("returning Success from doEmployeeAdd method");
        }else{
            System.out.println("returning Failure from doEmployeeAdd method");
        }
//        ArrayList empList = EmployeeService.getInstance().getAllEmployees();
//        sessionMap.put("EmpList", empList);
        
        
        return result;
    }
    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    @Override
    public void setApplication(Map<String, Object> application) {
         map = (ApplicationMap) application;
    }

    @Override
    public void setSession(Map<String, Object> session) {
     sessionMap = (SessionMap) session;   
    }

    public String getStartdate() {
        return startdate;
    }

    public void setStartdate(String startdate) {
        this.startdate = startdate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAadharNo() {
        return aadharNo;
    }

    public void setAadharNo(String aadharNo) {
        this.aadharNo = aadharNo;
    }

    
}
