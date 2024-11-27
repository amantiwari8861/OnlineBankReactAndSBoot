package com.bank.model.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(unique = true, nullable = false)
	String username;

	@Column(nullable = false)
	String password;

	String email;
	boolean isAccountNonExpired = true;
	boolean isAccountNonLocked = true;
	boolean isCredentialsNonExpired = true;
	boolean isEnabled = true;
	private String adminLevel; // Level of admin privileges
	private String officeLocation; // Where the admin is located
	private String hireDate; // Date when the admin was hired

	// Many-to-many relationship with roles
	@ManyToMany(mappedBy = "admins")
	private Set<Role> roles;

}
