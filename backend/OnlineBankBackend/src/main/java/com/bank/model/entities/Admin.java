package com.bank.model.entities;

import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Admin extends User {

	
	private String adminLevel; // Level of admin privileges
	private String officeLocation; // Where the admin is located
	private String hireDate; // Date when the admin was hired

	// Getters and setters
}