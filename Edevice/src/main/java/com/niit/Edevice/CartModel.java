package com.niit.Edevice;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class CartModel {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cartid;
	private int cartitemid;
	private String productname;
	private String productcategory;
	private String productsupplier;
	private String useraccout;
	public String getProductcategory() {
		return productcategory;
	}

	public void setProductcategory(String productcategory) {
		this.productcategory = productcategory;
	}

	public String getProductsupplier() {
		return productsupplier;
	}

	public void setProductsupplier(String productsupplier) {
		this.productsupplier = productsupplier;
	}

	public String getUseraccout() {
		return useraccout;
	}

	public void setUseraccout(String useraccout) {
		this.useraccout = useraccout;
	}

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

	@Override
	public String toString() {
		return "CartModel [cartid=" + cartid + ", cartitemid=" + cartitemid + ", productname=" + productname
				+ ", productcategory=" + productcategory + ", productsupplier=" + productsupplier + ", useraccout="
				+ useraccout + ", quantity=" + quantity + ", price=" + price + "]";
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}


}
