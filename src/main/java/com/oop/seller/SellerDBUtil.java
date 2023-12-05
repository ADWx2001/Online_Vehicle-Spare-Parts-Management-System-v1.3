package com.oop.seller;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import com.oop.DBconnetion.*;



public class SellerDBUtil {

	//validate seller login
	public static List<Seller> validate(String un, String password) {
		ArrayList<Seller> seller = new ArrayList<>();


		//create db connection
		String url = "jdbc:mysql://localhost:3306/gearupdb";
		String user = "root";
		String pass = "1111";

		//validation
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = (Statement) con.createStatement();
			String sql = "SELECT * FROM seller WHERE username = '"+un+"' AND passkey = '"+password+"' ";
			ResultSet rs = stmt.executeQuery(sql);

		if(rs.next()) {
			int id = rs.getInt(1);
			String fname = rs.getString(2);
			String lname = rs.getString(3);
			String username = rs.getString(4);
			String email = rs.getString(5);
			String password1 = rs.getString(6);
			String phone  = rs.getString(7);
			String address = rs.getString(8);

			Seller s= new Seller(id,fname,lname,username,email,password1,phone,address);
			seller.add(s);
		}

		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return seller;
	}

	//insert seller details to database
	public static boolean insertSeller(String fname, String lname, String username, String email, String password,
			String phone, String address) {
		
		boolean isSuccess = false;

		//create db connection
		String url = "jdbc:mysql://localhost:3306/gearupdb";
		String user = "root";
		String pass = "1111";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = (Statement) con.createStatement();
			String sql = "INSERT INTO seller VALUES (0,'"+fname+"','"+lname+"','"+username+"','"+email+"','"+password+"','"+phone+"','"+address+"') ";
			int rs = stmt.executeUpdate(sql);

			if(rs>0) {
				isSuccess = true;

			}else {
				isSuccess = false;
			}

		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	//update seller details
	public static boolean updateSellerDetails(int sellerid, String fname, String lname, String username, String email,
			String password, String phone, String address) {
		
		boolean sellerUpdated = false;

		//create db connection
		String url = "jdbc:mysql://localhost:3306/gearupdb";
		String user = "root";
		String pass = "1111";

		try (Connection con = DriverManager.getConnection(url, user, pass)) {
	        // Use a PreparedStatement for the update
	        String sql = "UPDATE seller SET fname = ?, lname = ?, username = ?, email = ?, passkey = ?, phone = ?, addres = ? WHERE idseller = ?";
	        try (PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql)) {
	            pstmt.setString(1, fname);
	            pstmt.setString(2, lname);
	            pstmt.setString(3, username);
	            pstmt.setString(4, email);
	            pstmt.setString(5, password);
	            pstmt.setString(6, phone);
	            pstmt.setString(7, address);
	            pstmt.setInt(8, sellerid);

	            int rowsUpdated = pstmt.executeUpdate();

	            if (rowsUpdated > 0) {
	                sellerUpdated = true;
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

		return sellerUpdated;
	}

	//remove seller from database
	public static boolean deleteSellerAccount(int sellerId) throws ClassNotFoundException {
		
		DBconnection db = null;
	    Connection con = null;
	    PreparedStatement pst1 = null;
	    
	    
	    boolean isSuccess = false;
		 
		try {
			db = DBconnection.getInstance();
	    	con = db.getCon();
	    	pst1=(PreparedStatement) con.prepareStatement("DELETE FROM seller WHERE idseller='"+sellerId+"'");
	    	int rs=pst1.executeUpdate();
	    	
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;

	}
}

