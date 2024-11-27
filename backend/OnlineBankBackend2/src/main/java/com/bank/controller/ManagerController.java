package com.bank.controller;

import com.bank.model.entities.Manager;
import com.bank.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
