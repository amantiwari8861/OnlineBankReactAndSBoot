package com.bank.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
@CrossOrigin(value = "*")
public class RegisterController {
    
    @PostMapping("/api/v1/register")
    public String register(@RequestBody String entity) {
        //TODO: process POST request
        
        return entity;
    }
    
}
