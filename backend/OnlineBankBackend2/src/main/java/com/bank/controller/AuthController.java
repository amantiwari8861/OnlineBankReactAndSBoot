package com.bank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.bank.model.entities.Admin;
import com.bank.model.entities.Customer;
import com.bank.model.entities.Employee;
import com.bank.model.entities.Manager;
import com.bank.model.ApiResponse;
import com.bank.model.LoginRequest;
import com.bank.service.AdminService;
import com.bank.service.CustomerService;
import com.bank.service.EmployeeService;
import com.bank.service.ManagerService;

@RestController
@RequestMapping("/api/v1/auth")
public class AuthController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private ManagerService managerService;

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private CustomerService customerService;

    @PostMapping("/login")
    public ResponseEntity<ApiResponse<?>> login(@RequestBody LoginRequest loginRequest) {
        System.out.println(loginRequest);
        String username = loginRequest.getEmail().trim();
        String role = "ROLE_" + loginRequest.getRole().trim().toUpperCase();
        String password = loginRequest.getPassword().trim();

        // Check role and perform login
        switch (role) {
            case "ROLE_ADMIN":
                Admin admin = adminService.getAdminByEmail(username);
                if (admin != null && admin.getPassword().equals(password)) {
                    return ResponseEntity
                            .ok(new ApiResponse<>(HttpStatus.OK.value(), "Admin login successful", true, admin));
                }
                break;

            case "ROLE_MANAGER":
                Manager manager = managerService.getManagerByEmail(username);
                if (manager != null && manager.getPassword().equals(password)) {
                    return ResponseEntity
                            .ok(new ApiResponse<>(HttpStatus.OK.value(), "Manager login successful", true, manager));
                }
                break;

            case "ROLE_EMPLOYEE":
                Employee employee = employeeService.getEmployeeByEmail(username);
                if (employee != null && employee.getPassword().equals(password)) {
                    return ResponseEntity
                            .ok(new ApiResponse<>(HttpStatus.OK.value(), "Employee login successful", true, employee));
                }
                break;

            case "ROLE_CUSTOMER":
                Customer customer = customerService.getCustomerByEmail(username);
                System.out.println(customer);
                if (customer != null && customer.getPassword().equals(password)) {
                    return ResponseEntity
                            .ok(new ApiResponse<>(HttpStatus.OK.value(), "Customer login successful", true, customer));
                }
                break;

            default:
                return new ResponseEntity<>(
                        new ApiResponse<>(HttpStatus.BAD_REQUEST.value(), "Invalid role", false, null),
                        HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(
                new ApiResponse<>(HttpStatus.UNAUTHORIZED.value(), "Invalid username or password", false, null),
                HttpStatus.UNAUTHORIZED);
    }
}