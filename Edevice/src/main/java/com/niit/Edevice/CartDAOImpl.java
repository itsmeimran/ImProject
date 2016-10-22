package com.niit.Edevice;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class CartDAOImpl implements CartDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public List<CartModel> getAll() {
		return sessionFactory.getCurrentSession().createQuery("FROM CartModel").list();
	}

	@Override
	public CartModel getCartById(int id) {
		return sessionFactory.getCurrentSession().get(CartModel.class, id);
	}

	@Override
	public void removeProduct(int id) {
		sessionFactory.getCurrentSession().delete(getCartById(id));

		
	}

	@Override
	public void addProduct(CartModel cart) {
		sessionFactory.getCurrentSession().persist(cart);

		
	}

	@Override
	public void updateProduct(CartModel cart) {
		sessionFactory.getCurrentSession().update(cart);
		
	}

}
