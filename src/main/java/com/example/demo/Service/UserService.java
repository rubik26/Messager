package com.example.demo.Service;

import com.example.demo.Service.interfaces.UserServiceInterface;
import com.example.demo.configuration.SpringSecurityConfig;
import com.example.demo.model.User;
import com.example.demo.repo.UserRepo;
import org.springframework.stereotype.Service;

@Service
public class UserService implements UserServiceInterface {


    private final UserRepo userRepository;

    private final SpringSecurityConfig springSecurityConfig;

    public UserService(UserRepo userRepository, SpringSecurityConfig springSecurityConfig) {
        this.userRepository = userRepository;
        this.springSecurityConfig = springSecurityConfig;
    }
    @Override
    public void createUser(User user) {
        user.setPassword(springSecurityConfig.passwordEncoder().encode(user.getPassword()));
        userRepository.save(user);
    }

    @Override
    public void deleteUser(User user) {
        userRepository.delete(user);
    }
}
