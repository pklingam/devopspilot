package com.login;

import java.io.IOException;
import java.util.Properties;

public class TestExcel {
  public static String getProperties(String key){
	/** Connection for Mysql */
		Properties configFile = new Properties();
		try {
			configFile.load(TestExcel.class.getClassLoader()
					.getResourceAsStream("DBDetails.properties"));
		} catch (IOException e) {

			e.printStackTrace();
		}
		return configFile.getProperty(key);

			}
}
		
	
