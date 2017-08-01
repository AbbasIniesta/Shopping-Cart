package com.niit.ShoppingCart.config;
 
import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.ShoppingCart.DAO.CartDAO;
import com.niit.ShoppingCart.DAO.CartDAOimp;
import com.niit.ShoppingCart.DAO.CategoryDAO;
import com.niit.ShoppingCart.DAO.CategoryDAOimp;
import com.niit.ShoppingCart.DAO.CustomerDAO;
import com.niit.ShoppingCart.DAO.CustomerDAOimp;
import com.niit.ShoppingCart.DAO.OrderdetailsDAO;
import com.niit.ShoppingCart.DAO.OrderdetailsDAOimp;
import com.niit.ShoppingCart.DAO.ProductDAO;
import com.niit.ShoppingCart.DAO.ProductDAOimp;
import com.niit.ShoppingCart.DAO.RoleDAO;
import com.niit.ShoppingCart.DAO.RoleDAOimp;
import com.niit.ShoppingCart.DAO.SupplierDAO;
import com.niit.ShoppingCart.DAO.SupplierDAOimp;
import com.niit.ShoppingCart.Model.Cart;
import com.niit.ShoppingCart.Model.Category;
import com.niit.ShoppingCart.Model.Customer;
import com.niit.ShoppingCart.Model.Orderdetails;
import com.niit.ShoppingCart.Model.Product;
import com.niit.ShoppingCart.Model.Role;
import com.niit.ShoppingCart.Model.Supplier;

 
@Configuration
@ComponentScan("com.niit.ShoppingCart")
@EnableTransactionManagement
public class ApplicationConfig 
{
    @Autowired
    @Bean(name="dataSource")
    public DataSource getH2DataSource()
    {
        System.out.println("Data Source Method");
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.h2.Driver");
        dataSource.setUrl("jdbc:h2:tcp://localhost/~/MyDB");
        dataSource.setUsername("sa");
        dataSource.setPassword("");
        System.out.println("Data Source Created");
        return dataSource;
    }
     
        public Properties getHibernateProperties()
    {
        System.out.println("Hibernate Properties -Entered");
        Properties hibernate_prop=new Properties();
        hibernate_prop.setProperty("hibernate.hbm2ddl.auto", "update");
        hibernate_prop.put("hibernate.show_sql", "true"); //optional
        hibernate_prop.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
        hibernate_prop.put("hibernate.format_sql", "true");

        System.out.println("Hibernate Prperty Object Created");
        return hibernate_prop;
    }
     
    @Autowired
    @Bean(name="sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource)
    {
        System.out.println("SessionFactory Method-Entered");
        LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
        sessionBuilder.addProperties(getHibernateProperties());
        sessionBuilder.addAnnotatedClass(Role.class);
        sessionBuilder.addAnnotatedClass(Category.class);
        sessionBuilder.addAnnotatedClass(Cart.class);
        sessionBuilder.addAnnotatedClass(Customer.class);
        sessionBuilder.addAnnotatedClass(Orderdetails.class);
        sessionBuilder.addAnnotatedClass(Product.class);
        sessionBuilder.addAnnotatedClass(Supplier.class);
      
        System.out.println("SessionFactory Object Created");
        return sessionBuilder.buildSessionFactory();
    }
      
    
    @Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;

	}
    @Autowired(required= true)
    @Bean(name="CategoryDAO")
    public CategoryDAO getCategoryDAO(SessionFactory sessionFactory)
    {
        return new CategoryDAOimp(sessionFactory);
    }
    @Autowired(required= true)
    @Bean(name="CartDAO")
    public CartDAO getCartDAO(SessionFactory sessionFactory)
    {
    return new CartDAOimp(sessionFactory);
    }
    @Autowired(required= true)
    @Bean(name="CustomerDAO")
    public CustomerDAO getCustomerDAO(SessionFactory sessionFactory)
    {
    return new CustomerDAOimp(sessionFactory);
    }
    @Autowired(required= true)
    @Bean(name="OrderdetailsDAO")
    public OrderdetailsDAO getOrderdetailsDAO(SessionFactory sessionFactory)
    {
    return new OrderdetailsDAOimp(sessionFactory);
    }
    @Autowired(required= true)
    @Bean(name="ProductDAO")
    public ProductDAO getProductDAO(SessionFactory sessionFactory)
    {
    return new ProductDAOimp(sessionFactory);
    }
    @Autowired(required= true)
    @Bean(name="SupplierDAO")
    public SupplierDAO getSupplierDAO(SessionFactory sessionFactory)
    {
    return new SupplierDAOimp(sessionFactory);
    }
    
  
     }
    