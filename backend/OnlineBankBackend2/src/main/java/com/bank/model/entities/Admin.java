package com.bank.model.entities;

import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

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

	@ManyToMany
	@JoinTable(name = "admin_roles", joinColumns = @JoinColumn(name = "admin_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
	private Set<Role> roles;

	@Override
	public String toString() {
		return "Admin [id=" + id + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", isAccountNonExpired=" + isAccountNonExpired + ", isAccountNonLocked=" + isAccountNonLocked
				+ ", isCredentialsNonExpired=" + isCredentialsNonExpired + ", isEnabled=" + isEnabled + ", roles="
				+ roles + "]";
	}

}
