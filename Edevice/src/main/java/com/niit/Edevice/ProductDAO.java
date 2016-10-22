package com.niit.Edevice;

import java.util.List;

public interface ProductDAO {
	public List<Product> getAll();

public Product getProductById(int id);
public void removeProduct(int id);
public void addProduct(Product product);
public void updateProduct(Product product);

}
