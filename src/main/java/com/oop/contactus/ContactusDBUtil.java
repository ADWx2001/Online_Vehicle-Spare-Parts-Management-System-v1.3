package com.oop.contactus;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.jdbc.PreparedStatement;


public class ContactusDBUtil {

	public static boolean insertMessage(String name, String email, String subject, String message) {
		boolean isSuccess = false;

		//create db connection
		String url = "jdbc:mysql://localhost:3306/gearupdb";
		String user = "root";
		String pass = "1111";

		try {
		    Class.forName("com.mysql.cj.jdbc.Driver"); 
		    Connection con = DriverManager.getConnection(url, user, pass);
		    String sql = "INSERT INTO contactus (name, email, subject, message) VALUES (?, ?, ?, ?)";
		    PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
		    pstmt.setString(1, name);
		    pstmt.setString(2, email);
		    pstmt.setString(3, subject);
		    pstmt.setString(4, message);
		    
		    int rs = pstmt.executeUpdate();

		    if (rs > 0) {
		        isSuccess = true;
		    } else {
		        isSuccess = false;
		    }
		} catch (Exception e) {
		    e.printStackTrace();
		}
		return isSuccess;
	}

}
