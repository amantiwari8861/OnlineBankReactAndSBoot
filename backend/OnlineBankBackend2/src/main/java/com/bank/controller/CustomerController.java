package com.bank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bank.exceptions.UserDoesNotExistsException;
import com.bank.model.ApiResponse;
import com.bank.model.entities.Customer;
import com.bank.service.CustomerService;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/v1/customers")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @Transactional
    @PostMapping
    public ResponseEntity<ApiResponse<Customer>> createCustomer( @RequestBody Customer customer) 
    {
        System.out.println(customer);
        Customer savedCustomer = customerService.saveCustomer(customer);
        ApiResponse<Customer> response = new ApiResponse<>(HttpStatus.CREATED.value(),
                "Customer created successfully", true, savedCustomer);
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    public ResponseEntity<ApiResponse<Customer>> updateCustomer(@PathVariable Long id,
            @Valid @RequestBody Customer customer) {
        customer.setId(id);
        Customer updatedCustomer = customerService.updateCustomer(customer);
        ApiResponse<Customer> response = new ApiResponse<>(HttpStatus.OK.value(),
                "Customer updated successfully", true, updatedCustomer);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<ApiResponse<Boolean>> deleteCustomer(@PathVariable Long id) {
        boolean isDeleted = customerService.deleteCustomer(id);
        String message = isDeleted ? "Customer deleted successfully" : "Customer not found";
        ApiResponse<Boolean> response = new ApiResponse<>(HttpStatus.OK.value(), message, isDeleted, isDeleted);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<ApiResponse<Customer>> getCustomer(@PathVariable Long id) {
        Customer customer = customerService.getCustomerById(id);
        if (customer != null) {
            ApiResponse<Customer> response = new ApiResponse<>(HttpStatus.OK.value(),
                    "Customer retrieved successfully", true, customer);
            return new ResponseEntity<>(response, HttpStatus.OK);
        } else
            throw new UserDoesNotExistsException("user doesn't exist");
    }

    @GetMapping
    public ResponseEntity<ApiResponse<List<Customer>>> getAllCustomers() {
        List<Customer> customers = customerService.getAllCustomers();
        ApiResponse<List<Customer>> response = new ApiResponse<>(HttpStatus.OK.value(),
                "Customers retrieved successfully", true, customers);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
}
