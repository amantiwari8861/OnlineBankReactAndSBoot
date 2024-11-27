package com.bank.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bank.model.entities.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin,Integer>
{
	Optional<Admin> findById(Long id);
}
