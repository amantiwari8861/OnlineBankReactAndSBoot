package com.bank.service;

import java.util.List;

import com.bank.model.entities.Transaction;

public interface TransactionService {
	public Transaction saveTransaction(Transaction transaction);
	public Transaction updateTransaction(Transaction transaction);
	public Boolean deleteTransaction(Long id);
	public Transaction getTransactionById(Long id);
	public List<Transaction> getAllTransactions();
}
