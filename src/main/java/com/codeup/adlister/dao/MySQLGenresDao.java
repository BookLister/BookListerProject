package com.codeup.adlister.dao;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import com.codeup.adlister.models.Genre;
import com.mysql.cj.jdbc.Driver;

public class MySQLGenresDao implements Genres{
    private Connection connection;

    public MySQLGenresDao(Config config){
        try{
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    @Override
    public List<Genre> all() {
        PreparedStatement stmt;
        try{
            stmt = connection.prepareStatement("SELECT * FROM genres");
            ResultSet rs = stmt.executeQuery();
            return createGenresFromResults(rs);
        }catch(SQLException e){
            throw new RuntimeException("Error retrieving all genres.", e);
        }
    }

    @Override
    public int insert(Genre genre) {
        try {
            String insertQuery = "INSERT INTO genres(id, genre) VALUES (?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, genre.getId());
            stmt.setString(2, genre.getGenre());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getInt(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private List<Genre> createGenresFromResults(ResultSet rs) throws SQLException{
        List<Genre> genres = new ArrayList<>();
        while(rs.next()) {
            genres.add(new Genre(
                    rs.getInt("id"),
                    rs.getString("genre")
            ));
        }return genres;
    }

}
