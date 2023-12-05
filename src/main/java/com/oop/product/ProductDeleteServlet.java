package com.oop.product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductDeleteServlet
 */
@WebServlet("/ProductDeleteServlet")
public class ProductDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int productid = Integer.parseInt(request.getParameter("id"));
		
		boolean delete = ProductDBUtil.deleteProduct(productid);

		
		if (delete) {
			request.setAttribute("ProductDelete", "success");
			request.getRequestDispatcher("sellerDashboard.jsp").forward(request, response);
		} else {
			
			request.setAttribute("ProductDelete", "failed");
			request.getRequestDispatcher("sellerDashboard.jsp").forward(request, response);
		}
	}

}
