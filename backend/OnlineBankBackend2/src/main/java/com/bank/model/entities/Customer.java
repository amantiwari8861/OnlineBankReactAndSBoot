package com.bank.model.entities;

import java.time.LocalDate;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Past;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.Size;

@Entity
@Table
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull(message = "Username cannot be null")
	@Size(min = 3, max = 50, message = "Username must be between 3 and 50 characters")
	@Column(unique = true, nullable = false)
	private String username;

	@NotNull(message = "Password cannot be null")
	@Size(min = 6, message = "Password must be at least 6 characters long")
	@Column(nullable = false)
	private String password;

	@Email(message = "Email should be valid")
	private String email;

	@NotBlank(message = "First name is required")
	private String firstName;

	@NotBlank(message = "Last name is required")
	private String lastName;

	@Pattern(regexp = "\\d{10}", message = "Phone number must be 10 digits")
	private String phoneNumber;

	private String address;

	@Past(message = "Date of birth must be in the past")
	private LocalDate dateOfBirth;

	@NotBlank(message = "Account type is required")
	private String accountType;

	@Positive(message = "Account number must be a positive number")
	private long accountNumber;

	@JsonIgnore
	@OneToMany(mappedBy = "customer") // 'customer' is the field in the Transaction class
	private Set<Transaction> transactions;

	private boolean isAccountNonExpired = true;
	private boolean isAccountNonLocked = true;
	private boolean isCredentialsNonExpired = true;
	private boolean isEnabled = true;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}

	public Set<Transaction> getTransactions() {
		return transactions;
	}

	public void setTransactions(Set<Transaction> transactions) {
		this.transactions = transactions;
	}

	public boolean isAccountNonExpired() {
		return isAccountNonExpired;
	}

	public void setAccountNonExpired(boolean isAccountNonExpired) {
		this.isAccountNonExpired = isAccountNonExpired;
	}

	public boolean isAccountNonLocked() {
		return isAccountNonLocked;
	}

	public void setAccountNonLocked(boolean isAccountNonLocked) {
		this.isAccountNonLocked = isAccountNonLocked;
	}

	public boolean isCredentialsNonExpired() {
		return isCredentialsNonExpired;
	}

	public void setCredentialsNonExpired(boolean isCredentialsNonExpired) {
		this.isCredentialsNonExpired = isCredentialsNonExpired;
	}

	public boolean isEnabled() {
		return isEnabled;
	}

	public void setEnabled(boolean isEnabled) {
		this.isEnabled = isEnabled;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", isAccountNonExpired=" + isAccountNonExpired + ", isAccountNonLocked=" + isAccountNonLocked
				+ ", isCredentialsNonExpired=" + isCredentialsNonExpired + ", isEnabled=" + isEnabled + ", firstName="
				+ firstName + ", lastName=" + lastName + ", phoneNumber=" + phoneNumber + ", address=" + address
				+ ", dateOfBirth=" + dateOfBirth + ", accountType=" + accountType + ", accountNumber=" + accountNumber
				+ ", transactions=" + transactions + "]";
	}
}
