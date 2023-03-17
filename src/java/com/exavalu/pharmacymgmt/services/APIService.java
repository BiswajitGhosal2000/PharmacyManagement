/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.services;
import com.exavalu.pharmacymgmt.models.ApiEmployee;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Scanner;
import org.apache.log4j.Logger;

/**
 * Service methods to fetch data from API for aadhaar verification
 * @author Pratik
 */
public class APIService {
    static Logger logger = Logger.getLogger(APIService.class.getName());
    public static ArrayList getAadharList() throws ParseException{
        
        ArrayList<ApiEmployee> apiEmpList = new ArrayList();
         try {

		URL url = new URL("https://mocki.io/v1/30b0678d-a307-4375-ba80-9db07a62f1f8");
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Accept", "application/json");

		if (conn.getResponseCode() != 200) {
			throw new RuntimeException("Failed : HTTP error code : "
					+ conn.getResponseCode());
		}
                else{
                    
                    String inline = "";
                    Scanner scanner = new Scanner(url.openStream()); 
                        while(scanner.hasNext()){
                            inline += scanner.nextLine();
                        
                    }
                    JSONParser parse = new JSONParser();
                    JSONArray jsonArray = (JSONArray)parse.parse(inline);
                    
                    for(int i = 0; i < jsonArray.size(); i++){
                        
                        ApiEmployee apiEmployee = new ApiEmployee();
                        JSONObject obj = (JSONObject)jsonArray.get(i);
                        String aadharNo = obj.get("aadharNo").toString();
                        System.err.println("aadhar no: "+ aadharNo);
                        String firstName = obj.get("firstName").toString();
                        String lastName = obj.get("lastName").toString();
                        String address = obj.get("address").toString();
                        String city = obj.get("city").toString();
                        String state = obj.get("state").toString();
                        String gender = obj.get("gender").toString();
                        String dob = obj.get("dob").toString();
                        
                        apiEmployee.setAadharNo(aadharNo);
                        apiEmployee.setFirstName(firstName);
                        apiEmployee.setLastName(lastName);
                        apiEmployee.setAddress(address);
                        apiEmployee.setCity(city);
                        apiEmployee.setState(state);
                        apiEmployee.setGender(gender);
                        apiEmployee.setDob(dob);
                        
                        apiEmpList.add(apiEmployee);
                    }
                    
                    System.out.println("Size of Aadhar list: "+apiEmpList.size());
                }

	  } catch (MalformedURLException ex) {

		logger.error(ex.getMessage());

	  } catch (IOException ex) {

		logger.error(ex.getMessage());

	  }
         return apiEmpList;
	}

    public static ApiEmployee getApiEmployeeByAadharNo(ApiEmployee apiEmployee) {
        ApiEmployee emp = new ApiEmployee();
        boolean result = false;
        try {
            ArrayList<ApiEmployee> apiEmpList = getAadharList();
            for(int i=0;i<apiEmpList.size();i++)
            {
                if(apiEmployee.getAadharNo().equals(apiEmpList.get(i).getAadharNo()))
                {
                    result=true;
                        emp.setAadharNo(apiEmpList.get(i).getAadharNo());
                        emp.setFirstName(apiEmpList.get(i).getFirstName());
                        emp.setLastName(apiEmpList.get(i).getLastName());
                        emp.setAddress(apiEmpList.get(i).getAddress());
                        emp.setCity(apiEmpList.get(i).getCity());
                        emp.setState(apiEmpList.get(i).getState());
                        emp.setGender(apiEmpList.get(i).getGender());
                        emp.setDob(apiEmpList.get(i).getDob());
                }
            }
        } catch (ParseException ex) {
            logger.error(ex.getMessage());
        }
        if(result==false)
        {
                        emp.setAadharNo("NA");
                        emp.setFirstName("NA");
                        emp.setLastName("NA");
                        emp.setAddress("NA");
                        emp.setCity("NA");
                        emp.setState("NA");
                        emp.setGender("NA");
                        emp.setDob("NA");
        }
        return emp;
    }

}
