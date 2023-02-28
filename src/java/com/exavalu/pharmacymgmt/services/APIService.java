/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.services;
import java.util.logging.Level;
import java.util.logging.Logger;
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

/**
 *
 * @author lenovo
 */
public class APIService {
    public static ArrayList getAadharList() throws ParseException{
        
        ArrayList<ApiEmployee> apiEmpList = new ArrayList();
         try {

		URL url = new URL("https://mocki.io/v1/df30d4e3-07ee-4564-bd03-e879ae1b45dd");
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
                        
                        apiEmployee.setAadharNo(aadharNo);
                        apiEmployee.setFirstName(firstName);
                        apiEmployee.setLastName(lastName);
                        apiEmployee.setAddress(address);
                        apiEmployee.setCity(city);
                        apiEmployee.setState(state);
                        apiEmployee.setGender(gender);
                        
                        apiEmpList.add(apiEmployee);
                    }
                    
                    System.out.println("Size of Aadhar list: "+apiEmpList.size());
                }

	  } catch (MalformedURLException e) {

		e.printStackTrace();

	  } catch (IOException e) {

		e.printStackTrace();

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
                }
            }
        } catch (ParseException ex) {
            Logger.getLogger(APIService.class.getName()).log(Level.SEVERE, null, ex);
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
        }
        return emp;
    }

}
