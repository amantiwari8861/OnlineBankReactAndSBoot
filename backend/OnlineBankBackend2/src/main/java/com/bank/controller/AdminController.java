package com.bank.controller;

import com.bank.model.entities.Admin;
import com.bank.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/admins")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @PostMapping
    public Admin createAdmin(@RequestBody Admin admin) {
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
