package com.oop.product;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UpdateProductServlet
 */
@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();

		// get the session variable 'sellerID'
		int sellerId = (int) session.getAttribute("sellerId");

		// get the parameters
		int productid = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String brand = request.getParameter("brand");
		String category = request.getParameter("category");
		String description = request.getParameter("description");
		String model = request.getParameter("model");
		int quantity = Integer.parseInt(request.getParameter("qty"));
		double price = Double.parseDouble(request.getParameter("price"));
		String availability = request.getParameter("availability");
		
		RequestDispatcher dispatcher = null;
		
		boolean productUpdated = ProductDBUtil.updateProductDetails(productid, sellerId, title, brand, category, description, model, quantity, price, availability);

		
		if (productUpdated) {

			dispatcher = request.getRequestDispatcher("sellerDashboard.jsp");

			request.setAttribute("ProductUpdateStatus", "success");

		} else {
			// if item updating is failed
			request.setAttribute("ProoductUpdateStatus", "failed");
		}
		dispatcher.forward(request, response);
		
	}

}
