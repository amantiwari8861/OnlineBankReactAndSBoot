package com.bank.model.entities;

import java.time.LocalDate;
import java.util.Set;

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
public class Transaction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private double amount;
    private LocalDate transactionDate;
    private String transactionType;  // e.g., Deposit, Withdrawal

    @ManyToMany
    @JoinTable(
        name = "customer_transactions",
        joinColumns = @JoinColumn(name = "transaction_id"),
        inverseJoinColumns = @JoinColumn(name = "customer_id")
    )
    private Set<Customer> customers;
}
