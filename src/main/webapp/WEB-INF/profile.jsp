<%@ page import="com.codeup.adlister.dao.DaoFactory" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <link rel="stylesheet" href="../CSS/create-edit-searchAd.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
            integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
            integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
            crossorigin="anonymous"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <script src="https://kit.fontawesome.com/c8bf726a2f.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Volkhov:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Book Stack: Profile Page</title>
    <?xml version="1.0" encoding="utf-8"?>
</head>
<body>
<div class="row">
    <div class="col-2" id="bookmark">
        <div><a class="revealedLinks" href="/login">LOGIN</a></div>
        <div><a class="revealedLinks" href="/register">REGISTER</a></div>
    </div>
    <nav class="col-10 navigationWrapper">
        <div class="logoWrapper">
            <img class="openbook" src="https://i.ibb.co/PmmBD24/Open-Book-01.png" alt="Open-Book-01">
            <p class="navtitle">Book Stack</p>
            <h3 class="subTitle">Find, Trade, Learn</h3>
        </div>
        <ul class="navigation">
            <li class="clickable"><a class="link" href="/">HOME</a></li>
            <li class="clickable"><a class="link" href="/search">SEARCH</a></li>
            <li class="clickable"><a class="link" href="/ads/create">CREATE</a></li>
            <li class="clickable"><a class="link" href="/edit">EDIT</a></li>
        </ul>
    </nav>
</div>
<div class="row">
    <div class="col-md-1 register-left">
        <img class="stack" src="https://i.ibb.co/pLYRKpK/booklister-Bottom-Stack-01.png"
             alt="booklister-Bottom-Stack">
        <img class="book" src="https://i.ibb.co/0mwX5b4/booklister-01.png" alt="Why!!!"/>
    </div>
    <div class="col-md-1"></div>
    <div class="col-md-10 register-right">
        <div class="row book-text">
            <div class="col-md-1"></div>
            <div class="col-md-5 book-text-left">
                <div class="col-md-6">
                    <div class="row inner-page-row">
                        <div class="col-m-6 inner-page-col-l">
                            <i class="fas fa-book-reader userLogo"></i>
                        </div>
                        <div class="col-m-5 inner-page-col-r">
                            <p class="userInfo-descript">User Name:</p>
                            <input class="userInfofield" type="text" name="username" disabled>
                            <p class="userInfo-descript">Current Password:</p>
                            <input class="userInfofield" type="text" name="password" disabled>
                            <p class="userInfo-descript">Email:</p>
                            <input class="userInfofield" type="text" name="email" disabled>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <ul class="nav social-media">
                        <li class="nav-item"><a href="" class="nav-link pl-0"><i class="fa fa-facebook"></i></a></li>
                        <li class="nav-item"><a href="" class="nav-link"><i class="fa fa-twitter fa-lg"></i></a></li>
                        <li class="nav-item"><a href="" class="nav-link"><i class="fa fa-github fa-lg"></i></a></li>
                        <li class="nav-item"><a href="" class="nav-link"><i class="fa fa-instagram fa-lg"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-5 book-text-right">

                <div class="card-container">
                    <c:forEach items="${userAds}" var="ad">
                        <div class="row">
                            <h4>${ad.title}</h4>
                            <h5>${ad.price}</h5>
                            <p>${ad.description}</p>
                        </div>
                    </c:forEach>
                </div>
                <!--                <div class="col">-->
                <!--                    <select class="form-select form-select-lg dropdown" aria-label="Condition"-->
                <!--                            data-style="btn-primary">-->
                <!--                        <option selected>What condition is the book in?</option>-->
                <!--                        <option value="1">New</option>-->
                <!--                        <option value="2">Lightly used</option>-->
                <!--                        <option value="3">Well worn</option>-->
                <!--                    </select>-->
                <!--                </div>-->
            </div>
            <div class="col-md-1"></div>
        </div>
        <img class="blank-book" src="../media/blank-book.png" alt="open-book">
    </div>
</div>
</body>
</html>

