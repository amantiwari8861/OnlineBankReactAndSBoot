package com.bank.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bank.model.entities.Transaction;
import com.bank.repository.TransactionRepository;
import com.bank.service.TransactionService;

@Service
public class TransactionServiceImpl implements TransactionService {

    @Autowired
    private TransactionRepository transactionRepository;

    @Override
    public Transaction saveTransaction(Transaction transaction) {
        return transactionRepository.save(transaction);
    }

    @Override
    public Transaction updateTransaction(Transaction transaction) {
        if (transactionRepository.existsById(transaction.getId())) {
            return transactionRepository.save(transaction);
        } else {
            throw new IllegalArgumentException("Transaction not found");
        }
    }

    @Override
    public boolean deleteTransaction(Long id) {
        if (transactionRepository.existsById(id)) {
            transactionRepository.deleteById(id);
            return true;
        }
        return false;
    }

    @Override
    public Transaction getTransactionById(Long id) {
        return transactionRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Transaction not found"));
    }

    @Override
    public List<Transaction> getAllTransactions() {
        return transactionRepository.findAll();
    }
}
