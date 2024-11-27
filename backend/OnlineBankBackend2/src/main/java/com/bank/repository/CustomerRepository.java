package com.bank.repository;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bank.model.entities.Customer;

import jakarta.transaction.Transactional;

@Repository
@Transactional
public interface CustomerRepository extends JpaRepository<Customer,Integer>
{
	Optional<Customer> findByEmail(String email);
	Optional<Customer> findById(Long id);

}
