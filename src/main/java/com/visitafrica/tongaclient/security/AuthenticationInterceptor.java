package com.visitafrica.tongaclient.security;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Component
public class AuthenticationInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        if (session.getAttribute("user") != null) {
            // User is authenticated, allow the request to continue
            return true;
        } else {
            // User is not authenticated, redirect to login page
            response.sendRedirect("/login");
            return false;
        }
    }
}
