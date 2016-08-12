package com.niit.shoppingcart.dao;
	
	
	

	import java.util.List;

	import org.hibernate.HibernateException;
	import org.hibernate.SessionFactory;
	import org.hibernate.query.Query;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;
	import org.springframework.transaction.annotation.EnableTransactionManagement;
	import org.springframework.transaction.annotation.Transactional;

	import com.niit.shoppingcart.model.Product;



	@EnableTransactionManagement
	@Repository(value="ProductDAO")

	public class ProductDAOImpl implements ProductDAO
	{
		@Autowired
		private SessionFactory sessionFactory;
		public  ProductDAOImpl(SessionFactory sessionFactory)
		{
	    this.sessionFactory=sessionFactory;
		}
		
		@Transactional
		public boolean save(Product product)
		
		{
			
			try {
				sessionFactory.getCurrentSession().save(product);
				return true;
			} catch (HibernateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
		}

		@Transactional
		public boolean update(Product product)
		{
			try {
				sessionFactory.getCurrentSession().update(product);
				return true;
			} catch (HibernateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
		}
		@Transactional
		public boolean delete(Product product)
		{
			try {
				sessionFactory.getCurrentSession().delete(product);
				return true;
			} catch (HibernateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
		}
		public Product get(String id)
		{
			String hql ="from product where id=" + " ' "+id+" ' ";
			
			Query query=sessionFactory.getCurrentSession().createQuery(hql);
			
			@SuppressWarnings({ "deprecation", "unchecked" })
			List<Product> list=query.list();
			if(list==null)
				{
				  return null;
				}
			
			else
			{
				 return list.get(0);
			}
				}
		public List<Product> list()
		{
			  String hql="from product";
			  
			  Query query=sessionFactory.getCurrentSession().createQuery(hql);
			  return query.list();
			  
		}
	}
		

		
		
		


	


