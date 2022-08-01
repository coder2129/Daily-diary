package com.example.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.Day;

import com.example.repository.Dayrepository;


@Service
public class Dayservice {
	
	@Autowired
	private Dayrepository dayrepository;
	
	
	public Day validate(String password) {
		Optional<Day> day = dayrepository.findByPassword(password);
	
		if(day.isPresent())
		{	
			if(day.get().getPassword().equals(password))
			{
				System.out.println(day.get().toString());
				return day.get();			}
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


	public long countDays() {
		return dayrepository.count();
	}


	public List<Day> allDays() {
		return dayrepository.findAll();
	}
}