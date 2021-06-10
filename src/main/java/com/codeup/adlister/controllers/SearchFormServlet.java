package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers/SearchFormServlet", urlPatterns = "/search")
public class SearchFormServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String genreVal = request.getParameter("genreFilter");
        String searchVal = request.getParameter("search");
        request.getSession().setAttribute("ads", DaoFactory.getAdsDao().filterAds(genreVal));
        request.getSession().setAttribute("ads", DaoFactory.getAdsDao().searchAds(searchVal));
        response.sendRedirect("/filteredAds");
        response.sendRedirect("/searchAds");
    }
}
