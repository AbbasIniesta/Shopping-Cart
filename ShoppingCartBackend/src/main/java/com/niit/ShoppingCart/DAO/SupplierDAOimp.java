package com.niit.ShoppingCart.DAO;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCart.Model.Supplier;

@Repository("SupplierDAO")
public class SupplierDAOimp implements SupplierDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public SupplierDAOimp(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void insertSupplier(Supplier supplier) {
		org.hibernate.Session session=sessionFactory.getCurrentSession();
	       session.saveOrUpdate(supplier);
		
	}
	@Transactional
	public void deleteSupplier(String supplierId) {
		org.hibernate.Session session=sessionFactory.getCurrentSession();
        Serializable catid = null;
        Supplier supplier=(Supplier)session.get(Supplier.class,supplierId);
        session.delete(supplier);
		
	}

	public List<Supplier> retrieve() {
		   org.hibernate.Session session=sessionFactory.openSession();
	       @SuppressWarnings("unchecked")
	       List<Supplier> List=session.createQuery("from Supplier").list();
	       session.close();
		return List;
	}

	@Transactional
	public Supplier getBYsupplierId(String supplierId) {
		// TODO Auto-generated method stub
		String hql = "from Supplier where SupplierId ='" + supplierId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) (query).list();

		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}

		return null;
	}

}