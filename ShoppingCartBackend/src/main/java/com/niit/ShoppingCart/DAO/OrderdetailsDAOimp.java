package com.niit.ShoppingCart.DAO;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCart.Model.Orderdetails;



@Repository("OrderdetailsDAO")
public class OrderdetailsDAOimp implements OrderdetailsDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public OrderdetailsDAOimp(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void insertOrderdetails(Orderdetails orderdetails) {
		org.hibernate.Session session=sessionFactory.getCurrentSession();
	       session.saveOrUpdate(orderdetails);
		
	}
	@Transactional
	public void deleteOrderdetails(String orderdetailsId) {
		org.hibernate.Session session=sessionFactory.getCurrentSession();
        Serializable catid = null;
        Orderdetails orderdetails=(Orderdetails)session.get(Orderdetails.class,catid);
        session.delete(orderdetails);
		
	}

	public List<Orderdetails> retrieve() {
		   org.hibernate.Session session=sessionFactory.openSession();
	       @SuppressWarnings("unchecked")
	       List<Orderdetails> List=session.createQuery("from Orderdetails").list();
	       session.close();
		return null;
	}

	public Orderdetails getBYorderdetailsId(String orderdetailsId) {
		// TODO Auto-generated method stub
		return null;
	}

	public Orderdetails getBYOrderdetailsId(String OrderdetailsId) {
		// TODO Auto-generated method stub
		return null;
	}

}