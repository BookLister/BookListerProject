package com.codeup.adlister.models;

public class Ad {
    public int id;
    public int users_id;
    public int genres_id;
    public String title;
    public double price;
    public String description;
    public String condition;
    public String summary;
    public String image_url;


    public Ad() {}

    public Ad(int id, int user_id, int genre_id, String title, double price, String description, String summary) {
        this.id = id;
        this.users_id = user_id;
        this.genres_id = genre_id;
        this.title = title;
        this.price = price;
        this.description = description;
        this.summary = summary;
    }

    public Ad(int user_id, int genre_id, String title, double price, String description, String condition, String summary, String image_url) {
        this.users_id = user_id;
        this.genres_id = genre_id;
        this.title = title;
        this.price = price;
        this.description = description;
        this.condition = condition;
        this.summary = summary;
        this.image_url = image_url;
    }

    public Ad(int user_id, int genre_id, String title, double price, String description, String condition) {
        this.users_id = user_id;
        this.genres_id = genre_id;
        this.title = title;
        this.price = price;
        this.description = description;
        this.condition = condition;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return users_id;
    }

    public void setUser_id(int user_id) {
        this.users_id = user_id;
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
        return genres_id;
    }

    public void setGenre_id(int genres_id){
        this.genres_id = genres_id;
    }

    public String getCondition(){
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }
}
