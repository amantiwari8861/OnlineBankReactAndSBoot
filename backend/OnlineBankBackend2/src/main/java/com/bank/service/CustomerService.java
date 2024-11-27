package com.bank.service;

import java.util.List;

import com.bank.model.entities.Customer;

public interface CustomerService {
	public Customer saveCustomer(Customer customer);
	public Customer updateCustomer(Customer customer);
	public Boolean deleteCustomer(Long id);
	public Customer getCustomerById(Long id);
	public List<Customer> getAllCustomers();
}
