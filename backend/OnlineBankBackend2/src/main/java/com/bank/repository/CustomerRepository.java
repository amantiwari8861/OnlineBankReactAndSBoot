package com.bank.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bank.model.entities.Customer;

@Repository
@Transactional
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
	Optional<Customer> findByEmail(String email);

	Optional<Customer> findById(Long id);

}
