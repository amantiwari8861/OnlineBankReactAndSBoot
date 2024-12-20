package com.bank.service;

import java.util.List;

import com.bank.model.entities.Manager;

public interface ManagerService {
	public Manager saveManager(Manager user);

	public Manager updateManager(Manager user);

	public Boolean deleteManager(Long id);

	public Manager getManagerById(Long id);

	public List<Manager> getAllManagers();

	public Manager getManagerByEmail(String username);
}
