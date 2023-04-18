package com.visitafrica.tongaclient.security;

import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Component
public class OptionalLoginInterceptor implements HandlerInterceptor {

    private List<String> permittedPaths = new ArrayList<>(); // List to store permitted paths
    public OptionalLoginInterceptor() {
        // Add paths that should allow access without authentication
        permittedPaths.add("/login");
        permittedPaths.add("/register");
        permittedPaths.add("/registration");
        permittedPaths.add("/");
        permittedPaths.add("/welcome");
        // Add other paths as needed
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (handler instanceof HandlerMethod) {
            HandlerMethod handlerMethod = (HandlerMethod) handler;
            OptionalLogin optionalLoginAnnotation = handlerMethod.getMethodAnnotation(OptionalLogin.class);
            if (optionalLoginAnnotation != null || isAuthenticated(request) || isPermittedPath(request)) {
                // Allow access without authentication or if user is authenticated or if it's a permitted path

                return true;
            }
        }
        // Redirect to login page or handle authentication logic as needed
        // For example:
        response.sendRedirect("/login");
        return false;
    }

    // Helper method to check if user is authenticated
    private boolean isAuthenticated(HttpServletRequest request) {
        // Implement your authentication logic here
        // For example, you can check if the user is logged in by checking session, token, etc.
        // Return true if user is authenticated, false otherwise
        return false; // Replace with your authentication logic
    }

    // Helper method to check if the requested path is permitted
    private boolean isPermittedPath(HttpServletRequest request) {
        // Implement your logic to check if the requested path is permitted
        // For example, you can check if the requested path is in the permittedPaths list
        // Return true if the path is permitted, false otherwise
        String requestedPath = request.getRequestURI();
        return permittedPaths.contains(requestedPath); // Check if requested path is in permittedPaths list
    }

    // Method to add paths to permittedPaths list after login
    public void addPermittedPath(String path) {
        permittedPaths.add(path);
    }

    // Method to remove paths from permittedPaths list after logout
    public void removePermittedPath(String path) {
        permittedPaths.remove(path);
    }

    // Other methods from HandlerInterceptor interface
}
