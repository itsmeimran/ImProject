package com.niit.Edevice;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<Product> getAll() {
		return sessionFactory.getCurrentSession().createQuery("FROM Category").list();
		
	}

	@Override
	public Category getCategoryById(int var) {
		return sessionFactory.getCurrentSession().get(Category.class, var);		
	}

	@Override
	public void removeCategory(int i) {
		sessionFactory.getCurrentSession().delete(getCategoryById(i));

		
	}

	@Override
	public void addCategory(Category cat) {
		sessionFactory.getCurrentSession().persist(cat);

		
	}

	@Override
	public void updateCategory(Category cat) {
		sessionFactory.getCurrentSession().update(cat);
		
	}

}
