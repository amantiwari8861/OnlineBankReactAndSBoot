// package com.bank.controller;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.RestController;

// import com.bank.service.UServiceNew;
// import com.bank.service.UserService;


// @RestController
// public class MainController {
    
//     @Autowired
//     private UserService userService;
//     @Autowired
//     private UServiceNew uService;

//     @GetMapping("/")
//     public String index() {
//         return "<h1>backend deployed succesfully!</h1>";
//     }
    
//     // @PostMapping("/signup")
//     // public ResponseEntity<String> signup(@RequestBody Map<String, Object> requestBody) {
//     //     System.out.println(requestBody);
//     //     Role role=new Role();
//     //     role.setRoleName("ROLE_ADMIN");
//     //     User u=new User();
//     //     u.setRoles(Set.of(role));
//     //     u.setName("aman");
//     //     u.setEmail("amantiwari8861@gmail.com");
//     //     u.setPassword("1234");
//     //     uService.saveUser(u);
//     //     return ResponseEntity.ok("");
//     // }
//     @Autowired
//     private UserService userService;
//     @GetMapping("/")
//     public String sayHii()
//     {
//         return "Welcome to our Website!";
//     }
//     @GetMapping("/api/unprotected")
//     public String sayHi()
//     {
//         return "hello i am un protected";
//     }
//     @GetMapping("/api/protected")
//     public String sayH()
//     {
//         return "hello i am protected";
//     }

//     @PostMapping("/api/unprotected/adduser")
//     public ResponseEntity<User> addUser(@RequestBody User user)
//     {
//         User newUser=userService.addUser(user);
//         return ResponseEntity.accepted().body(newUser);
//     }
// }
