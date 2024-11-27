package com.bank.model.entities;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

// import org.springframework.security.core.GrantedAuthority;
// import org.springframework.security.core.authority.SimpleGrantedAuthority;
// import org.springframework.security.core.userdetails.UserDetails;

import jakarta.persistence.Column;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.MappedSuperclass;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@MappedSuperclass
// public abstract class User implements UserDetails
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public abstract class User
{
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	@Column(unique = true,nullable = false)
    String username;
    @Column(nullable = false)
    String password;    private String email;
    @Column(columnDefinition = "boolean default true")
    private boolean isAccountNonExpired = true;
    @Column(columnDefinition = "boolean default true")
    private boolean isAccountNonLocked = true;
    @Column(columnDefinition = "boolean default true")
    private boolean isCredentialNonExpired = true;
    @Column(columnDefinition = "boolean default true")
    private boolean isUserNonEnabled = true;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
        name = "user_roles",
        joinColumns = @JoinColumn(name = "user_id"),
        inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles = new HashSet<>();
//     @Override
//     public Collection<? extends GrantedAuthority> getAuthorities() {
// //        return roles;
//     	// SimpleGrantedAuthority authority = new SimpleGrantedAuthority(getRoles());
//     	SimpleGrantedAuthority authority = new SimpleGrantedAuthority("ADMIN");
//         return Arrays.asList(authority);
//     }

//     @Override
//     public String getPassword() {
//         return password;
//     }

//     @Override
//     public String getUsername() {
//         return username;
//     }

//     @Override
//     public boolean isAccountNonExpired() {
//         return true; // Implement according to your logic
//     }

//     @Override
//     public boolean isAccountNonLocked() {
//         return true; // Implement according to your logic
//     }
//     @Override
//     public boolean isCredentialsNonExpired() {
//         return isCredentialNonExpired;
//     }

//     @Override
//     public boolean isEnabled() {
//         return isUserNonEnabled;
//     }

    public Set<Role> getRoles() {
        return roles;
    }
}
