package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }



    @Override
    public List<Ad> all() {
        PreparedStatement stmt;
        try {
            stmt = connection.prepareStatement("SELECT *, genre FROM ads JOIN genres ON ads.genres_id = genres.id");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    // Search functionality
    public List<Ad> searchAds(String searchTerm) {
        PreparedStatement stmt;
        try {
            String searchQuery = "SELECT * FROM ads WHERE title LIKE ?";
            String searchTermWithWildcards = "%" + searchTerm + "%";
            stmt = connection.prepareStatement(searchQuery);
            stmt.setString(1, searchTermWithWildcards);
            System.out.println("stmt = " + stmt);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving searched ads.", e);
        }
    }

    public List<Ad> filterAds(String filter) {
        PreparedStatement stmt;
        try {
            String filterQuery = "SELECT * FROM ads JOIN genres ON ads.genres_id = genres.id WHERE ads.genres_id = ?";
            stmt = connection.prepareStatement(filterQuery);
            stmt.setString(1, filter);
            System.out.println("stmt = " + stmt);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving filtered ads.", e);
        }
    }

    @Override
    public int insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(users_id, genres_id, title, price, description, summary) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, ad.getUserId());
            stmt.setInt(2, ad.getGenre_id());
            stmt.setString(3, ad.getTitle());
            stmt.setDouble(4, ad.getPrice());
            stmt.setString(5, ad.getDescription());
            stmt.setString(6, ad.getSummary());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getInt(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getInt("id"),
            rs.getInt("users_id"),
            rs.getInt("genres_id"),
            rs.getString("title"),
            rs.getDouble("price"),
            rs.getString("description"),
            rs.getString("summary")

        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
}
