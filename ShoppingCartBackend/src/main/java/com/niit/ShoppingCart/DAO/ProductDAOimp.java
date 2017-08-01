package com.niit.ShoppingCart.DAO;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCart.Model.Product;

@Repository("ProductDAO")
public class ProductDAOimp implements ProductDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public ProductDAOimp(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void insertProduct(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		
	}
	@Transactional
	public void update(Product product){
		sessionFactory.getCurrentSession().update(product);
	}
	
	
	@Transactional
	public void deleteProduct(String productId) {
		org.hibernate.Session session=sessionFactory.getCurrentSession();
        Serializable catid = null;
        Product product=(Product)session.get(Product.class,productId);
        session.delete(product);
		
	}

	@Transactional
	public List<Product> retrieve() {
		   org.hibernate.Session session=sessionFactory.openSession();
	       @SuppressWarnings("unchecked")
	       List<Product> List=session.createQuery("from Product").list();
	       session.close();
		return List;
	}

	@Transactional
	public Product getBYproductId(int productId) {
		// TODO Auto-generated method stub
		String hql = "from Product where ProductId ='" + productId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) (query).list();

		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		return null;
	}

}