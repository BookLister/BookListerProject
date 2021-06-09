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



    //Display ALL ads
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

    //Display filtered ads by genre
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

    //Display a specific user's ads
    public List<Ad> userAds(int id) {
        PreparedStatement stmt;
        try {
            String userAdsQuery = "SELECT * FROM ads JOIN users ON ads.users_id = users.id WHERE ads.users_id = ?";
            stmt = connection.prepareStatement(userAdsQuery);
            stmt.setInt(1, id);
            System.out.println("id = " + id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving user's ads.", e);
        }
    }

    public boolean userAdsCheck(int id){
        PreparedStatement stmt;
        try{
            String userAdsQuery = "SELECT * FROM ads JOIN users ON ads.users_id = users.id WHERE ads.users_id = ?";
            stmt = connection.prepareStatement(userAdsQuery);
            stmt.setInt(1, id);
            System.out.println("id = " + id);
            boolean rs = stmt.execute();
            return rs;
        }catch(SQLException e){
            throw new RuntimeException("Error checking user's ads.", e);
        }
    }

    public void editAd(int genres_id,String title, double price, String conditions, String description, int id){
        PreparedStatement stmt;
        try{
            String editQuery = "UPDATE ads SET genres_id = ?, title = ?, price = ?, conditions = ?, description = ? WHERE id = ?";
            stmt = connection.prepareStatement(editQuery);
            stmt.setInt(1, genres_id);
            stmt.setString(2, title);
            stmt.setDouble(3, price);
            stmt.setString(4, conditions);
            stmt.setString(5, description);
            stmt.setInt(6, id);
            stmt.executeUpdate();
        }catch(SQLException e){
            throw new RuntimeException("Error editing ad", e);
        }
    }

    //DELETE functionality
    public int delete(int id) {
        PreparedStatement stmt;
        try {
            String deleteQuery = "DELETE FROM ads WHERE id = ?";
            stmt = connection.prepareStatement(deleteQuery);
            stmt.setInt(1, id);
            System.out.println("id = " + id);
            int rs = stmt.executeUpdate();
            return rs;
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting ad from database.", e);
        }
    }

    @Override
    public int insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(users_id, genres_id, title, price, description, conditions) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, ad.getUserId());
            stmt.setInt(2, ad.getGenre_id());
            stmt.setString(3, ad.getTitle());
            stmt.setDouble(4, ad.getPrice());
            stmt.setString(5, ad.getDescription());
            stmt.setString(6, ad.getCondition());
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
