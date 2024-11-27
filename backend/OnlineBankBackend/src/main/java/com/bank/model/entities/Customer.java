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
public class Customer extends User {

    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String address;
    private String dateOfBirth;

    // Additional fields as needed for customer information
    private String accountType; // e.g., Savings, Checking

}