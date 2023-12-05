package com.oop.product;

import java.sql.Connection;



import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import com.oop.product.Product;
import com.oop.DBconnetion.*;

public class ProductDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static DBconnection db;
	private static PreparedStatement pst = null;
	
	//insert new products to database
	public static boolean insertSellerProducts(int sellerid, String title, String brand, String category,
			String description, String model, int quantity, double price, String availability, String display1,
			String display2, String display3) {
		
		boolean isSuccess = false;


		//create db connection
		String url = "jdbc:mysql://localhost:3306/gearupdb";
		String user = "root";
		String pass = "1111";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = (Statement) con.createStatement();
			String sql = "INSERT INTO product VALUES (0,'"+sellerid+"','"+title+"','"+brand+"','"+category+"','"+description+"','"+model+"','"+quantity+"','"+price+"','"+availability+"','"+display1+"','"+display2+"','"+display3+"') ";
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

	//retrieve products details according to the seller
	public static List<Product> viewProducts(int sellerId) {
		
		ArrayList<Product> productList = new ArrayList<>();

		//create db connection
				/*String url = "jdbc:mysql://localhost:3306/gearupdb";
				String user = "root";
				String pass = "1111";*/
				
		try {

			/*con = DBconnector.getConnection();
			stmt = (Statement) con.createStatement();
			String sql = "SELECT FROM product where sellerid='"+sellerId+"'";
			rs = stmt.executeQuery(sql);*/
			
			db = DBconnection.getInstance();
			con = db.getCon();
			pst = (PreparedStatement) con.prepareStatement("SELECT * FROM product WHERE sellerid = ?");
			pst.setInt(1, sellerId);

			rs = pst.executeQuery();
			
			/*String sql = "SELECT * FROM product WHERE sellerid=?";
			PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
			pstmt.setInt(1, sellerId);
			ResultSet rs = pstmt.executeQuery();*/
			
			/*Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = (Statement) con.createStatement();
			String sql = "SELECT * FROM product WHERE sellerid='"+sellerId+"'";
			ResultSet rs = stmt.executeQuery(sql);*/
			
			while(rs.next()) {
				int productid = rs.getInt("idproduct");
				int sellerid = rs.getInt("sellerid");
				String title = rs.getString("title");
				String brand = rs.getString("brand");
				String category = rs.getString("category");
				String description = rs.getString("description");
				String model = rs.getString("model");
				int quantity = rs.getInt("quantity");
				double price = rs.getDouble("price");
				String availability = rs.getString("availability");
				String display = rs.getString("displayimage");
				String productimage1 = rs.getString("displayimage1");
				String productimage2 = rs.getString("displayimage2");
				
				Product product = new Product(productid, sellerid, title, brand, category, description, model, quantity, price, availability, display, productimage1, productimage2);
				
				productList.add(product);
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return productList;
	}

	//update product details to the daatabase
	public static boolean updateProductDetails(int productid,int sellerId, String title, String brand, String category,
			String description, String model, int quantity, double price, String availability) {
		
		boolean productUpdate = false ;
		
		try {

			db = DBconnection.getInstance();
			con = db.getCon();
			pst = (PreparedStatement) con.prepareStatement(
					"UPDATE product SET title = ?, brand = ?, category = ?,description = ?, model = ?, quantity = ?, price = ?, availability = ? WHERE sellerid = ? AND idproduct = ?");

			pst.setString(1, title);
			pst.setString(2, brand);
			pst.setString(3, category);
			pst.setString(4, description);
			pst.setString(5, model);
			pst.setInt(6, quantity);
			pst.setDouble(7, price);
			pst.setString(8, availability);
			pst.setInt(9, sellerId);
			pst.setInt(10, productid);

			int rs = pst.executeUpdate();

			if (rs > 0) {
				productUpdate = true;

			} else {
				productUpdate = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return productUpdate;
	}

	//delete products from database
	public static boolean deleteProduct(int productid) {
		
		boolean delete = false ;
		
		try {
			
			db = DBconnection.getInstance();
			con = db.getCon();
			pst = (PreparedStatement) con.prepareStatement("DELETE FROM product WHERE idproduct = ?");
			pst.setInt(1, productid);
			
			
			if(pst.executeUpdate() > 0) {
				delete = true;
			}else {
				delete = false;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return delete;
		
	}

	
	
}
