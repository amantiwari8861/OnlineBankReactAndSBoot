package com.bank.repository;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bank.model.entities.Customer;

public interface CustomerRepository extends JpaRepository<Customer,Integer>
{
	Optional<Customer> findByEmail(String Customername);
	Optional<Customer> findById(Long id);

}
