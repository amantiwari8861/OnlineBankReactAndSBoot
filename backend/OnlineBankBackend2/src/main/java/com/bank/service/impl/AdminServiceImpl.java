package com.bank.service.impl;

import com.bank.model.entities.Admin;
import com.bank.repository.AdminRepository;
import com.bank.repository.RoleRepository;
import com.bank.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;


@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminRepository adminRepository;
    @Autowired
    private RoleRepository roleRepository;


    @Override
    public Admin saveAdmin(Admin admin) {
        admin.setRoles(roleRepository.saveAll(admin.getRoles()).stream().collect(Collectors.toSet()));
        return adminRepository.save(admin);
    }

    @Override
    public Admin updateAdmin(Admin admin) {
        return adminRepository.save(admin);
    }

    @Override
    public Boolean deleteAdmin(Long id) {
        Optional<Admin> admin = adminRepository.findById(id);
        if (admin.isPresent()) {
            adminRepository.delete(admin.get());
            return true;
        }
        return false;
    }

    @Override
    public Admin getAdminById(Long id) {
        return adminRepository.findById(id).orElse(null);
    }

    @Override
    public List<Admin> getAllAdmins() {
        return adminRepository.findAll();
    }
}
