package com.oop.seller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class SellerDeleteServlet
 */
@WebServlet("/SellerDeleteServlet")
public class SellerDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int sellerId = (int) session.getAttribute("sellerId");
		
		boolean deleted = false;
		
		try {
			
			deleted = SellerDBUtil.deleteSellerAccount(sellerId);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}

		
		if (deleted) {

			session.invalidate();
			request.getRequestDispatcher("sellerRegister.jsp").forward(request, response);
			
		} else {
			request.getRequestDispatcher("sellerDashboard.jsp").forward(request, response);
		}
	
		

		/*try {
			isTrue = SellerDBUtil.deleteSellerAccount(sellerId);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		if (isTrue == true) {

			RequestDispatcher dis = request.getRequestDispatcher("sellerRegister.jsp");
			request.setAttribute("status", "done2");
		     dis.forward(request, response);

			
		} else {
			RequestDispatcher dis = request.getRequestDispatcher("sellerDashboard.jsp");
			request.setAttribute("status", "done2");
		     dis.forward(request, response);

		}*/
	}

}
