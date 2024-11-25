package com.bank.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
// import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.bank.security.jwt.JwtAuthenticationEntryPoint;
import com.bank.security.jwt.JwtAuthenticationFilter;
import com.bank.service.CustomUserDetailService;

//@SuppressWarnings("deprecation")
//@Configuration
//@EnableWebSecurity
//@EnableGlobalMethodSecurity(prePostEnabled = true)
//public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
//	@Autowired
//	private CustomUserDetailService customUserService;
//
//	@Autowired
//	private JwtAuthenticationEntryPoint jwtAuthenticationEntryPoint;
//
//	@Autowired
//	private JwtAuthenticationFilter jwtAuthenticationFilter;
//
//	@Override
//	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth.userDetailsService(customUserService).passwordEncoder(passwordEncoderNew());
//	}
//
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		http
//				.csrf()
//				.disable()
//				.authorizeHttpRequests()
//				.antMatchers(new String[] { "/api/v1/auth/login","/" ,"/api/v1/auth/signup"}).permitAll()
//				// .antMatchers(HttpMethod.GET).permitAll()
//				.anyRequest()
//				.authenticated()
//				.and()
//				.exceptionHandling()
//				.authenticationEntryPoint(this.jwtAuthenticationEntryPoint)
//				.and()
//				.sessionManagement()
//				.sessionCreationPolicy(SessionCreationPolicy.STATELESS);
//
//		http.addFilterBefore(this.jwtAuthenticationFilter, UsernamePasswordAuthenticationFilter.class);
//	}
//
//	// @Bean
//	// public static NoOpPasswordEncoder passwordEncoder()
//	// {
//	// return (NoOpPasswordEncoder) NoOpPasswordEncoder.getInstance();
//	// }
//
//	@Bean
//	PasswordEncoder passwordEncoderNew() {
//		return new BCryptPasswordEncoder();
//	}
//
//	@Bean
//	@Override
//	public AuthenticationManager authenticationManagerBean() throws Exception {
//		return super.authenticationManagerBean();
//	}
//
//}









@Configuration
@EnableWebSecurity
public class Security6Config
{
    @Autowired
    private UserService userService;
    public static final String[] PUBLIC_URLS = {"/api/unprotected","/","/api/unprotected/adduser"};

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {

//        http
//                .csrf(AbstractHttpConfigurer::disable)
//                .authorizeHttpRequests(req-> req
//                        .requestMatchers(PUBLIC_URLS).permitAll()
//                        .anyRequest().authenticated());
        http
                .csrf(AbstractHttpConfigurer::disable)
                .authorizeHttpRequests(req-> req
                        .requestMatchers(PUBLIC_URLS).permitAll()
                        .anyRequest().authenticated())
                .userDetailsService(userService)
                .sessionManagement(session->session
                        .sessionCreationPolicy(SessionCreationPolicy.STATELESS))
                .httpBasic(Customizer.withDefaults());
        return http.build();
    }
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
//    public NoOpPasswordEncoder passwordEncoder() {
//        return (NoOpPasswordEncoder) NoOpPasswordEncoder.getInstance();
//    }

    @Bean
    public DaoAuthenticationProvider daoAuthenticationProvider()
    {
        DaoAuthenticationProvider daoAuthenticationProvider=new DaoAuthenticationProvider();
        daoAuthenticationProvider.setUserDetailsService(userService);
        daoAuthenticationProvider.setPasswordEncoder(passwordEncoder());
        return  daoAuthenticationProvider;
    }

}
/*
        // List<GrantedAuthority> authorities=roles.stream()
        // .map(r->new SimpleGrantedAuthority(r.getRoleName()))
        // .collect(Collectors.toList());

        List<GrantedAuthority> authorities = Arrays.asList(roles.split(",")).stream()
                .map(r -> new SimpleGrantedAuthority(r))
                .collect(Collectors.toList());
 */