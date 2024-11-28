package com.bank.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bank.model.entities.Admin;
import com.bank.model.entities.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {
	Optional<Role> findById(Long id);
}
