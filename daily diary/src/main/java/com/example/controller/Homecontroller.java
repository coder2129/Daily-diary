package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class Homecontroller {
	
	
	
	@RequestMapping("/home")
	public String basePage() {
		System.out.println("Running");
		return "base";
		
	}

}
