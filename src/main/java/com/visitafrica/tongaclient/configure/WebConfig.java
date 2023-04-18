package com.visitafrica.tongaclient.configure;

import com.visitafrica.tongaclient.security.OptionalLoginInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
    @Autowired
    private OptionalLoginInterceptor optionalLoginInterceptor;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
                .addResourceHandler("/images/**") // URL pattern to access the images
                .addResourceLocations("classpath:/images/"); // Location of the images directory
    }
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(optionalLoginInterceptor)
                .excludePathPatterns("/login") // Exclude login endpoint from optional login
                .excludePathPatterns("/register")
                .excludePathPatterns("/registration")
                .excludePathPatterns("/welcome")
                .excludePathPatterns("/")
                .excludePathPatterns("/country")
                .excludePathPatterns("/DetailTourView/{id}")
                .excludePathPatterns("/explorecountry/{id}")
                .excludePathPatterns("/images/**")
                .excludePathPatterns("classpath:/images/"); // Exclude signup endpoint from optional login
        // Add other endpoints to be excluded from optional login as needed
    }

}
