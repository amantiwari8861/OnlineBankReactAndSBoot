package com.bank.model.entities;

import jakarta.persistence.Entity;

@Entity
public class Admin extends User {

	
	private String adminLevel; // Level of admin privileges
	private String officeLocation; // Where the admin is located
	private String hireDate; // Date when the admin was hired

	// Getters and setters
}