package com.niit.ShoppingCart.DAO;

import java.util.List;

import com.niit.ShoppingCart.Model.Role;

public interface RoleDAO {

	public void insertRole(Role role);

	public void deleteRole(String roleId);

	public List<Role> retrieve();

	public Role getByRoleId(String roleId);
	
	public Role get(String emailID);

	public void update(Role user);

}
