package pl.rafals.pogodynka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableAutoConfiguration
public class PogodynkaApplication {

	public static void main(String[] args) {
		SpringApplication.run(PogodynkaApplication.class, args);
	}
}
