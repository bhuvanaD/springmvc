package com.niit.shoponline;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;

public class CategoryTest {
	
	public static void main(String[] args)
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		
		Category category = (Category) context.getBean("category");
		
		category.setId("mob01");
		category.setName("alias");
		category.setDescription("this is mobile category");
		if(categoryDAO.save(category)==true)
		{
			System.out.println("Category created successfully");
		}
		
		else
		{System.out.println("category not created");
	
		}

}
}
