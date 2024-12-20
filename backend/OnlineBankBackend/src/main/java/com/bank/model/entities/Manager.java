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
public class Manager extends User {

    private String teamName; // The team they manage
    private String officeLocation; // Where the manager is located
    private String hireDate; // Date when the manager was hired
    private String department; // Department they oversee

    // Getters and setters
}