package com.bank.service;

import java.util.List;

import com.bank.model.entities.User;

public interface UServiceNew {
    public User saveUser(User user);
	public User updateUser(User user);
	public Boolean deleteUser(Long id);
	public User getUserById(Long id);
	public List<User> getAllUsers();
   
}
