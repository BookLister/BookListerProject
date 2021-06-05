package com.codeup.adlister.models;

public class User_image {
    private String image_url;

    public User_image() {}

    public User_image(String image_url){
        this.image_url = image_url;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }
}
