// package com.bank.service;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.security.core.userdetails.UserDetails;
// import org.springframework.security.core.userdetails.UserDetailsService;
// import org.springframework.security.core.userdetails.UsernameNotFoundException;
// import org.springframework.stereotype.Service;

// import com.bank.model.entities.User;
// import com.bank.repository.CustomerRepository;

// @Service
// public class CustomUserDetailService implements UserDetailsService
// {
// 	@Autowired
// 	private CustomerRepository userRepo;
	
// 	@Override
// 	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

// 		User user = this.userRepo.findByEmail(username).orElseThrow(()->new IllegalArgumentException());
// 		return user;
// 	}
// }
