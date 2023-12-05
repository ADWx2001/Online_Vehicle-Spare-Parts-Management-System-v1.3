package com.oop.product;

public class Product {

	private int productid;
	private int sellerid;
	private String title;
	private String brand;
	private String category;
	private String description;
	private String model;
	private int quantity;
	private double price;
	private String availability;
	private String displayimage;
	private String productimage1;
	private String productimage2;
	
	//overloaded constuctor
	public Product(int productid, int sellerid, String title, String brand, String category, String description,
			String model, int quantity, double price, String availability, String displayimage, String productimage1,
			String productimage2) {
		
		this.productid = productid;
		this.sellerid = sellerid;
		this.title = title;
		this.brand = brand;
		this.category = category;
		this.description = description;
		this.model = model;
		this.quantity = quantity;
		this.price = price;
		this.availability = availability;
		this.displayimage = displayimage;
		this.productimage1 = productimage1;
		this.productimage2 = productimage2;
	}


	public int getProductid() {
		return productid;
	}


	public void setProductid(int productid) {
		this.productid = productid;
	}


	public int getSellerid() {
		return sellerid;
	}


	public void setSellerid(int sellerid) {
		this.sellerid = sellerid;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getBrand() {
		return brand;
	}


	public void setBrand(String brand) {
		this.brand = brand;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getModel() {
		return model;
	}


	public void setModel(String model) {
		this.model = model;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public String getAvailability() {
		return availability;
	}


	public void setAvailability(String availability) {
		this.availability = availability;
	}


	public String getDisplayimage() {
		return displayimage;
	}


	public void setDisplayimage(String displayimage) {
		this.displayimage = displayimage;
	}


	public String getProductimage1() {
		return productimage1;
	}


	public void setProductimage1(String productimage1) {
		this.productimage1 = productimage1;
	}


	public String getProductimage2() {
		return productimage2;
	}


	public void setProductimage2(String productimage2) {
		this.productimage2 = productimage2;
	}
	
	
	
	
}
