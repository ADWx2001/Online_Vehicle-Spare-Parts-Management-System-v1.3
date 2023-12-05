package com.oop.seller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SellerUpdateProfile
 */
@WebServlet("/SellerUpdateProfile")
public class SellerUpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private RequestDispatcher dispatcher;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idseller = request.getParameter("sellerid");
		int sellerid = Integer.parseInt(idseller);
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String phone  = request.getParameter("phoneNumber");
		String address =request.getParameter("address");

		boolean updateresult = SellerDBUtil.updateSellerDetails(sellerid, fname, lname, username, email, password, phone, address);

		if (updateresult) {
			dispatcher = request.getRequestDispatcher("sellerDashboard.jsp");

		} else {
			dispatcher = request.getRequestDispatcher("SellerUnSuccess.jsp");
		}
		dispatcher.forward(request, response);
	}
	

}
