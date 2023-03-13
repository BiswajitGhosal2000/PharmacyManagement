/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.models;

import com.exavalu.pharmacymgmt.utils.EnvUtility;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.Map;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;
/**
 *Model For sending mail to the user
 * @author Biswajit
 */
public class MailSender extends ActionSupport implements ApplicationAware, SessionAware, Serializable {


    private String emailId,orderDateTime,customerName;
    private int orderId;
    private double totalPrice;
    
    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();

    private ApplicationMap map = (ApplicationMap) ActionContext.getContext().getApplication();

    @Override
    public void setApplication(Map<String, Object> application) {
        map = (ApplicationMap) application;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        sessionMap = (SessionMap) session;
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

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
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
    
    
    public String sendEmailToUser() throws Exception {
        System.out.println("Receiver Email Id:"+this.getEmailId()+"Hello Mr. "+this.getCustomerName()+" Get Well Soon. Here are the order details of your recent purchase.Invoice No: "+this.getOrderId()+"Total Price: "+this.getTotalPrice()+"Invoice Date: "+this.getOrderDateTime());
        String result = "SUCCESS";
        try {
            EnvUtility envUtility = EnvUtility.getInstanceOfEnvUtility();

            String fromEmail = envUtility.getPropertyValue("fromEmail");
            final String password = envUtility.getPropertyValue("password");
            final String userName = envUtility.getPropertyValue("userName");
            System.out.println(fromEmail+ " : " + password + " : " + userName);

            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "25");

            Session session = Session.getDefaultInstance(props,new javax.mail.Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(userName, password);
                }
            });

            Message mailMessage = new MimeMessage(session);

            //setting up all the messages
            mailMessage.setFrom(new InternetAddress(fromEmail));
            mailMessage.setRecipients(Message.RecipientType.TO,InternetAddress.parse(this.getEmailId()));
            mailMessage.setSubject("Thanks for purchasing from MedEasy.");
            mailMessage.setText("Hello,"+this.getCustomerName()+", Get Well Soon."+
            "\n\nHere are the order details of your recent purchase:"+
            "\n\nInvoice No: "+this.getOrderId()+
            "\n\nTotal Price: ₹"+this.getTotalPrice()+
            "\n\nInvoice Date: "+this.getOrderDateTime()+
            "\n\nVisit our website:http://localhost:8080/PharmacyManagement ");
            Transport.send(mailMessage);
            
            
        } catch (AddressException ex) {
            
        } catch (MessagingException ex) {
            ex.printStackTrace();
            System.out.println(ex.getMessage());
        }
        return result;
    }
}
