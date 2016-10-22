package com.niit.Edevice;

import java.util.List;

public interface CategoryDAO {
	public List<Product> getAll();

	public Category getCategoryById(int id);
	public void removeCategory(int id);
	public void addCategory(Category cat);
	public void updateCategory(Category cat);

}
