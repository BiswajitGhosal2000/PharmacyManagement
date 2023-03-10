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
 *Model for employee where we are creating the instance variables for employee and the methods for CURD operations are mentioned.
 * @author gaurav
 */
public class Employee extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

    static Logger logger = Logger.getLogger(Employee.class.getName());

    private int employeeId;
    private String firstName, lastName, city, state, pincode, gender, phoneNumber, dob, salary, emailId, password,qualification;
    private String startdate, endDate, aadharNo;

    private static Employee employee = null;

    public static Employee getInstance() {
        if (employee == null) {
            return new Employee();
        }
        return employee;
    }

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
     * @return the employeeId
     */
    public int getEmployeeId() {
        return employeeId;
    }

    /**
     * @param employeeId the employeeId to set
     */
    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
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
     * @return the pincode
     */
    public String getPincode() {
        return pincode;
    }

    /**
     * @param pincode the pincode to set
     */
    public void setPincode(String pincode) {
        this.pincode = pincode;
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

    /**
     * @return the salary
     */
    public String getSalary() {
        return salary;
    }

    /**
     * @param salary the salary to set
     */
    public void setSalary(String salary) {
        this.salary = salary;
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

    /**
     * @return the startdate
     */
    public String getStartdate() {
        return startdate;
    }

    /**
     * @param startdate the startdate to set
     */
    public void setStartdate(String startdate) {
        this.startdate = startdate;
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
     * @return the employee
     */
    public static Employee getEmployee() {
        return employee;
    }

    /**
     * @param aEmployee the employee to set
     */
    public static void setEmployee(Employee aEmployee) {
        employee = aEmployee;
    }
    
    /**
     * @return the qualification
     */
    public String getQualification() {
        return qualification;
    }

    /**
     * @param qualification the qualification to set
     */
    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String doEmployeeUpdate() throws Exception {

        String result = "FAILURE";
        boolean success = EmployeeService.updateEmployee(this);

        if (success) {
            String updateMsg = "updated Employee of EmployeeId :" + this.getEmployeeId();
            System.out.println(updateMsg);
            sessionMap.put("UpdateMsg", updateMsg);

            ArrayList empList = EmployeeService.getAllVerfiedEmployees();
            sessionMap.put("VerifiedEmpList", empList);

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

            ArrayList empList = EmployeeService.getAllVerfiedEmployees();
            sessionMap.put("VerifiedEmpList", empList);

            result = "SUCCESS";

        }
        return result;
    }
    public String doEmployeeHardDelete() throws Exception {

        String result = "FAILURE";
        boolean success = EmployeeService.hardDeleteEmployee(this);

        if (success) {
            String updateMsg = "deleted successfully!";
            sessionMap.put("UpdateMsg", updateMsg);

            ArrayList empList = EmployeeService.getAllEmployees();
            sessionMap.put("EmpList", empList);
            System.out.println("EMPLIST"+empList.size());
            
            ArrayList vempList = EmployeeService.getAllVerfiedEmployees();
            sessionMap.put("VerifiedEmpList", vempList);

            result = "SUCCESS";

        }
        return result;
    }

    public String doEmployeeAdd() throws SQLException {
        String result = "FAILURE";
        boolean success = EmployeeService.addEmployee(this);
        if (success) {
            String createdMsg = "Employee created successfully!!";
            sessionMap.put("CreatedMsg", createdMsg);
            result = "SUCCESS";
            System.out.println("returning Success from doEmployeeAdd method");
        } else {
            logger.error("Something went error");
            System.out.println("returning Failure from doEmployeeAdd method");
        }
        ArrayList empList = EmployeeService.getAllEmployees();
        sessionMap.put("EmpList", empList);

        return result;
    }
    public String getEmployeeById() throws SQLException {
        String result = "FAILURE";
        Employee emp = EmployeeService.getEmployeeById(this.getEmployeeId());
        if (emp != null) {
            sessionMap.put("Emp", emp);
            result = "SUCCESS";
            System.out.println("returning Success from getEmployee By Id method");
        } else {
            logger.error("Something went error");
            System.out.println("returning Failure from getEmployee By Id method");
        }
        return result;
    }
    
    public String doVerifyEmployee() throws Exception {

        String result = "FAILURE";
        boolean success = EmployeeService.verifyEmployee(this);

        if (success) {
            
            ArrayList empList = EmployeeService.getAllEmployees();
            sessionMap.put("EmpList", empList);
            System.out.println("EMPLIST"+empList.size());
            
            ArrayList vempList = EmployeeService.getAllVerfiedEmployees();
            sessionMap.put("VerifiedEmpList", vempList);

            System.out.println("returning Success from doVerifyEmployee method");
            result = "SUCCESS";

        }
        return result;
    }
}
