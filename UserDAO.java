package com.niit;

import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	public  boolean isValidUser(String username,String password)
	{
		if(username.equals("NIIt")  &&  password.equals("NIIT"))
		{
	
		return true;
		}

	else
	{
		return false;
	}
}
}
