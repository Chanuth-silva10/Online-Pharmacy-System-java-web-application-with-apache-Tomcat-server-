package com.util;


import java.sql.Connection;
import java.sql.DriverManager;

    
public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/MedicineProject";
	private static String userName = "root";
	private static String password = "1234";
	private Connection connection;
	private static DBConnect dbConnect; // create private static variable 
	
	
	private DBConnect() { // private constructor
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			connection = DriverManager.getConnection(url, userName, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
	}
	
	public static DBConnect getInstance() { // create method getInstance to return only one object
		return (dbConnect == null) ?  dbConnect = new DBConnect() : dbConnect;
	}
    
	
	public Connection getConnection() {
		return connection;
	}
	
}
