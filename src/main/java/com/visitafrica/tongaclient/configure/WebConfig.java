package com.visitafrica.tongaclient.configure;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Configuration
public class WebConfig implements WebMvcConfigurer {



    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
                .addResourceHandler("/images/**") // URL pattern to access the images
                .addResourceLocations("classpath:/images/"); // Location of the images directory
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new HandlerInterceptor() {
                    @Override
                    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
                        HttpSession session = request.getSession();
                        Boolean isLoggedIn = (Boolean) session.getAttribute("isLoggedIn");
                        if (isLoggedIn != null && isLoggedIn) {
                            return true;
                        } else {
                            response.sendRedirect("/login"); // redirect to login page
                            return false;
                        }
                    }
                })
                .excludePathPatterns("/login") // Exclude login endpoint from optional login
                .excludePathPatterns("/register")
                .excludePathPatterns("/registration")
                .excludePathPatterns("/")
                .excludePathPatterns("/welcome")
                .excludePathPatterns("/tour")
                .excludePathPatterns("/registration")
                .excludePathPatterns("/register")
                .excludePathPatterns("/country")
                .excludePathPatterns("/DetailTourView/{id}")
                .excludePathPatterns("/explorecountry/{country}")
                .excludePathPatterns("/getRating/{id}")
                .excludePathPatterns("/reviewtour")
                .excludePathPatterns("/bookTour/{id}")
                .excludePathPatterns("/submitRating");

        // Exclude signup endpoint from optional login
        // Add other endpoints to be excluded from optional login as needed
    }



}
