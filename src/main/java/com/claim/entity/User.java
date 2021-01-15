package com.claim.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User 
{
	@Column
	private String name;
	
	@Column
	private int age;
	
	@Column
	private String telephoneNumber;
	
	@Column
	private String email;
	
	@Id
	@Column
	private String username;
	
	@Column
	private String password;


	public String getName() 
	{
		return name;
	}

	public void setName(String name) 
	{
		this.name = name;
	}

	public int getAge() 
	{
		return age;
	}

	public void setAge(int age) 
	{
		this.age = age;
	}

	public String getTelephoneNumber() 
	{
		return telephoneNumber;
	}

	public void setTelephoneNumber(String telephoneNumber) 
	{
		this.telephoneNumber = telephoneNumber;
	}

	public String getEmail() 
	{
		return email;
	}

	public void setEmail(String email) 
	{
		this.email = email;
	}

	public String getUsername() 
	{
		return username;
	}

	public void setUsername(String username) 
	{
		this.username = username;
	}

	public String getPassword() 
	{
		return password;
	}

	public void setPassword(String password) 
	{
		this.password = password;
	}


	@Override
	public String toString() 
	{
		return "User [name=" + name + ", age=" + age + ", telephoneNumber=" + telephoneNumber + ", email=" + email
				+ ", username=" + username + ", password=" + password + "]";
	}

}