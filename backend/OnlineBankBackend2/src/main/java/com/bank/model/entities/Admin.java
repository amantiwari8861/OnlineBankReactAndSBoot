package com.bank.model.entities;

import jakarta.persistence.Entity;
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
public class Admin extends User {

    private String adminLevel; // Level of admin privileges
    private String officeLocation; // Where the admin is located
    private String hireDate; // Date when the admin was hired

    // Many-to-many relationship with roles
    @ManyToMany(mappedBy = "admins")
    private Set<Role> roles;

}
