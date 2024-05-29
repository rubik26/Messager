package com.example.demo.Service.interfaces;

import com.example.demo.model.Message;
import com.example.demo.model.User;

import java.util.List;

public interface UserServiceInterface {
    void createUser(User user);
    void deleteUser(User user);
}
