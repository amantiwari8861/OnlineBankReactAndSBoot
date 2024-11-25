package com.bank.model.entities;

import java.util.Set;

import org.springframework.security.core.GrantedAuthority;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;

@Entity
public class Role implements GrantedAuthority {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name; // e.g., "ROLE_CUSTOMER", "ROLE_EMPLOYEE"

    @ManyToMany(mappedBy = "roles")
    private Set<Admin> users;

    @Override
    public String getAuthority() {
        return name; // Return the role name as the authority
    }

    // Getters and setters
}
