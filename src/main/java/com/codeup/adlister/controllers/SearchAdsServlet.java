package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers/SearchAdsServlet", urlPatterns = "/searchAds")
public class SearchAdsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request.getParameter("searchTerm"));
        request.setAttribute("searchedAds", DaoFactory.getAdsDao().searchAds(request.getParameter("searchTerm")));
        request.getRequestDispatcher("/WEB-INF/ads/searchedAds.jsp").forward(request, response);
    }
}
