package com.learnspring.nexusacademy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories("com.learnspring.nexusacademy.repository")
@EntityScan("com.learnspring.nexusacademy.model")
@EnableJpaAuditing(auditorAwareRef = "auditAwareImpl")
public class NexusAcademyApplication {

	public static void main(String[] args) {
		SpringApplication.run(NexusAcademyApplication.class, args);
	}

}



