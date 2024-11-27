// Employee
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
public class Employee extends User {

    private String department;
    private String employeeId;
    private LocalDate hireDate;
    private String role;
}
