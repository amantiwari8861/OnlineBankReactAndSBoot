package com.bank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bank.model.entities.Admin;
import com.bank.service.AdminService;

@RestController
@RequestMapping("/api/v1/admins")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @PostMapping
    public Admin createAdmin(@RequestBody Admin admin) {
        System.out.println(""+admin);
        return adminService.saveAdmin(admin);
    }

    @PutMapping("/{id}")
    public Admin updateAdmin(@PathVariable Long id, @RequestBody Admin admin) {
        admin.setId(id);
        return adminService.updateAdmin(admin);
    }

    @DeleteMapping("/{id}")
    public boolean deleteAdmin(@PathVariable Long id) {
        return adminService.deleteAdmin(id);
    }

    @GetMapping("/{id}")
    public Admin getAdmin(@PathVariable Long id) {
        return adminService.getAdminById(id);
    }

    @GetMapping
    public List<Admin> getAllAdmins() {
        return adminService.getAllAdmins();
    }
}
