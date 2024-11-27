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

import com.bank.model.entities.Manager;
import com.bank.service.ManagerService;

@RestController
@RequestMapping("/api/v1/managers")
public class ManagerController {

    @Autowired
    private ManagerService managerService;

    @PostMapping
    public Manager createManager(@RequestBody Manager manager) {
        return managerService.saveManager(manager);
    }

    @PutMapping("/{id}")
    public Manager updateManager(@PathVariable Long id, @RequestBody Manager manager) {
        manager.setId(id);
        return managerService.updateManager(manager);
    }

    @DeleteMapping("/{id}")
    public boolean deleteManager(@PathVariable Long id) {
        return managerService.deleteManager(id);
    }

    @GetMapping("/{id}")
    public Manager getManager(@PathVariable Long id) {
        return managerService.getManagerById(id);
    }

    @GetMapping
    public List<Manager> getAllManagers() {
        return managerService.getAllManagers();
    }
}
