package com.example.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="day")
public class Day {
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
	private int aId;
	
	private String password;
	private String urday;
	

	public Day() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getaId() {
		return aId;
	}

	public void setaId(int aId) {
		this.aId = aId;
	}
	

	public String getUrday() {
		return urday;
	}

	public void setUrday(String urday) {
		this.urday = urday;
	}


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Day [aId=" + aId + ", password=" + password + ", urday=" + urday + "]";
	}
	
}
