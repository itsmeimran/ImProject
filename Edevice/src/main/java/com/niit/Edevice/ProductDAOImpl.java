package com.niit.Edevice;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
/* Make sure to use spring framework transactional annotation*/
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.query.Query;



@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public List<Product> getAll() {
		return sessionFactory.getCurrentSession().createQuery("FROM Product").list();
	}

	public Product getProductById(int var) {

		return sessionFactory.getCurrentSession().get(Product.class, var);
	}

	public void removeProduct(int i) {
		sessionFactory.getCurrentSession().delete(getProductById(i));

	}

	public void addProduct(Product product) {

		sessionFactory.getCurrentSession().persist(product);

	}

	public void updateProduct(Product product) {

		sessionFactory.getCurrentSession().update(product);
	}
	
	public List<Product> getProductByCategory(String category) {
		// TODO Auto-generated method stub
		Query query = sessionFactory.getCurrentSession().createQuery("from Product WHERE category=?");
		query.setParameter(0, category);
		return query.list();
	}

}
