package com.claim.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.User;
import com.claim.service.UserService;

@Controller
public class UserController 
{
	@Autowired
	UserService userService;

	@RequestMapping(value="/registerUser", method=RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("user") User user)
	{
		System.out.println(user);
		userService.saveUser(user);
		return new ModelAndView("Confirm");
	}

	@RequestMapping(value="/userList", method=RequestMethod.GET)
	public ModelAndView findAll(HttpSession session)
	{
		
		ArrayList<User> users = userService.findAll();
		return new ModelAndView("userList", "users", users);
	}
	
}
