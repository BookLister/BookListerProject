package com.codeup.adlister.dao;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<com.codeup.adlister.models.Ads> all();
    // insert a new ad and return the new ad's id
    Long insert(com.codeup.adlister.models.Ads ad);
}
