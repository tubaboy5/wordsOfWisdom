package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.claim.entity.User;

@Repository
public interface UserRepo extends JpaRepository<User, String> 
{

}
