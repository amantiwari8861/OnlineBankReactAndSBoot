package com.bank.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bank.model.entities.Transaction;

@Repository
public interface TransactionRepository extends JpaRepository<Transaction,Integer>
{
	Optional<Transaction> findById(Long id);
}
