package com.bank.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bank.model.ApiResponse;
import com.bank.model.entities.Customer;

// @RestController
// @RequestMapping("/api/v1/user")
// public class AuthController {
//     @PostMapping
//     public ResponseEntity<ApiResponse<Customer>> createCustomer( @RequestBody Customer customer) 
//     {
//         System.out.println(customer);
//         Customer savedCustomer = customerService.saveCustomer(customer);
//         ApiResponse<Customer> response = new ApiResponse<>(HttpStatus.CREATED.value(),
//                 "Customer created successfully", true, savedCustomer);
//         return new ResponseEntity<>(response, HttpStatus.CREATED);
//     }

// }
