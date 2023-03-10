/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.pharmacymgmt.utils;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

/**
 * To fetch the details of env files
 * @author Biswajit
 */
public class EnvUtility {

    public static EnvUtility envUtility = null;

    // in this class we will have static methods to get the connection params
    public String getPropertyValue(String param) {

        String value = null;

        //input = getClass().getResourceAsStream("settings.properties"); // Property file path in classpath
        try {

            String path = EnvUtility.class.getClassLoader().getResource(".env").getPath();

            BufferedReader input = new BufferedReader(new FileReader(path));

            Properties prop = new Properties();

            prop.load(input);

            value = prop.getProperty(param);

        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return value;
    }

    private EnvUtility() {
        // Private constructor
    }

    public static EnvUtility getInstanceOfEnvUtility() {
        if (envUtility == null) {
            envUtility = new EnvUtility();
        }
        return envUtility;
    }

}
