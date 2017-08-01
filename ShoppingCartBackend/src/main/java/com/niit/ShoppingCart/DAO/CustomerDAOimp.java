package com.niit.ShoppingCart.DAO;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCart.Model.Customer;



@Repository("CustomerDAO")
public class CustomerDAOimp implements CustomerDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public CustomerDAOimp(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void insertCustomer(Customer customer) {
		sessionFactory.getCurrentSession().saveOrUpdate(customer);
		
	}
	@Transactional
	public void deleteCustomer(String customerId) {
		org.hibernate.Session session=sessionFactory.getCurrentSession();
        Serializable catid = null;
		Customer customer=(Customer)session.get(Customer.class,catid);
        session.delete(customer);
		
	}

	public List<Customer> retrieve() {
		   org.hibernate.Session session=sessionFactory.openSession();
	       @SuppressWarnings("unchecked")
	       List<Customer> List=session.createQuery("from Customer").list();
	       session.close();
		return null;
	}

	public Customer getBYcustomerId(String customerId) {
		// TODO Auto-generated method stub
		return null;
	}

	public Customer getemail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

}