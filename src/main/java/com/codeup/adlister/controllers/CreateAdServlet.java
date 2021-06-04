package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
<<<<<<< HEAD
import com.codeup.adlister.models.Ads;
=======
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
>>>>>>> 4411f8a94655791356ddca0c51958341a7f62fd5

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
                .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
<<<<<<< HEAD
        Ads ad = new Ads(
            1, // for now we'll hardcode the user id
            request.getParameter("title"),
            request.getParameter("description")
=======
        User user = (User) request.getSession().getAttribute("user");
        Ad ad = new Ad(
                user.getId(),
                request.getParameter("title"),
                request.getParameter("description")
>>>>>>> 4411f8a94655791356ddca0c51958341a7f62fd5
        );
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}
