package com.visitafrica.tonga.services;

import com.visitafrica.tonga.model.Login;
import com.visitafrica.tonga.repo.LoginRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Optional;

@Service
public class LoginService  implements UserDetailsService {
    @Autowired
    private LoginRepository repository ;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Optional<Login> userOptional = Optional.ofNullable(repository.findByEmail(email));
        if (userOptional.isPresent()) {
            Login user = userOptional.get();
            return new org.springframework.security.core.userdetails.User(
                    user.getEmail(),
                    user.getPassword(),
                    Collections.singleton(new SimpleGrantedAuthority("USER")));
        } else {
            throw new UsernameNotFoundException("User not found");
        }
    }


}
