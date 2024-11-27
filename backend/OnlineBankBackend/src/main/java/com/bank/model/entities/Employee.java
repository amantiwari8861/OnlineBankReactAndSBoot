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
public class Employee extends User {

    private String department; // e.g., Operations, Sales
    private String employeeId; // Unique identifier for the employee
    private String hireDate; // Date when the employee was hired
    private String role; // Specific role in the organization (e.g., Teller, Manager)

}
