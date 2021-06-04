package com.codeup.adlister.models;

public class Users {
    private int id;
    private String username;
    private String email;
    private String password;
    private Integer genres_id;
    private Integer user_images_id;

    public Users() {}

    public Users(String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public Users(int id, String username, String email, String password, Integer genres_id, Integer user_images_id) {
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

    public Integer getGenres_id(){return genres_id;}

    public void setGenres_id(Integer genres_id) { this.genres_id = genres_id; }

    public Integer getUser_image_id() { return user_images_id;}

    public void setUser_image(Integer user_images_id) { this.user_images_id = user_images_id;}
}
