package com.example.user1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan(basePackages = "com.example.user1.entity")
public class User1Application {

	public static void main(String[] args) {
		SpringApplication.run(User1Application.class, args);
	}

}