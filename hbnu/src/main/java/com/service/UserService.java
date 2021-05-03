package com.service;

import com.entity.User;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
    public User login(String number, String password);
}
