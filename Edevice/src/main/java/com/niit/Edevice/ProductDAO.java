package com.niit.Edevice;

import java.util.List;

public interface ProductDAO {
	public List<Product> getAll();

Product getProductById(int id);
void removeProduct(int id);
 void addProduct(Product product);
 void updateProduct(Product product);


public List<Product> getProductByCategory(String cate);
}
