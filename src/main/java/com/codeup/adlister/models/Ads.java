package com.codeup.adlister.models;

public class Ads {
    private Integer id;
    private Integer users_id;
    private String title;
    private String description;
    private Integer genre_id;

    public Ads(Integer id, Integer userId, String title, String description, Integer genre_id) {
        this.id = id;
        this.users_id = users_id;
        this.title = title;
        this.description = description;
        this.genre_id = genre_id;
    }

    public Ads() {}

    public long getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public long getUserId() {
        return users_id;
    }

    public void setUsers_id(Integer users_id) {
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
