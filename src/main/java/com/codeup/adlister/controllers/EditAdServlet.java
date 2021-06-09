package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Genre;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/edit")
public class EditAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("userAds", DaoFactory.getAdsDao().userAds(user.getId()));
        request.getRequestDispatcher("/WEB-INF/edit.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int genre = Integer.parseInt(request.getParameter("genre"));
        String title = request.getParameter("title");
        double price = Double.parseDouble(request.getParameter("price"));
        String condition = request.getParameter("condition");
        String description = request.getParameter("description");
        int adId = Integer.parseInt(request.getParameter("editMenu"));

        DaoFactory.getAdsDao().editAd(genre, title, price, condition, description, adId);
        response.sendRedirect("/ads");
    }
}
