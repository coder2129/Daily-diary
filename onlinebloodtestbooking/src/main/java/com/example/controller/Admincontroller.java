package com.example.controller;

import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.example.domain.Adminlogin;
import com.example.domain.Day;
import com.example.repository.Adminrepository;
import com.example.repository.Dayrepository;
import com.example.service.AdminService;
import com.example.service.Dayservice;


@Controller
public class Admincontroller {
	String pass;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private Adminrepository adminrepository;
	
	@Autowired
	private Dayrepository dayrepository;
	
	@Autowired
	private Dayservice dayservice;
	
	@RequestMapping("/newuser")
	public String newuser() {
		
		return "newuser";
	}
	
	@RequestMapping(value="/registered" , method = RequestMethod.POST)
	public String registered(Adminlogin adminlogin ,  Model model ,HttpSession session) {
		
		this.adminrepository.save(adminlogin);
				
				System.out.println("Adminlogin"+adminlogin);
				session.setAttribute("message", "Succesfully Registered!!");
				return "adminLogin";
		
	}
	
	@RequestMapping("/adminLogin")
	public String adminLogin() {
	
		return "adminLogin";
	}
	
	
	@RequestMapping("/adminValidation")
	public String adminValidation(String username, String password , Model model, RedirectAttributes ra) {
		Adminlogin admin=adminService.validate(username, password);
        if(admin==null) {
           model.addAttribute("msg","Incorrect username or password!!");
            return "adminLogin";
        }
        else {
            model.addAttribute("username", username);
            return "mcqpage";
        }
		
	}
	
	@RequestMapping("/mcqpage")
	public String mcqpage() {
		return "mcqpage";
	}
	
	@RequestMapping("/jar")
	public String jar() {
		return "jar";
	}
	
	@RequestMapping("/addday")
	public String addday() {
		
		return "addday";
	}
	@RequestMapping(value="/registeredday" , method = RequestMethod.POST)
	public String registeredDay(Day day,  Model model ,HttpSession session) {
		
           this.dayrepository.save(day);
				
				System.out.println("Day"+day);
				session.setAttribute("message", "Succesfully Added!!");
				return "addday";
		
	}
	
	@RequestMapping("/viewday")
	public String viewday(Model model) {
		
		Day day = dayservice.validate(pass);
		System.out.println(day);
		model.addAttribute("days",day);
		
		
		return "viewday";
	}
}
	
	
	
	
	
	
	