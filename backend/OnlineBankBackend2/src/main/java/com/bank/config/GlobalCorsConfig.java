package com.bank.config;

import java.util.Arrays;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

@Configuration
public class GlobalCorsConfig {
    @Bean
    public CorsFilter corsFilter() {
        CorsConfiguration config = new CorsConfiguration();
        config.setAllowedOrigins(Arrays.asList("http://localhost:3000", "http://localhost:5173/", "http://localhost:4200")); // Allowed origins
        config.setAllowedMethods(Arrays.asList("GET", "POST", "PUT", "DELETE", "OPTIONS")); // Allowed methods
        config.setAllowedHeaders(Arrays.asList("Authorization", "Content-Type")); // Allowed headers
        config.setExposedHeaders(Arrays.asList("Authorization")); // Headers exposed to the client
        config.setAllowCredentials(true); // Allow cookies

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", config); // Apply to all endpoint

        return new CorsFilter(source);
    }
}
