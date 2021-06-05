package com.codeup.adlister.dao;

import com.codeup.adlister.models.Admin;

import java.util.List;

public interface Admins {



    Admin findByUserId(int userId);

    int insert(Admin admin);
}