package com.niit.shoppingcart.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Category;



@EnableTransactionManagement
@Repository(value="CategoryDAO")

public class CategoryDAOImpl implements CategoryDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	public  CategoryDAOImpl(SessionFactory sessionFactory)
	{
    this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public boolean save(Category category)
	
	{
		
		try {
			sessionFactory.getCurrentSession().save(category);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean update(Category category)
	{
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	@Transactional
	public boolean delete(Category category)
	{
		try {
			sessionFactory.getCurrentSession().delete(category);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public Category get(String id)
	{
		String hql ="from category where id=" + " ' "+id+" ' ";
		
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings({ "deprecation", "unchecked" })
		List<Category> list=query.list();
		if(list==null)
			{
			  return null;
			}
		
		else
		{
			 return list.get(0);
		}
			}
	public List<Category> list()
	{
		  String hql="from category";
		  
		  Query query=sessionFactory.getCurrentSession().createQuery(hql);
		  return query.list();
		  
	}
}
	

	
	
	

