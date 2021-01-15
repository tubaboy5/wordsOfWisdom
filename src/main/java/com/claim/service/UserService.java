package com.claim.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.User;
import com.claim.repository.UserRepo;

@Service
public class UserService 
{

	@Autowired
	UserRepo userRepo;
	
	public void saveUser(User user)
	{
		userRepo.save(user);
	}

	public ArrayList<User> findAll() 
	{
		// TODO Auto-generated method stub
		return (ArrayList<User>) userRepo.findAll();
	}
}
