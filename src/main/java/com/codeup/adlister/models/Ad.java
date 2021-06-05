package com.codeup.adlister.models;

public class Ad {
    private int id;
    private int user_id;
    private String title;
    private String description;
    private int genre_id;



    public Ad() {}

    public Ad(int id, int user_id, int genre_id, String title, String description) {
        this.id = id;
        this.user_id = user_id;
        this.genre_id = genre_id;
        this.title = title;
        this.description = description;
    }

    public Ad(int user_id, int genre_id, String title, String description) {
        this.user_id = user_id;
        this.genre_id = genre_id;
        this.title = title;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
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

    public int getGenre_id(){
        return genre_id;
    }

    public void setGenre_id(int genres_id){
        this.genre_id = genre_id;
    }
}
