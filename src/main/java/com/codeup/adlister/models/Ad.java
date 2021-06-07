package com.codeup.adlister.models;

public class Ad {
    private int id;
    private int user_id;
    private int genre_id;
    private String title;
    private double price;
    private String description;
    private String summary;


    public Ad() {}

    public Ad(int id, int user_id, int genre_id, String title, double price, String description, String summary) {
        this.id = id;
        this.user_id = user_id;
        this.genre_id = genre_id;
        this.title = title;
        this.price = price;
        this.description = description;
        this.summary = summary;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public int getGenre_id(){
        return genre_id;
    }

    public void setGenre_id(int genres_id){
        this.genre_id = genre_id;
    }
}
