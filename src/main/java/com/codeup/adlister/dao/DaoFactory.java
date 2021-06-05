package com.codeup.adlister.dao;

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static Genres genreDao;
    private static Admins adminDao;
    private static Config config = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }

    public static Genres getGenreDao(){
        if(genreDao == null){
            genreDao = new MySQLGenresDao(config);
        }
        return genreDao;
    }

    public static Admins getAdminDao(){
        if(adminDao == null){
            adminDao = new MySQLAdminsDao(config);
        }
        return adminDao;
    }
}
