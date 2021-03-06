package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    // insert a new ad and return the new ad's id
    int insert(Ad ad);

    List<Ad> filterAds(String filterTerm, String searchTerm);

    List<Ad> userAds(int id);

    public int delete(int id);

    public boolean userAdsCheck(int id);

    public void editAd(int genres_id, String title, double price, String conditions, String description, int id);
}