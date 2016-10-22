package com.niit.Edevice;

import java.util.List;

public interface CartDAO {
	
	public List<CartModel> getAll();

	public CartModel getCartById(int id);
	public void removeProduct(int id);
	public void addProduct(CartModel cart);
	public void updateProduct(CartModel cart);

}
