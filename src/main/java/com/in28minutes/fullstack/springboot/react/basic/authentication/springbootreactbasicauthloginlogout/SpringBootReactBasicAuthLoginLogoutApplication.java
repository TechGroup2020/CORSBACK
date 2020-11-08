package com.in28minutes.fullstack.springboot.react.basic.authentication.springbootreactbasicauthloginlogout;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class SpringBootReactBasicAuthLoginLogoutApplication extends SpringBootServletInitializer  {
	
	@Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(SpringBootReactBasicAuthLoginLogoutApplication.class);
	  }

	public static void main(String[] args) {
		SpringApplication.run(SpringBootReactBasicAuthLoginLogoutApplication.class, args);
	}

}
