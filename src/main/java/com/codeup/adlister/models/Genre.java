package com.codeup.adlister.models;

public class Genre {
    private int id;
    private String genre;

    public Genre() {}

    public Genre(int id, String genre){
        this.genre = genre;
        this.id = id;
    }

    public Genre(String genre) {
        this.genre = genre;
    }

    public String getGenre() {
        return genre;
    }

    public int getId(){
        return id;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
}
