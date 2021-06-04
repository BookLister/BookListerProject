package com.codeup.adlister.models;

public class User_images {
    private String image_url;

    public User_images() {}

    public User_images(String image_url){
        this.image_url = image_url;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }
}
