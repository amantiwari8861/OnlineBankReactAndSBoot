package com.bank.service;

import java.util.List;

import com.bank.model.entities.Transaction;

public interface TransactionService {
    Transaction saveTransaction(Transaction transaction);
    Transaction updateTransaction(Transaction transaction);
    boolean deleteTransaction(Long id);
    Transaction getTransactionById(Long id);
    List<Transaction> getAllTransactions();
}
