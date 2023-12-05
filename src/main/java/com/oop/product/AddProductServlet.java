package com.oop.product;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AddProductServlet
 */
@MultipartConfig

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();

		// get the session variable 'sellerID'
		int sellerid = (int) session.getAttribute("sellerId");
		//int sellerid = Integer.parseInt(request.getParameter("sellerid"));
		String title = request.getParameter("title");
		String brand = request.getParameter("brand");
		String category = request.getParameter("category");
		String description = request.getParameter("description");
		String model = request.getParameter("model");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		double price = Double.parseDouble(request.getParameter("price"));
		String availability = request.getParameter("availability");

		//image1
		Part image1 = request.getPart("image1");
		String display1 = image1.getSubmittedFileName();
		String uploaddir1 = "C:/Users/Asanka Dilshan/eclipse-workspace/Online_Vehicle_Spare_Parts_Management_System_V03/src/main/webapp/img/products/"
				+ display1;
		try {
			FileOutputStream fileOutputStream = new FileOutputStream(uploaddir1);
			InputStream inputStream = image1.getInputStream();

			byte[] data = new byte[inputStream.available()];
			inputStream.read(data);
			fileOutputStream.write(data);
			fileOutputStream.close();

		} catch (Exception e) {

			e.printStackTrace();
		}

		//image2
		Part image2 = request.getPart("image2");
		String display2 = image2.getSubmittedFileName();
		String uploaddir2 = "C:/Users/Asanka Dilshan/eclipse-workspace/Online_Vehicle_Spare_Parts_Management_System_V03/src/main/webapp/img/products/"
				+ display2;
		try {
			FileOutputStream fileOutputStream = new FileOutputStream(uploaddir2);
			InputStream inputStream = image2.getInputStream();

			byte[] data = new byte[inputStream.available()];
			inputStream.read(data);
			fileOutputStream.write(data);
			fileOutputStream.close();

		} catch (Exception e) {

			e.printStackTrace();
		}

		//image3
		Part image3 = request.getPart("image3");
		String display3 = image3.getSubmittedFileName();
		String uploaddir3 = "C:/Users/Asanka Dilshan/eclipse-workspace/Online_Vehicle_Spare_Parts_Management_System_V03/src/main/webapp/img/products/"
				+ display3;
		try {
			FileOutputStream fileOutputStream = new FileOutputStream(uploaddir3);
			InputStream inputStream = image3.getInputStream();

			byte[] data = new byte[inputStream.available()];
			inputStream.read(data);
			fileOutputStream.write(data);
			fileOutputStream.close();

		} catch (Exception e) {

			e.printStackTrace();
		}

		boolean utilvalue;

		utilvalue = ProductDBUtil.insertSellerProducts(sellerid, title, brand, category, description, model, quantity, price,availability, display1, display2, display3);

	//successful insert

		if(utilvalue) {
			RequestDispatcher dis = request.getRequestDispatcher("sellerSuccess.jsp");
			dis.forward(request, response);

	//unsuccessfull insert
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("sellerUnSuccess.jsp");
			dis.forward(request, response);
		}




//		if(image1 != null && image2 != null && image3 != null ) {
			//ConnectionDB con = new ConnectionDB();

//			try {
//				Connection connector = con.connect();
//				PreparedStatement ps = connector.prepareStatement("INSERT INTO product (sellerid,title,brand,category,description,model,quantity,price,displayimage,productimage1,productimage2) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
//				InputStream is1 = image1.getInputStream();
//				InputStream is2 = image2.getInputStream();
//				InputStream is3 = image3.getInputStream();
//
//				ps.setString(1, sellerid);
//				ps.setString(2, title);
//				ps.setString(3, brand);
//				ps.setString(4, category);
//				ps.setString(5, description);
//				ps.setString(6, model);
//				ps.setString(7, quantity);
//				ps.setString(8, price);
//				ps.setBlob(9, is1);
//				ps.setBlob(10, is2);
//				ps.setBlob(11, is3);
//
//				int result = ps.executeUpdate();
//
//				if(result > 0) {
//					RequestDispatcher dis = request.getRequestDispatcher("sellerSuccess.jsp");
//					dis.forward(request, response);
//				}else {
//					RequestDispatcher dis = request.getRequestDispatcher("sellerUnSuccess.jsp");
//					dis.forward(request, response);
//				}
//
//
//			}catch(Exception e) {
//				e.printStackTrace();
//			}
	}

}
