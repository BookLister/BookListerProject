package com.codeup.adlister.models;

public class Ad {
    private int id;
    private int users_id;
    private String title;
    private String description;
    private int genre_id;

    public Ad(int id, String title, String description) {
        this.id = id;
        this.title = title;
        this.description = description;
    }

    public Ad() {}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return users_id;
    }

    public void setUsers_id(int users_id) {
        this.users_id = users_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getGenre_id(){return genre_id;}

    public void setGenre_id(Integer genre_id){ this.genre_id = genre_id;}
}
