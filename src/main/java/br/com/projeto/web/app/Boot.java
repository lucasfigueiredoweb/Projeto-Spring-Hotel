package br.com.projeto.web.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "br.com.projeto.web.controllers")
public class Boot {

	public static void main(String[] args) {
		SpringApplication.run(Boot.class, args);
	}
}
