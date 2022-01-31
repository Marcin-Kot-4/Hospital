package com.kk.hospitalapp.config;

import com.kk.hospitalapp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserService userService; // nadal p?

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userService);
        authProvider.setPasswordEncoder(passwordEncoder());
        return authProvider;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationProvider());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/").hasAnyAuthority("USER", "DOCTOR", "ADMIN")
                .antMatchers("/patient" +
                        "").hasAnyAuthority("USER")
                .antMatchers("/wardList").hasAnyAuthority("USER")
                .antMatchers("/freeTerms").hasAnyAuthority("USER")
                .antMatchers("/patientCancelVisit").hasAnyAuthority("USER")
                .antMatchers("/prescriptionList").hasAnyAuthority("USER")
                .antMatchers("/eprescription").hasAnyAuthority("USER")
                .antMatchers("/referralList").hasAnyAuthority("USER")
                .antMatchers("/ereferral").hasAnyAuthority("USER")
                .antMatchers("/doctor").hasAnyAuthority("ADMIN")
                .antMatchers("/doctorCancelVisit").hasAnyAuthority("ADMIN")
                .antMatchers("/enterPesel").hasAnyAuthority("ADMIN")
                .antMatchers("/medicalHistory").hasAnyAuthority("ADMIN")
                .antMatchers("/historyEntry").hasAnyAuthority("ADMIN")
                .antMatchers("/issuePrescription").hasAnyAuthority("ADMIN")
                .antMatchers("/issueReferral").hasAnyAuthority("ADMIN")
                .antMatchers(
                        "/loginn",
                "/registration**",
                "/aboutUs**",
                "/test**",
                "/js/**",
                "/css/**",
                "/images/**").permitAll()
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/login")
                .defaultSuccessUrl("/success", true)
                .permitAll()
                .and()
                .logout()
                .invalidateHttpSession(true)
                .clearAuthentication(true)
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/login?logout")
                .permitAll()
                .and()
                .exceptionHandling().accessDeniedPage("/403");

        http.csrf().disable();
        http.headers().frameOptions().disable();
    }
}
