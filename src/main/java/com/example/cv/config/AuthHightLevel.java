package com.example.cv.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import java.util.Arrays;

@Configuration
@EnableWebSecurity
public class AuthHightLevel {

    @Bean
    protected PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }


    @Bean
    public InMemoryUserDetailsManager get() {
        UserDetails user = User.withUsername("test")
                .password(passwordEncoder().encode("test"))
                .roles("USER")
                .build();
        UserDetails admin = User.withUsername("admin")
                .password(passwordEncoder().encode("admin"))
                .roles("ADMIN")
                .build();
        return new InMemoryUserDetailsManager(Arrays.asList(user, admin));
    }
    @Bean

    protected SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/experience") // mają dostęp wszyscy użytkownicy z ROLE_USER
                .hasAnyAuthority("ROLE_USER","ROLE_ADMIN")
                .antMatchers("/")
                .permitAll()
                .and()
                .csrf().disable() // wyłączenie zabezpieczenia w celu użycia postmana
                .headers().frameOptions().disable()
                .and()
                .formLogin() // wskazujemy, że teraz będziemy konfigurować formularz autoryzacji
                .loginPage("/login") // wskazujemy adres url w którym mamy form login
                .usernameParameter("username")// nadajemy nazwę jaka będzie jako name w inpucie login formularza
                .passwordParameter("password")// nadajemy nazwę jaka będzie jako name w inpucie hasła formularza
                .loginProcessingUrl("/login")// adres na którym nastąpi przeprocesowanie
                .failureForwardUrl("/login?error") // co się stanie w momencie wpisania błędnych danych
                .defaultSuccessUrl("/") // co sięstanie w momencie prawidłowego wpisania loginu i hasła
                .and()
                .logout()// mówimy springowi, że przechodzimy do obdłużenia wylogowania
                .logoutSuccessUrl("/"); // gdzie mnie przekieruje jak prawidłowo się wyloguje
        return http.build();
    }
}