//package com.bank.service.impl;
//
//import java.util.List;
//import java.util.Optional;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.bank.exceptions.AccountDoesNotExistsException;
//import com.bank.exceptions.UserDoesNotExistsException;
//import com.bank.model.entities.Customer;
//import com.bank.repository.UserRepository;
//import com.bank.service.UserService;
//
//@Service
//public class UserServiceImpl implements UserService {
//
//    @Autowired
//    private UserRepository repository;
//
//    @Override
//    public Customer saveUser(Customer user) {
//        // Saving the customer to the repository
//        return repository.save(user);
//    }
//
//    @Override
//    public Customer updateUser(Customer user) {
//        // Updating the customer in the repository
//        return repository.save(user);
//    }
//
//    @Override
//    public Boolean deleteUser(Long id) {
//        // Fetching the user by ID and deleting it if exists
//        Customer user = getUserById(id);
//        repository.delete(user);
//        return true;
//    }
//
//    @Override
//    public Customer getUserById(Long id) {
//        // Fetching the user by ID, throwing exception if not found
//        Optional<Customer> optional = repository.findById(id);
//        if (optional.isPresent()) {
//            return optional.get();
//        }
//        throw new UserDoesNotExistsException("The User with id " + id + " does not exist");
//    }
//
//    @Override
//    public Customer getUserByAccountNumber(Long accountNumber) {
//        // Fetching the user by account number, throwing exception if not found
//        Optional<Customer> byAccountNumber = repository.findByAccountNumber(accountNumber);
//        if (byAccountNumber.isPresent()) {
//            return byAccountNumber.get();
//        }
//        throw new AccountDoesNotExistsException("Account Number " + accountNumber + " does not exist");
//    }
//
//    @Override
//    public List<Customer> getAllUsers() {
//        // Fetching all customers from the repository
//        return repository.findAll();
//    }
//}
