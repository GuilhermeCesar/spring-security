package com.eazybytes;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//@EnableWebSecurity
//@EntityScan("com.easybytes.springsecsection4.model")
//@EnableJpaRepositories("com.easybytes.springsecsection4.repository")
public class EasyBankBackendApplication {

    public static void main(String[] args) {
        SpringApplication.run(EasyBankBackendApplication.class, args);
    }


}
