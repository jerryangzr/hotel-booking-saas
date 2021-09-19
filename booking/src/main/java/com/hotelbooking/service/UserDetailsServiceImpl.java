package com.hotelbooking.service;

import com.hotelbooking.model.User;
import com.hotelbooking.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username)
            throws UsernameNotFoundException {
        User user = userRepository.getUserByUsername(username); // check the db username
        System.out.println("User's input: " + username);
        if (user == null) {
            System.out.println("Cannot find this shit user");
            throw new UsernameNotFoundException("Could not find user");
        }
        System.out.println("Their username is: " + user.getUsername());
        System.out.println("Their password is: " + user.getPassword());
        return new MyUserDetails(user);
    }
}
