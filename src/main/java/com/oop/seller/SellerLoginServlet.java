package com.oop.seller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SellerLoginServlet
 */
@WebServlet("/SellerLoginServlet")
public class SellerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un = request.getParameter("username");
		String password = request.getParameter("password");

		try {
			
		List<Seller> sellerDetails = SellerDBUtil.validate(un, password);
		
		request.setAttribute("sellerDetails", sellerDetails);
		
		if (sellerDetails != null && !sellerDetails.isEmpty()) {
		    for (Seller seller : sellerDetails) {
		        int sellerId = seller.getSellerId();
		        String sellerfname = seller.getFname();
		        String sellerlname = seller.getLname();
		        String username = seller.getUsername();
		        String email = seller.getEmail();
		        String passkey = seller.getPassword();
		        String phone = seller.getPhone();
		        String address = seller.getAddress();
		        ///create session
		        HttpSession session = request.getSession();

		        //store seller details in session
		        session.setAttribute("sellerId", sellerId);
		        session.setAttribute("sellerfname", sellerfname);
		        session.setAttribute("sellerlname", sellerlname);
		        session.setAttribute("username", username);
		        session.setAttribute("email", email);
		        session.setAttribute("password", passkey);
		        session.setAttribute("contact", phone);
		        session.setAttribute("address", address);
		    }
		    
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("sellerLogin.jsp");
			dis.forward(request, response);
		}
		
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("sellerDashboard.jsp");
		dis.forward(request, response);
	}

}
