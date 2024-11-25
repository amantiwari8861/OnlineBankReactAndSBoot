package com.bank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bank.model.entities.User;
import com.bank.payloads.JwtAuthRequest;
import com.bank.payloads.JwtAuthResponse;
import com.bank.security.jwt.JwtTokenHelper;

@RestController
@RequestMapping("/api/v1/auth/")
@CrossOrigin(value = "*")
public class LoginController {

	@Autowired
	private JwtTokenHelper jwtTokenHelper;
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@PostMapping("/login")
	public ResponseEntity<JwtAuthResponse> createToken(
			@RequestBody JwtAuthRequest request
			)
	{
		System.out.println(request);
		this.authenticate(request.getUsername(),request.getPassword());
		UserDetails loadUserByUsername = userDetailsService.loadUserByUsername(request.getUsername());
		String token = jwtTokenHelper.generateToken(loadUserByUsername);
		JwtAuthResponse jwtAuthResponse=new JwtAuthResponse();
		jwtAuthResponse.setToken(token);
		return new ResponseEntity<JwtAuthResponse>(jwtAuthResponse,HttpStatus.OK);
		
	}

	private void authenticate(String username, String password)  {
		
		UsernamePasswordAuthenticationToken authenticationToken=new UsernamePasswordAuthenticationToken(username, password);
		try 
		{
			authenticationManager.authenticate(authenticationToken);
		
		}
		catch(DisabledException d)
		{
			System.out.println(d.getMessage());
		}
	}

	@PostMapping("/signup")
	public ResponseEntity<String> signup(@RequestBody User user) {
		System.out.println("User is:"+user);
		return ResponseEntity.ok("signup succesfully!");
	}
}