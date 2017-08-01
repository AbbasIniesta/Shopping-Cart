package com.niit.ShoppingCart.DAO;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCart.Model.Role;


@Repository("RoleDAO")
@Transactional
public class RoleDAOimp implements RoleDAO {

	@Autowired
    private SessionFactory sessionFactory;
     
	
	public RoleDAOimp(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
   
	@Transactional
	public Role get(String emailID) {
		
		
		String hql = "from Role where emailID ='"+ emailID +"'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Role> listUser = (List<Role>) query.list();
		
		if (listUser != null && !listUser.isEmpty()){
			return listUser.get(0);
		}
		return null;
	}

   
	public void deleteRole(String roleId) {
		// TODO Auto-generated method stub

	}
   
	public List<Role> retrieve() {
		// TODO Auto-generated method stub
		return null;
	}
    @Transactional
	public Role getByRoleId(String roleId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void insertRole(Role role) {
		sessionFactory.getCurrentSession().saveOrUpdate(role);	// TODO Auto-generated method stub
		
	}

	
	public void update(Role user) {
		// TODO Auto-generated method stub
		
	}

}