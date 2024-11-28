package com.bank.model.entities;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;

@Entity
public class Transaction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private double amount;
    private String sender;           // Sender's information (e.g., Customer ID)
    private String receiver;         // Receiver's information (e.g., Customer ID)
    private String transactionType;  // Type of transaction (Deposit, Withdrawal, etc.)
    private String status;          // Transaction status (Pending, Completed, Failed, etc.)
    private String mode;            // Mode of transaction (Cash, Transfer, Online, etc.)
    
    // Use LocalDateTime to capture date and time
    private LocalDateTime transactionTime;  // Time when the transaction occurred

    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Customer customer;  // The customer who performed the transaction

    // @PrePersist method will be called before persisting the entity
    @PrePersist
    public void prePersist() {
        if (this.transactionTime == null) {
            this.transactionTime = LocalDateTime.now();  // Set current timestamp if not already set
        }
    }

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getTransactionType() {
        return transactionType;
    }

    public void setTransactionType(String transactionType) {
        this.transactionType = transactionType;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public LocalDateTime getTransactionTime() {
        return transactionTime;
    }

    public void setTransactionTime(LocalDateTime transactionTime) {
        this.transactionTime = transactionTime;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @Override
    public String toString() {
        return "Transaction [id=" + id + ", amount=" + amount + ", sender=" + sender + ", receiver=" + receiver
                + ", transactionType=" + transactionType + ", status=" + status + ", mode=" + mode
                + ", transactionTime=" + transactionTime + ", customer=" + customer + "]";
    }

}
