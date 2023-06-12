package com.ASM.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.ASM.service.AuthInterceptor;
//import com.Lab7.service.AuthInterceptor;
import com.ASM.service.GlobalInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

	@Autowired
	GlobalInterceptor global;

	@Autowired
	AuthInterceptor auth;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// TODO Auto-generated method stub
		registry.addInterceptor(global).addPathPatterns("/**").excludePathPatterns("/assets/**");

		registry.addInterceptor(auth).addPathPatterns("/account/**", "/admin/**").excludePathPatterns("/assets/**",
				"/admin/index");
	}
}
