package com.bank.service;

import java.util.List;

import com.bank.model.entities.Admin;

public interface AdminService {
	public Admin saveAdmin(Admin Admin);
	public Admin updateAdmin(Admin Admin);
	public Boolean deleteAdmin(Long id);
	public Admin getAdminById(Long id);
	public List<Admin> getAllAdmins();
}
