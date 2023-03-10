/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.models;

import com.exavalu.pharmacymgmt.utils.EnvUtility;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
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

    private String emailId;
    private String htmlContent;

    public String sendEmailToUser() throws Exception {
        System.out.println("Receiver Email Id:"+this.getEmailId());
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
            mailMessage.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("info.medeasy2023@gmail.com")); //this.getEmailId()
//            ArrayList products = (ArrayList) sessionMap.get("ProductList");
//            String s = "";
//            for(int i=0;i<products.size();i++){
//                s = s+ products.get(i).toString();
//            }
            mailMessage.setSubject("Thanks for purchasing from MedEasy.");
//            //mailMessage.setContent(products, "text/html"); //this.getHtmlContent()
//            mailMessage.setText("Date"+LocalDateTime.now().toString());
            mailMessage.setText("Get Well Soon");
            Transport.send(mailMessage);
            
            
        } catch (AddressException ex) {
            ex.printStackTrace();
           System.out.println(ex.getMessage());
        } catch (MessagingException ex) {
            ex.printStackTrace();
            System.out.println(ex.getMessage());
        }
        return result;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmail(String emailId) {
        this.emailId = emailId;
    }

    public String getHtmlContent() {
        return htmlContent;
    }

    public void setHtmlContent(String htmlContent) {
        this.htmlContent = htmlContent;
    }
}
