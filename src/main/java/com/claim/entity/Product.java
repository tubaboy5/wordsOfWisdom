package com.claim.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Product 
{
	@Id
	@Column
	private String name;

	@Column
	private String description;

	@Column
	private double price;

	public String getName() 
	{
		return name;
	}

	public void setName(String name) 
	{
		this.name = name;
	}

	public String getDescription() 
	{
		return description;
	}

	public void setDescription(String description) 
	{
		this.description = description;
	}

	public double getPrice() 
	{
		return price;
	}

	public void setPrice(double price) 
	{
		this.price = price;
	}

	@Override
	public String toString() 
	{
		return "Product [Name=" + name + ", description=" + description + ", price=" + price + "]";
	}

}
