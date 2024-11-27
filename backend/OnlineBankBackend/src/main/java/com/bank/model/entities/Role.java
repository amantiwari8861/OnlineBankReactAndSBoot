package com.bank.model.entities;

import java.util.Set;

// import org.springframework.security.core.GrantedAuthority;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
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
// public class Role implements GrantedAuthority {
public class Role  {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name; // e.g., "ROLE_CUSTOMER", "ROLE_EMPLOYEE"

    @ManyToMany(mappedBy = "roles")
    private Set<Admin> users;

    // @Override
    // public String getAuthority() {
    //     return name; // Return the role name as the authority
    // }

    // Getters and setters
}
