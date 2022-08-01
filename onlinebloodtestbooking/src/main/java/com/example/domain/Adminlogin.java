package com.example.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admindata")
public class Adminlogin {
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    
	private int aId;

	private String username;
	private String password;
	private String emailid;
	
	
	public Adminlogin() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public int getaId() {
		return aId;
	}


	public void setaId(int aId) {
		this.aId = aId;
	}


	

	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String getEmailid() {
		return emailid;
	}


	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}


	@Override
	public String toString() {
		return "Adminlogin [aId=" + aId + ", username=" + username + ", password=" + password + ", emailid=" + emailid
				+ "]";
	}


	
	
	
	
	

}
