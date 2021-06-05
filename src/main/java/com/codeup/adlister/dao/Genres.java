package com.codeup.adlister.dao;

import com.codeup.adlister.models.Genre;

import java.util.List;

public interface Genres {

    List<Genre> all();

    int insert(Genre genre);

}
