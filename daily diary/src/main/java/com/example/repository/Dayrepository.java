package com.example.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.domain.Day;



public interface Dayrepository extends JpaRepository<Day, Integer>{

	Optional<Day> findByPassword(String password);

}