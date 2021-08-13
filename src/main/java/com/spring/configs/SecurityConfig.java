package com.spring.configs;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


import com.spring.securityAuth.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Bean
    public UserDetailsService userDetailsService() {
        return new UserDetailsServiceImpl();
    }
	
	@Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
	
	
	@Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService()).passwordEncoder(passwordEncoder());
        auth.inMemoryAuthentication()
        .withUser("admin").password(passwordEncoder().encode("Lithan123")).roles("ADMIN");
        
    }


	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http
		 	.formLogin()
		 		.loginPage("/login")
		 		.loginProcessingUrl("/login")
		 		.failureUrl("/login_error")
		 		.permitAll()
		 		.defaultSuccessUrl("/logged", true)
		 		.and().csrf()
                .and()
                .authorizeRequests()
                .and();
		
		
	}
	
	
}	

