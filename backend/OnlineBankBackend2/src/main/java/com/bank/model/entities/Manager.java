// Manager
package com.bank.model.entities;

import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.time.LocalDate;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Manager extends User {

    private String teamName;
    private String officeLocation;
    private LocalDate hireDate;
    private String department;
}
