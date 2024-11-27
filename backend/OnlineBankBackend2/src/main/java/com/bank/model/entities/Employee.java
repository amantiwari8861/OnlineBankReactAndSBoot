// Employee
package com.bank.model.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.time.LocalDate;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Employee {
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
	private String department;
	private String employeeId;
	private LocalDate hireDate;
	private String role;
}
