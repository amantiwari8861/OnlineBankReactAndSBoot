package com.bank.model.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Role {

    @Id
    private Long id;

    private String name;

    // Many-to-many relationship with admins
    @JsonIgnore
    @ManyToMany(mappedBy = "roles")
    private Set<Admin> admins;

    @Override
    public String toString() {
        return "Role [id=" + id + ", name=" + name + "]";
    }   
}
