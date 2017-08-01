package com.niit.ShoppingCart.DAO;

import java.io.Serializable;
import java.util.List;

import org.h2.engine.Session;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCart.Model.Category;
import com.niit.ShoppingCart.Model.Product;
import com.niit.ShoppingCart.DAO.CategoryDAO;

@Repository("CategoryDAO")
public class CategoryDAOimp implements CategoryDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public CategoryDAOimp(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void insertCategory(Category category) {
		org.hibernate.Session session=sessionFactory.getCurrentSession();
	       session.saveOrUpdate(category);
		
	}
	@Transactional
	public void deleteCategory(String categoryId) {
		org.hibernate.Session session=sessionFactory.getCurrentSession();
       
		Category category=(Category)session.get(Category.class,categoryId);
        session.delete(category);
		
	}

	public List<Category> retrieve() {
		   org.hibernate.Session session=sessionFactory.openSession();
	       @SuppressWarnings("unchecked")
	       List<Category> List=session.createQuery("from Category").list();
	       session.close();
		return List;
	}

	@Transactional
	public Category getBYcategoryId(String categoryId) {
		// TODO Auto-generated method stub
		String hql = "from Category where CategoryId ='" + categoryId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) (query).list();

		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}

		return null;
	}

}