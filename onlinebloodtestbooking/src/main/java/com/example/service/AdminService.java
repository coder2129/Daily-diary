package com.example.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.example.domain.Adminlogin;
import com.example.repository.Adminrepository;



@Service
public class AdminService {
	
	@Autowired
	private Adminrepository adminrepository;
	
	
	
	public Adminlogin validate(String username , String password) {
		Optional<Adminlogin> admin = adminrepository.findByUsername(username);
	
		if(admin.isPresent())
		{	
			if(admin.get().getPassword().equals(password))
			{
				System.out.println(admin.get().toString());
				return admin.get();			}
			else
			{
				return null;
			}
		}
		
		else
		{
			return null;
		}
	}
}
