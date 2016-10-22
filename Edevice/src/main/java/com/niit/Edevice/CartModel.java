package com.niit.Edevice;

public class CartModel {

	private int cartid;
	private int cartitemid;
	private String productname;
	private int quantity;
	private double price;

	public int getCartid() {
		return cartid;
	}

	public void setCartid(int cartid) {
		this.cartid = cartid;
	}

	public int getCartitemid() {
		return cartitemid;
	}

	public void setCartitemid(int cartitemid) {
		this.cartitemid = cartitemid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
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

	@Override
	public String toString() {
		return "CartController [cartid=" + cartid + ", cartitemid=" + cartitemid + ", productname=" + productname
				+ ", quantity=" + quantity + ", price=" + price + "]";
	}
}
