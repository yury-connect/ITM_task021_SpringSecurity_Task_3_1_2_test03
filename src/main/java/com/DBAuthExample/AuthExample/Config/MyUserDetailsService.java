package com.DBAuthExample.AuthExample.Config;

import com.DBAuthExample.AuthExample.Entity.User;
import com.DBAuthExample.AuthExample.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;


@Service
public class MyUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepo userRepo;


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> user = userRepo.findByName(username);

//        System.out.println("\n\n\t" + user + "\n\n"); // - это тот User. которого вытащили из базы

        return user.map(MyUserDetails::new)
                .orElseThrow(() -> new UsernameNotFoundException("There is no such user in REPO: " + username));
    }
}
