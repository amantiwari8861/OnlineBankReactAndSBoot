//package com.bank.service;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
//import com.bank.model.entities.Customer;
//import com.bank.repository.CustomerRepository;
//
//@Service
//public class CustomUserDetailsService implements org.springframework.security.core.userdetails.UserDetailsService {
//
//    @Autowired
//    private CustomerRepository customerRepository;
//
//    @Override
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        // Attempt to find the user by username or email
//        Customer customer = customerRepository.findByEmail(username)
//            .orElseThrow(() -> new UsernameNotFoundException("User not found with email: " + username));
//
//        return new org.springframework.security.core.userdetails.User(customer.getUsername(), customer.getPassword(), customer.getRoles());
//    }
//}
