package com.codeup.adlister.models;

public class User {
    private int id;
    private String username;
    private String email;
    private String password;
    private int genres_id;
    private int user_images_id;

    public User() {}

    public User(String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public User(int id, String username, String email, String password, int genres_id, int user_images_id) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.genres_id = genres_id;
        this.user_images_id = user_images_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getGenres_id(){return genres_id;}

    public void setGenres_id(int genres_id) { this.genres_id = genres_id; }

    public int getUser_image_id() { return user_images_id;}

    public void setUser_image(Integer user_images_id) { this.user_images_id = user_images_id;}
}
