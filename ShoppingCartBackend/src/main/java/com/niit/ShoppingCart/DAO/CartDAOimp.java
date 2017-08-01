package com.niit.ShoppingCart.DAO;

import java.io.Serializable;
import java.util.List;

import org.h2.engine.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCart.Model.Cart;

import com.niit.ShoppingCart.DAO.CartDAO;

@Repository("CartDAO")
public class CartDAOimp implements CartDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public CartDAOimp(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void insertCart(Cart cart) {
		org.hibernate.Session session=sessionFactory.getCurrentSession();
	       session.saveOrUpdate(cart);
		
	}
	@Transactional
	public void deleteCart(String cartId) {
		org.hibernate.Session session=sessionFactory.getCurrentSession();
        Serializable catid = null;
		Cart cart=(Cart)session.get(Cart.class,catid);
        session.delete(cart);
		
	}

	public List<Cart> retrieve() {
		   org.hibernate.Session session=sessionFactory.openSession();
	       @SuppressWarnings("unchecked")
	       List<Cart> List=session.createQuery("from Cart").list();
	       session.close();
		return null;
	}

	public Cart getBYcartId(String cartId) {
		// TODO Auto-generated method stub
		return null;
	}

}