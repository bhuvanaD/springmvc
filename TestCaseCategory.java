package com.niit.shoponline;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;

public class TestCaseCategory {

	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	AnnotationConfigApplicationContext context;
	
	@Before
	public void init() //to intitalize
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		category = (Category) context.getBean("category"); //type case
	}
	
	@Test
	public void categoryListTestCase() // to check everything is work fine it will return list of records
	{
		List<Category> list = categoryDAO.list();
		
		int rowCount = list.size();
		assertEquals("Category list testcase",rowCount,1);     //compare to values we need to givr actual table rows value
	}
	
	@Test
	public void addCategoryTestCase(){
		
		category.setId("mobo5");
		
		category.setName("laptop");
		category.setDescription("thti is laptoo");
		
		//categoryDAO.save(category); // for ding this we need calll save method from categorydao u can use both ways 
		
		assertEquals("addtestcase",categoryDAO.save(category),true);	
	}
	@Test
	public void updateCategoryTestCase()
	{
		category.setId("mob04");
		category.setName("iphone");
		category.setDescription("this is mobile category");
		
		
		assertEquals("update   ",categoryDAO.update(category),true);
	}
	@Test
	public void deleteCategoryTestCase()
	{                              
		category.setId("Prd 001");
		boolean flag = categoryDAO.delete(category);
		
		assertEquals("deletecategorytestcase " , flag,false);
		
											// tp delet is workking fine or no
	    categoryDAO.delete(category);
	}

	
	
	
	
	}


