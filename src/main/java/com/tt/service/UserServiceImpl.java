package com.tt.service;

import org.springframework.stereotype.Service;

import com.tt.vo.User;

import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    @Override
    public void login(String id, String password) {

    }

    @Override
    public void registerUser(User user) {

    }

    @Override
    public Map<String, Object> getUserDetail(String id) {
        return null;
    }
}
