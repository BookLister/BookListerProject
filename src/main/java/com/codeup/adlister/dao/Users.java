package com.codeup.adlister.dao;

public interface Users {
    com.codeup.adlister.models.Users findByUsername(String username);
    Long insert(com.codeup.adlister.models.Users user);
}
