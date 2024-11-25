package com.bank.model.entities;

import jakarta.persistence.Entity;

@Entity
public class Employee extends User {

    private String department; // e.g., Operations, Sales
    private String employeeId; // Unique identifier for the employee
    private String hireDate; // Date when the employee was hired
    private String role; // Specific role in the organization (e.g., Teller, Manager)

}
