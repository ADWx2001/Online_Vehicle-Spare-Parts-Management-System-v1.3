package com.oop.seller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class sellerRegisterServelet
 */
@WebServlet("/sellerRegisterServelet")
public class sellerRegisterServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String phone  = request.getParameter("phoneNumber");
		String address =request.getParameter("address");

		boolean utilreturn;

		utilreturn = SellerDBUtil.insertSeller(fname, lname, username, email, password, phone, address);

		if(utilreturn) {
			RequestDispatcher dis = request.getRequestDispatcher("sellerLogin.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("sellerRegister.jsp");
			dis2.forward(request, response);
		}
	}

}
