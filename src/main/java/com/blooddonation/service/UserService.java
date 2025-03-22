package com.blooddonation.service;


import com.blooddonation.entity.User;
import com.blooddonation.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public void registerUser(User user) {
        userRepository.save(user);
    }

    public User loginUser(String email, String password) {
        User user = userRepository.findByEmail(email);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }
    public String register(User user) {
        if (userRepository.existsByEmail(user.getEmail())) {
            return "Email already registered!";
        }
        userRepository.save(user);
        return "User Registered Successfully!";
    }
}
