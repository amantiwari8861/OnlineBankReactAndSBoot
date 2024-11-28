package com.bank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bank.model.entities.Transaction;
import com.bank.service.TransactionService;

@RestController
@RequestMapping("/api/v1/transactions")
public class TransactionController {

    @Autowired
    private TransactionService transactionService;

    /**
     * Create a new transaction
     */
    @Transactional
    @PostMapping
    public Transaction createTransaction(@RequestBody Transaction transaction) {
        return transactionService.saveTransaction(transaction);
    }

    /**
     * Update an existing transaction
     */
    @PutMapping("/{id}")
    public Transaction updateTransaction(@PathVariable Long id, @RequestBody Transaction transaction) {
        transaction.setId(id);
        return transactionService.updateTransaction(transaction);
    }

    /**
     * Delete a transaction by ID
     */
    @DeleteMapping("/{id}")
    public boolean deleteTransaction(@PathVariable Long id) {
        return transactionService.deleteTransaction(id);
    }

    /**
     * Get a specific transaction by ID
     */
    @GetMapping("/{id}")
    public Transaction getTransaction(@PathVariable Long id) {
        return transactionService.getTransactionById(id);
    }

    /**
     * Get all transactions
     */
    @GetMapping
    public List<Transaction> getAllTransactions() {
        return transactionService.getAllTransactions();
    }
}
