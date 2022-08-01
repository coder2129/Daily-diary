package com.example.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;



import com.example.domain.Adminlogin;





public interface Adminrepository extends JpaRepository<Adminlogin, Integer>{

	Optional<Adminlogin> findByUsername(String username);

}


