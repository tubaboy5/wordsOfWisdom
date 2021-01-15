package com.claim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Product;
import com.claim.entity.User;

@Controller
public class HomeController 
{
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index()
	{
		return "index";
	}
	
	@RequestMapping(value="/aboutUs", method=RequestMethod.GET)
	public String about()
	{
		return "aboutUs";
	}
	
	@RequestMapping(value="/signUp", method=RequestMethod.GET)
	public ModelAndView signUp()
	{
		return new ModelAndView("signUp", "user", new User());
	}
	
	@RequestMapping(value="/logIn", method=RequestMethod.GET)
	public String logIn()
	{
		return "logIn";
	}
	
	@RequestMapping(value="/addProduct", method=RequestMethod.GET)
	public ModelAndView addProduct()
	{
		return new ModelAndView ("addProduct", "product", new Product());
	}
	
}
