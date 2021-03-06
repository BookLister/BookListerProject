<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Home Page"/>
    </jsp:include>
    <!--    <script src="/js/cardflip.js" rel="script"></script>-->
    <link rel="stylesheet" href="../CSS/homepage.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Volkhov:wght@700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/c8bf726a2f.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Book Stack: Home Page</title>
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
        <div class="infoBanner row">
            <div class="col-1"></div>
            <div class="col-3 bannerTextBlock">
                <h1 class="bannerTitle">What's new</h1>
                <h4 class="bannerSubTitle">Site favorites</h4>
                <p class="bannerParagraph">Info about what is happening goes here</p>
            </div>
            <div class="col-7"></div>
        </div>
    </div>
</div>
<!--<body class="register">-->
<div class="container grid-body">
    <div class="row bookspace">
        <div class="col-md-2"></div>
        <div class="col-md-9 register-right">
            <div class="bookcover first">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 750 400">
                    <style type="text/css">
                        .st0 {
                            fill: none;
                            stroke: #000000;
                            stroke-width: 2;
                            stroke-miterlimit: 10;
                        }

                        .st1 {
                            fill: #FFFFFF;
                        }
                    </style>
                    <path class="st0"
                          d="M715.8 97.7c-4.3 1.4-8.5 2.8-12.8 4.3 -0.5 1.2-0.9 2.4-1.4 3.7l5.9 2.4 -5 2.5c0.5 1.8 1 3.6 1.5 5.4 -1.1 2.9-2.2 5.7-3.3 8.6l3.8 5.3 -2.8 6c0.4 1.1 0.9 2.1 1.3 3.2 -0.3 1.3-0.7 2.7-1 4 -0.8 1.1-1.5 2.3-2.3 3.4l2.8 3.5 1 3.9c-0.8 1.1-1.6 2.1-2.5 3.2 1.6 1.4 3.2 2.7 4.8 4.1l-3.6 5.4v4l1.4 4.1 1.4 5.9 -3.5 6c0.2 1.2 0.4 2.3 0.6 3.5 1.2 1.8 2.4 3.6 3.6 5.3l-3.4 6c0 1.6-0.1 3.1-0.1 4.6 0.3 1.3 0.7 2.7 1 4 -0.3 1.3-0.7 2.7-1 4 0.9 1.2 1.8 2.3 2.6 3.5l-2.5 3.9 -1.5 3.6 4.7 2.7 -1.7 4.3 -5 1.3c1.3 1.2 2.6 2.4 3.9 3.6l-1.6 4.5 5.9 3.1 -1.8 3.6c-1.3 2-2.6 3.9-3.9 5.9 1 0.5 2.1 1 3.1 1.4 -1 2.2-2.1 4.4-3.1 6.6 1.7 2 3.3 4 5 6 -0.9 2.3-1.8 4.5-2.6 6.7 1.6 1.8 3.1 3.5 4.6 5.3 -1.3 1.3-2.7 2.7-4 4 1 1.7 2 3.3 3 5 0 1.7 0 3.3 0 5"/>
                    <path d="M101.9 90.8c0.9 0 2-0.1 3.3-0.1 7.5-0.1 13 0.2 13.6 0.3 6.5 0.4 167.7 4.6 548.5-2.6 6-0.1 17.8-0.3 32.9-0.6 5 0.3 9.1 0.2 12 0 6.7-0.3 9.7-1.1 12 1 1.6 1.5 2.4 3.9 2 6 -0.9 4.4-7 6.2-10 7 -5.1 1.4-9.8 0.8-13 0 -454.6 4.9-602.5 5.5-606.3 4.3 -0.1 0-6.5-0.3-13.4-3.8 0 0 0 0 0 0 -6.1-2.8-8.9-5.7-12.3-4.5 -2.3 0.9-3.6 3.2-5.2 6.2 -1.9 3.5-2.6 6.6-2.7 7.4 -4.6 22.1-6.9 33.1-7 34.5 0 0-4.5 47.8 2 110 0 0 1.4 13 6.4 28 0.4 1.1 0.8 2.1 0.8 2.1 0.8 1.8 1.9 3.4 3.1 5 2.1 2.5 4.1 3.1 7 1.7 2.4-1.2 4.7-2.6 7.2-3.5 0 0 0 0 0 0 0-0.6 6.9-1.7 7.5-1.8 4.4-0.5 163.7-0.2 608.7 1.9 5.4 0.2 10.8 0.4 16.2 0.6 0.2 0 5.5-1 9 3 1.8 2.1 2.9 5.3 2 8 -1.4 4.2-7.4 7.1-14 5 -18.3 0-36.7 0-55 0 -183.1-0.1-366.2-1.3-549.3-3.5 -6.8 1.6-10.6 0.4-12.8-1 -1.1-0.7-1.8-1.5-3.5-2 -2.8-0.8-5.7 0.1-8.5 1.4 -9.3 4.2-17.1 0.4-22.2-5.8 -5-6-8.4-12.8-10.1-20.4 -1.3-5.9-2.4-11.8-3.2-17.7 -1.4-10.8-2.6-21.6-3.8-32.5 -0.2-2.2-0.1-4.4-0.1-6.6 0-15.8-0.2-31.6 0.2-47.5 0.2-8.1 1.2-16.2 2.5-24.2 1.8-11.1 3.9-22.2 6.4-33.2 1.2-5.1 3.7-9.8 5.7-14.7 0.2-0.4 0.4-0.6 0.5-0.8 5.7-8.6 22.3-11.1 28.4-5.2 1.2 1.2 1.4 2.1 2.8 2.7C93.7 96.2 98.3 93.6 101.9 90.8z"/>
                    <path class="st1"
                          d="M705.1 268.2c-1.7-2-3.3-4-5-6 1-2.2 2.1-4.4 3.1-6.6 -1-0.5-2.1-1-3.1-1.4 1.3-2 2.6-3.9 3.9-5.9l1.8-3.6 -5.9-3.1 1.7-4.4c-1.3-1.2-2.6-2.4-3.9-3.6l5-1.3 1.7-4.3 -4.7-2.7 1.5-3.6 2.5-3.9c-0.9-1.1-1.7-2.3-2.6-3.4 0.3-1.3 0.7-2.7 1-4 -0.3-1.3-0.7-2.7-1-4 0.1-1.5 0.1-3.1 0.2-4.6l3.4-6c-1.2-1.8-2.4-3.6-3.6-5.3 -0.2-1.2-0.4-2.3-0.6-3.5l3.5-6 -1.3-5.9 -1.4-4.1v-4l3.6-5.4c-1.6-1.4-3.2-2.7-4.7-4.1 0.8-1 1.6-2.1 2.5-3.2l-1-3.9 -2.8-3.5c0.8-1.1 1.6-2.3 2.3-3.4 0.3-1.3 0.7-2.7 1-4 -0.4-1.1-0.9-2.1-1.3-3.2l2.8-6 -3.8-5.2c1.1-2.9 2.2-5.7 3.3-8.6 -0.5-1.8-1-3.6-1.5-5.4l5-2.5 -5.9-2.4c0.5-1.2 1-2.4 1.4-3.7 0.2-0.1 0.4-0.1 0.5-0.2 -0.1 0-0.2-0.1-0.4-0.1 -454.6 4.9-602.5 5.5-606.3 4.3 -0.1 0-6.5-0.3-13.4-3.8 0 0 0 0 0 0 -6.1-2.8-8.9-5.7-12.3-4.5 -2.3 0.9-3.6 3.2-5.2 6.2 -1.9 3.5-2.6 6.6-2.7 7.4 -4.6 22.1-6.9 33.1-7 34.5 0 0-4.5 47.8 2 110 0 0 1.4 13 6.4 28 0.4 1.1 0.8 2.1 0.8 2.1 0.8 1.8 1.9 3.4 3.1 5 2.1 2.5 4.1 3.1 7 1.7 2.4-1.2 4.7-2.6 7.2-3.5 0-0.6 6.9-1.7 7.5-1.8 4.4-0.5 163.7-0.2 608.7 1.9 2.7 0.1 5.4 0.2 8.1 0.3 0-0.1 0-0.3 0-0.4 -1-1.7-2-3.3-3-5 1.2-1.2 2.4-2.4 3.6-3.6l0-0.8c-1.4-1.6-2.8-3.2-4.3-4.9C703.3 272.7 704.2 270.4 705.1 268.2z"/>
                </svg>
            </div>
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-4 card-container">
                        <div class="card card-flip">
                            <div class="front card-block">
                                <img src="../media/bookcovers/allquietonthewesternfront.jpg" alt="allsquiet"
                                     width="237px">
                            </div>
                            <div class="back card-block">
                                <h4 class="card-title">Title</h4>
                                <h6 class="card-subtitle text-muted">Sub-title</h6>
                                <p class="card-text">Text</p>
                                <a href="#" class="btn btn-primary btn-lg">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 card-container">
                        <div class="card card-flip">
                            <div class="front card-block">
                                <img src="../media/bookcovers/tokillamockingbird.jpg" alt="tokill" width="237px">
                            </div>
                            <div class="back card-block">
                                <h4 class="card-title">Title</h4>
                                <h6 class="card-subtitle text-muted">Sub-title</h6>
                                <p class="card-text">Text</p>
                                <a href="#" class="btn btn-primary btn-lg">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 card-container">
                        <div class="card card-flip">
                            <div class="front card-block">
                                <img src="../media/bookcovers/ataleoftwocities.jpg" alt="ataleof" width="237px">
                            </div>
                            <div class="back card-block">
                                <h4 class="card-title">Title</h4>
                                <h6 class="card-subtitle text-muted">Sub-title</h6>
                                <p class="card-text">Text</p>
                                <a href="#" class="btn btn-primary btn-lg">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--        <div> &lt;!&ndash;class="col-md-1"&ndash;&gt; </div>-->
    </div>
</div>
<div class="container">
    <div class="row bookspace">
        <div class="col-md-3"></div>
        <div class="col-md-9 register-right">
            <div class="bookcover">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 750 400">
                    <style type="text/css">
                        .st0 {
                            fill: none;
                            stroke: #000000;
                            stroke-width: 2;
                            stroke-miterlimit: 10;
                        }

                        .st1 {
                            fill: #FFFFFF;
                        }
                    </style>
                    <path class="st0"
                          d="M54.4 97.7c4.3 1.4 8.5 2.8 12.8 4.3 0.5 1.2 1 2.4 1.4 3.7l-5.9 2.4 5 2.5c-0.5 1.8-1 3.6-1.5 5.4 1.1 2.9 2.2 5.7 3.3 8.6l-3.8 5.3 2.8 6c-0.4 1.1-0.9 2.1-1.3 3.2 0.3 1.3 0.7 2.7 1 4 0.8 1.1 1.6 2.3 2.3 3.4l-2.8 3.5 -1 3.9c0.8 1.1 1.6 2.1 2.5 3.2 -1.6 1.4-3.2 2.7-4.7 4.1l3.6 5.4v4l-1.4 4.1 -1.3 5.9 3.5 6c-0.2 1.2-0.4 2.3-0.6 3.5 -1.2 1.8-2.4 3.6-3.6 5.3l3.4 6c0.1 1.6 0.1 3.1 0.2 4.6 -0.3 1.3-0.7 2.7-1 4 0.3 1.3 0.7 2.7 1 4 -0.9 1.2-1.7 2.3-2.6 3.5l2.5 3.9 1.5 3.6 -4.7 2.7 1.7 4.3 5 1.3c-1.3 1.2-2.6 2.4-3.9 3.6l1.7 4.5 -5.9 3.1 1.8 3.6c1.3 2 2.6 3.9 3.9 5.9 -1 0.5-2.1 1-3.1 1.4 1 2.2 2.1 4.4 3.1 6.6 -1.7 2-3.3 4-5 6 0.9 2.3 1.8 4.5 2.6 6.7 -1.5 1.8-3.1 3.5-4.6 5.3 1.3 1.3 2.7 2.7 4 4 -1 1.7-2 3.3-3 5 0 1.7 0 3.3 0 5"/>
                    <path d="M680 94.6c1.4-0.6 1.7-1.5 2.8-2.7 6.2-5.9 22.8-3.5 28.4 5.2 0.1 0.2 0.3 0.4 0.5 0.8 1.9 4.9 4.5 9.7 5.7 14.7 2.5 11 4.6 22.1 6.4 33.2 1.3 8 2.3 16.1 2.5 24.2 0.4 15.8 0.1 31.6 0.2 47.5 0 2.2 0.2 4.5-0.1 6.6 -1.2 10.8-2.4 21.7-3.8 32.5 -0.8 6-1.9 11.9-3.2 17.7 -1.7 7.6-5.1 14.4-10.1 20.4 -5.1 6.2-12.9 10.1-22.2 5.8 -2.8-1.3-5.7-2.1-8.5-1.4 -1.7 0.5-2.4 1.3-3.5 2 -2.2 1.4-6 2.6-12.8 1 -183.1 2.3-366.2 3.4-549.3 3.5 -18.3 0-36.7 0-55 0 -6.6 2.1-12.6-0.8-14-5 -0.9-2.7 0.2-5.9 2-8 3.5-4 8.8-3 9-3 5.4-0.2 10.8-0.4 16.2-0.6 445-2 604.3-2.4 608.7-1.9 0.6 0.1 7.5 1.2 7.5 1.8 0 0 0 0 0 0 2.5 0.9 4.8 2.3 7.2 3.5 2.9 1.4 5 0.9 7-1.7 1.3-1.6 2.3-3.2 3.1-4.9 0 0 0.5-1.1 0.8-2.1 5-15 6.4-28 6.4-28 6.5-62.2 2-110 2-110 -0.1-1.3-2.4-12.4-7-34.4 -0.2-0.8-0.8-3.9-2.7-7.3 -1.6-3-2.9-5.4-5.2-6.2 -3.3-1.2-6.1 1.7-12.3 4.5 0 0 0 0 0 0 -7 3.5-13.3 3.8-13.4 3.8 -3.9 1.2-151.7 0.6-606.3-4.3 -3.2 0.8-7.9 1.4-13 0 -3-0.8-9.1-2.6-10-7 -0.4-2.1 0.4-4.5 2-6 2.3-2.1 5.3-1.3 12-1 2.9 0.2 7 0.3 12 0 15.1 0.3 26.9 0.5 32.9 0.7 380.9 7.3 542 3 548.5 2.6 0.7 0 6.1-0.4 13.6-0.3 1.3 0 2.4 0.1 3.3 0.1C671.9 93.6 676.5 96.2 680 94.6z"/>
                    <path class="st1"
                          d="M65.1 268.2c1.7-2 3.3-4 5-6 -1-2.2-2.1-4.4-3.1-6.6 1-0.5 2.1-1 3.1-1.4 -1.3-2-2.6-3.9-3.9-5.9l-1.8-3.6 5.9-3.1 -1.6-4.4c1.3-1.2 2.6-2.4 3.9-3.6l-5-1.3 -1.7-4.3 4.7-2.7 -1.5-3.6 -2.5-3.9c0.9-1.1 1.8-2.3 2.6-3.4 -0.3-1.3-0.7-2.7-1-4 0.3-1.3 0.7-2.7 1-4 0-1.5-0.1-3.1-0.1-4.6l-3.4-6c1.2-1.8 2.4-3.6 3.6-5.3 0.2-1.2 0.4-2.3 0.6-3.5l-3.5-6 1.4-5.9 1.4-4.1v-4l-3.6-5.4c1.6-1.4 3.2-2.7 4.8-4.1 -0.8-1-1.6-2.1-2.5-3.2l1-3.9 2.8-3.5c-0.8-1.1-1.5-2.3-2.3-3.4 -0.3-1.3-0.7-2.7-1-4 0.4-1.1 0.9-2.1 1.3-3.2l-2.8-6 3.8-5.2c-1.1-2.9-2.2-5.7-3.3-8.6 0.5-1.8 1-3.6 1.5-5.4l-5-2.5 5.9-2.4c-0.5-1.2-0.9-2.4-1.4-3.7 -0.2-0.1-0.4-0.1-0.5-0.2 0.1 0 0.3-0.1 0.4-0.1 454.6 4.9 602.5 5.5 606.3 4.3 0.1 0 6.5-0.3 13.4-3.8 0 0 0 0 0 0 6.1-2.8 8.9-5.7 12.3-4.5 2.3 0.9 3.6 3.2 5.3 6.2 1.9 3.5 2.6 6.6 2.7 7.4 4.6 22.1 6.9 33.1 7 34.5 0 0 4.5 47.8-2 110 0 0-1.3 13-6.4 28 -0.3 1.1-0.8 2.1-0.8 2.1 -0.8 1.8-1.9 3.4-3.1 5 -2 2.5-4.1 3.1-7 1.7 -2.4-1.2-4.7-2.6-7.2-3.5 0-0.6-6.9-1.7-7.5-1.8 -4.4-0.5-163.7-0.2-608.7 1.9 -2.7 0.1-5.4 0.2-8.1 0.3 0-0.1 0-0.3 0-0.4 1-1.7 2-3.3 3-5 -1.2-1.2-2.4-2.4-3.6-3.6l0-0.8c1.4-1.6 2.9-3.2 4.3-4.9C66.8 272.7 66 270.4 65.1 268.2z"/>
                </svg>

            </div>
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-4 card-container">
                        <div class="card card-flip">
                            <div class="front card-block">
                                <img src="../media/bookcovers/atreegrowsinbrooklyn.jpg" alt="atreegrows" width="237px">
                            </div>
                            <div class="back card-block">
                                <h4 class="card-title">Title</h4>
                                <h6 class="card-subtitle text-muted">Sub-title</h6>
                                <p class="card-text">Text</p>
                                <a href="#" class="btn btn-primary btn-lg">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 card-container">
                        <div class="card card-flip">
                            <div class="front card-block">
                                <img src="../media/bookcovers/catcherintherye.jpg" alt="catcherin" width="237px">
                            </div>
                            <div class="back card-block">
                                <h4 class="card-title">Title</h4>
                                <h6 class="card-subtitle text-muted">Sub-title</h6>
                                <p class="card-text">Text</p>
                                <a href="#" class="btn btn-primary btn-lg">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 card-container">
                        <div class="card card-flip">
                            <div class="front card-block">
                                <img src="../media/bookcovers/crimeandpunishment.jpg" alt="crimeand" width="237px">
                            </div>
                            <div class="back card-block">
                                <h4 class="card-title">Title</h4>
                                <h6 class="card-subtitle text-muted">Sub-title</h6>
                                <p class="card-text">Text</p>
                                <a href="#" class="btn btn-primary btn-lg">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--        <div> &lt;!&ndash;class="col-md-1"&ndash;&gt; </div>-->
    </div>
</div>
<div class="container">
    <div class="row bookspace">
        <div class="col-md-1"></div>
        <div class="col-md-9 register-right">
            <div class="bookcover">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 750 400">
                    <style type="text/css">
                        .st0 {
                            fill: none;
                            stroke: #000000;
                            stroke-width: 2;
                            stroke-miterlimit: 10;
                        }

                        .st1 {
                            fill: #FFFFFF;
                        }
                    </style>
                    <path class="st0"
                          d="M715.8 97.7c-4.3 1.4-8.5 2.8-12.8 4.3 -0.5 1.2-0.9 2.4-1.4 3.7l5.9 2.4 -5 2.5c0.5 1.8 1 3.6 1.5 5.4 -1.1 2.9-2.2 5.7-3.3 8.6l3.8 5.3 -2.8 6c0.4 1.1 0.9 2.1 1.3 3.2 -0.3 1.3-0.7 2.7-1 4 -0.8 1.1-1.5 2.3-2.3 3.4l2.8 3.5 1 3.9c-0.8 1.1-1.6 2.1-2.5 3.2 1.6 1.4 3.2 2.7 4.8 4.1l-3.6 5.4v4l1.4 4.1 1.4 5.9 -3.5 6c0.2 1.2 0.4 2.3 0.6 3.5 1.2 1.8 2.4 3.6 3.6 5.3l-3.4 6c0 1.6-0.1 3.1-0.1 4.6 0.3 1.3 0.7 2.7 1 4 -0.3 1.3-0.7 2.7-1 4 0.9 1.2 1.8 2.3 2.6 3.5l-2.5 3.9 -1.5 3.6 4.7 2.7 -1.7 4.3 -5 1.3c1.3 1.2 2.6 2.4 3.9 3.6l-1.6 4.5 5.9 3.1 -1.8 3.6c-1.3 2-2.6 3.9-3.9 5.9 1 0.5 2.1 1 3.1 1.4 -1 2.2-2.1 4.4-3.1 6.6 1.7 2 3.3 4 5 6 -0.9 2.3-1.8 4.5-2.6 6.7 1.6 1.8 3.1 3.5 4.6 5.3 -1.3 1.3-2.7 2.7-4 4 1 1.7 2 3.3 3 5 0 1.7 0 3.3 0 5"/>
                    <path d="M101.9 90.8c0.9 0 2-0.1 3.3-0.1 7.5-0.1 13 0.2 13.6 0.3 6.5 0.4 167.7 4.6 548.5-2.6 6-0.1 17.8-0.3 32.9-0.6 5 0.3 9.1 0.2 12 0 6.7-0.3 9.7-1.1 12 1 1.6 1.5 2.4 3.9 2 6 -0.9 4.4-7 6.2-10 7 -5.1 1.4-9.8 0.8-13 0 -454.6 4.9-602.5 5.5-606.3 4.3 -0.1 0-6.5-0.3-13.4-3.8 0 0 0 0 0 0 -6.1-2.8-8.9-5.7-12.3-4.5 -2.3 0.9-3.6 3.2-5.2 6.2 -1.9 3.5-2.6 6.6-2.7 7.4 -4.6 22.1-6.9 33.1-7 34.5 0 0-4.5 47.8 2 110 0 0 1.4 13 6.4 28 0.4 1.1 0.8 2.1 0.8 2.1 0.8 1.8 1.9 3.4 3.1 5 2.1 2.5 4.1 3.1 7 1.7 2.4-1.2 4.7-2.6 7.2-3.5 0 0 0 0 0 0 0-0.6 6.9-1.7 7.5-1.8 4.4-0.5 163.7-0.2 608.7 1.9 5.4 0.2 10.8 0.4 16.2 0.6 0.2 0 5.5-1 9 3 1.8 2.1 2.9 5.3 2 8 -1.4 4.2-7.4 7.1-14 5 -18.3 0-36.7 0-55 0 -183.1-0.1-366.2-1.3-549.3-3.5 -6.8 1.6-10.6 0.4-12.8-1 -1.1-0.7-1.8-1.5-3.5-2 -2.8-0.8-5.7 0.1-8.5 1.4 -9.3 4.2-17.1 0.4-22.2-5.8 -5-6-8.4-12.8-10.1-20.4 -1.3-5.9-2.4-11.8-3.2-17.7 -1.4-10.8-2.6-21.6-3.8-32.5 -0.2-2.2-0.1-4.4-0.1-6.6 0-15.8-0.2-31.6 0.2-47.5 0.2-8.1 1.2-16.2 2.5-24.2 1.8-11.1 3.9-22.2 6.4-33.2 1.2-5.1 3.7-9.8 5.7-14.7 0.2-0.4 0.4-0.6 0.5-0.8 5.7-8.6 22.3-11.1 28.4-5.2 1.2 1.2 1.4 2.1 2.8 2.7C93.7 96.2 98.3 93.6 101.9 90.8z"/>
                    <path class="st1"
                          d="M705.1 268.2c-1.7-2-3.3-4-5-6 1-2.2 2.1-4.4 3.1-6.6 -1-0.5-2.1-1-3.1-1.4 1.3-2 2.6-3.9 3.9-5.9l1.8-3.6 -5.9-3.1 1.7-4.4c-1.3-1.2-2.6-2.4-3.9-3.6l5-1.3 1.7-4.3 -4.7-2.7 1.5-3.6 2.5-3.9c-0.9-1.1-1.7-2.3-2.6-3.4 0.3-1.3 0.7-2.7 1-4 -0.3-1.3-0.7-2.7-1-4 0.1-1.5 0.1-3.1 0.2-4.6l3.4-6c-1.2-1.8-2.4-3.6-3.6-5.3 -0.2-1.2-0.4-2.3-0.6-3.5l3.5-6 -1.3-5.9 -1.4-4.1v-4l3.6-5.4c-1.6-1.4-3.2-2.7-4.7-4.1 0.8-1 1.6-2.1 2.5-3.2l-1-3.9 -2.8-3.5c0.8-1.1 1.6-2.3 2.3-3.4 0.3-1.3 0.7-2.7 1-4 -0.4-1.1-0.9-2.1-1.3-3.2l2.8-6 -3.8-5.2c1.1-2.9 2.2-5.7 3.3-8.6 -0.5-1.8-1-3.6-1.5-5.4l5-2.5 -5.9-2.4c0.5-1.2 1-2.4 1.4-3.7 0.2-0.1 0.4-0.1 0.5-0.2 -0.1 0-0.2-0.1-0.4-0.1 -454.6 4.9-602.5 5.5-606.3 4.3 -0.1 0-6.5-0.3-13.4-3.8 0 0 0 0 0 0 -6.1-2.8-8.9-5.7-12.3-4.5 -2.3 0.9-3.6 3.2-5.2 6.2 -1.9 3.5-2.6 6.6-2.7 7.4 -4.6 22.1-6.9 33.1-7 34.5 0 0-4.5 47.8 2 110 0 0 1.4 13 6.4 28 0.4 1.1 0.8 2.1 0.8 2.1 0.8 1.8 1.9 3.4 3.1 5 2.1 2.5 4.1 3.1 7 1.7 2.4-1.2 4.7-2.6 7.2-3.5 0-0.6 6.9-1.7 7.5-1.8 4.4-0.5 163.7-0.2 608.7 1.9 2.7 0.1 5.4 0.2 8.1 0.3 0-0.1 0-0.3 0-0.4 -1-1.7-2-3.3-3-5 1.2-1.2 2.4-2.4 3.6-3.6l0-0.8c-1.4-1.6-2.8-3.2-4.3-4.9C703.3 272.7 704.2 270.4 705.1 268.2z"/>
                </svg>
            </div>
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-4 card-container">
                        <div class="card card-flip">
                            <div class="front card-block">
                                <img src="../media/bookcovers/flowersforalernon.jpg" alt="flowers" width="237px">
                            </div>
                            <div class="back card-block">
                                <h4 class="card-title">Title</h4>
                                <h6 class="card-subtitle text-muted">Sub-title</h6>
                                <p class="card-text">Text</p>
                                <a href="#" class="btn btn-primary btn-lg">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 card-container">
                        <div class="card card-flip">
                            <div class="front card-block">
                                <img src="../media/bookcovers/modydick.jpg" alt="mobyd" width="237px">
                            </div>
                            <div class="back card-block">
                                <h4 class="card-title">Title</h4>
                                <h6 class="card-subtitle text-muted">Sub-title</h6>
                                <p class="card-text">Text</p>
                                <a href="#" class="btn btn-primary btn-lg">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 card-container">
                        <div class="card card-flip">
                            <div class="front card-block">
                                <img src="../media/bookcovers/slaughterhouse5.jpg" alt="slaughter" width="237px">
                            </div>
                            <div class="back card-block">
                                <h4 class="card-title">Title</h4>
                                <h6 class="card-subtitle text-muted">Sub-title</h6>
                                <p class="card-text">Text</p>
                                <a href="#" class="btn btn-primary btn-lg">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--        <div> &lt;!&ndash;class="col-md-1"&ndash;&gt; </div>-->
    </div>
</div>
<div class="container">
    <div class="row bookspace">
        <div class="col-md-3"></div>
        <div class="col-md-9 register-right">
            <div class="bookcover">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 750 400">
                    <style type="text/css">
                        .st0 {
                            fill: none;
                            stroke: #000000;
                            stroke-width: 2;
                            stroke-miterlimit: 10;
                        }

                        .st1 {
                            fill: #FFFFFF;
                        }
                    </style>
                    <path class="st0"
                          d="M54.4 97.7c4.3 1.4 8.5 2.8 12.8 4.3 0.5 1.2 1 2.4 1.4 3.7l-5.9 2.4 5 2.5c-0.5 1.8-1 3.6-1.5 5.4 1.1 2.9 2.2 5.7 3.3 8.6l-3.8 5.3 2.8 6c-0.4 1.1-0.9 2.1-1.3 3.2 0.3 1.3 0.7 2.7 1 4 0.8 1.1 1.6 2.3 2.3 3.4l-2.8 3.5 -1 3.9c0.8 1.1 1.6 2.1 2.5 3.2 -1.6 1.4-3.2 2.7-4.7 4.1l3.6 5.4v4l-1.4 4.1 -1.3 5.9 3.5 6c-0.2 1.2-0.4 2.3-0.6 3.5 -1.2 1.8-2.4 3.6-3.6 5.3l3.4 6c0.1 1.6 0.1 3.1 0.2 4.6 -0.3 1.3-0.7 2.7-1 4 0.3 1.3 0.7 2.7 1 4 -0.9 1.2-1.7 2.3-2.6 3.5l2.5 3.9 1.5 3.6 -4.7 2.7 1.7 4.3 5 1.3c-1.3 1.2-2.6 2.4-3.9 3.6l1.7 4.5 -5.9 3.1 1.8 3.6c1.3 2 2.6 3.9 3.9 5.9 -1 0.5-2.1 1-3.1 1.4 1 2.2 2.1 4.4 3.1 6.6 -1.7 2-3.3 4-5 6 0.9 2.3 1.8 4.5 2.6 6.7 -1.5 1.8-3.1 3.5-4.6 5.3 1.3 1.3 2.7 2.7 4 4 -1 1.7-2 3.3-3 5 0 1.7 0 3.3 0 5"/>
                    <path d="M680 94.6c1.4-0.6 1.7-1.5 2.8-2.7 6.2-5.9 22.8-3.5 28.4 5.2 0.1 0.2 0.3 0.4 0.5 0.8 1.9 4.9 4.5 9.7 5.7 14.7 2.5 11 4.6 22.1 6.4 33.2 1.3 8 2.3 16.1 2.5 24.2 0.4 15.8 0.1 31.6 0.2 47.5 0 2.2 0.2 4.5-0.1 6.6 -1.2 10.8-2.4 21.7-3.8 32.5 -0.8 6-1.9 11.9-3.2 17.7 -1.7 7.6-5.1 14.4-10.1 20.4 -5.1 6.2-12.9 10.1-22.2 5.8 -2.8-1.3-5.7-2.1-8.5-1.4 -1.7 0.5-2.4 1.3-3.5 2 -2.2 1.4-6 2.6-12.8 1 -183.1 2.3-366.2 3.4-549.3 3.5 -18.3 0-36.7 0-55 0 -6.6 2.1-12.6-0.8-14-5 -0.9-2.7 0.2-5.9 2-8 3.5-4 8.8-3 9-3 5.4-0.2 10.8-0.4 16.2-0.6 445-2 604.3-2.4 608.7-1.9 0.6 0.1 7.5 1.2 7.5 1.8 0 0 0 0 0 0 2.5 0.9 4.8 2.3 7.2 3.5 2.9 1.4 5 0.9 7-1.7 1.3-1.6 2.3-3.2 3.1-4.9 0 0 0.5-1.1 0.8-2.1 5-15 6.4-28 6.4-28 6.5-62.2 2-110 2-110 -0.1-1.3-2.4-12.4-7-34.4 -0.2-0.8-0.8-3.9-2.7-7.3 -1.6-3-2.9-5.4-5.2-6.2 -3.3-1.2-6.1 1.7-12.3 4.5 0 0 0 0 0 0 -7 3.5-13.3 3.8-13.4 3.8 -3.9 1.2-151.7 0.6-606.3-4.3 -3.2 0.8-7.9 1.4-13 0 -3-0.8-9.1-2.6-10-7 -0.4-2.1 0.4-4.5 2-6 2.3-2.1 5.3-1.3 12-1 2.9 0.2 7 0.3 12 0 15.1 0.3 26.9 0.5 32.9 0.7 380.9 7.3 542 3 548.5 2.6 0.7 0 6.1-0.4 13.6-0.3 1.3 0 2.4 0.1 3.3 0.1C671.9 93.6 676.5 96.2 680 94.6z"/>
                    <path class="st1"
                          d="M65.1 268.2c1.7-2 3.3-4 5-6 -1-2.2-2.1-4.4-3.1-6.6 1-0.5 2.1-1 3.1-1.4 -1.3-2-2.6-3.9-3.9-5.9l-1.8-3.6 5.9-3.1 -1.6-4.4c1.3-1.2 2.6-2.4 3.9-3.6l-5-1.3 -1.7-4.3 4.7-2.7 -1.5-3.6 -2.5-3.9c0.9-1.1 1.8-2.3 2.6-3.4 -0.3-1.3-0.7-2.7-1-4 0.3-1.3 0.7-2.7 1-4 0-1.5-0.1-3.1-0.1-4.6l-3.4-6c1.2-1.8 2.4-3.6 3.6-5.3 0.2-1.2 0.4-2.3 0.6-3.5l-3.5-6 1.4-5.9 1.4-4.1v-4l-3.6-5.4c1.6-1.4 3.2-2.7 4.8-4.1 -0.8-1-1.6-2.1-2.5-3.2l1-3.9 2.8-3.5c-0.8-1.1-1.5-2.3-2.3-3.4 -0.3-1.3-0.7-2.7-1-4 0.4-1.1 0.9-2.1 1.3-3.2l-2.8-6 3.8-5.2c-1.1-2.9-2.2-5.7-3.3-8.6 0.5-1.8 1-3.6 1.5-5.4l-5-2.5 5.9-2.4c-0.5-1.2-0.9-2.4-1.4-3.7 -0.2-0.1-0.4-0.1-0.5-0.2 0.1 0 0.3-0.1 0.4-0.1 454.6 4.9 602.5 5.5 606.3 4.3 0.1 0 6.5-0.3 13.4-3.8 0 0 0 0 0 0 6.1-2.8 8.9-5.7 12.3-4.5 2.3 0.9 3.6 3.2 5.3 6.2 1.9 3.5 2.6 6.6 2.7 7.4 4.6 22.1 6.9 33.1 7 34.5 0 0 4.5 47.8-2 110 0 0-1.3 13-6.4 28 -0.3 1.1-0.8 2.1-0.8 2.1 -0.8 1.8-1.9 3.4-3.1 5 -2 2.5-4.1 3.1-7 1.7 -2.4-1.2-4.7-2.6-7.2-3.5 0-0.6-6.9-1.7-7.5-1.8 -4.4-0.5-163.7-0.2-608.7 1.9 -2.7 0.1-5.4 0.2-8.1 0.3 0-0.1 0-0.3 0-0.4 1-1.7 2-3.3 3-5 -1.2-1.2-2.4-2.4-3.6-3.6l0-0.8c1.4-1.6 2.9-3.2 4.3-4.9C66.8 272.7 66 270.4 65.1 268.2z"/>
                </svg>
            </div>
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-4 card-container">
                        <div class="card card-flip">
                            <div class="front card-block">
                                <img src="../media/bookcovers/thecountofmontecristro.jpg" alt="thecount" width="237px">
                            </div>
                            <div class="back card-block">
                                <h4 class="card-title">Title</h4>
                                <h6 class="card-subtitle text-muted">Sub-title</h6>
                                <p class="card-text">Text</p>
                                <a href="#" class="btn btn-primary btn-lg">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 card-container">
                        <div class="card card-flip">
                            <div class="front card-block">
                                <img src="../media/bookcovers/thegrapesofwrath.jpg" alt="thegrapes" width="237px">
                            </div>
                            <div class="back card-block">
                                <h4 class="card-title">Title</h4>
                                <h6 class="card-subtitle text-muted">Sub-title</h6>
                                <p class="card-text">Text</p>
                                <a href="#" class="btn btn-primary btn-lg">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 card-container">
                        <div class="card card-flip">
                            <div class="front card-block">
                                <img src="../media/bookcovers/themetamorphosis.jpg" alt="themeta" width="237px">
                            </div>
                            <div class="back card-block">
                                <h4 class="card-title">Title</h4>
                                <h6 class="card-subtitle text-muted">Sub-title</h6>
                                <p class="card-text">Text</p>
                                <a href="#" class="btn btn-primary btn-lg">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <h5><i class="fas fa-drumstick-bite"></i> BBQ for Algernon LLC.</h5>
                <div class="row">
                    <div class="col-6">
                        <ul class="list-unstyled">
                            <li><a href="">What's New</a></li>
                            <li><a href="">About Us</a></li>
                        </ul>
                    </div>
                    <div class="col-6">
                        <ul class="list-unstyled">
                            <li><a href="">We love books</a></li>
                            <li><a href="">Join our Team</a></li>
                        </ul>
                    </div>
                </div>
                <ul class="nav">
                    <li class="nav-item"><a href="" class="nav-link pl-0"><i class="fa fa-facebook fa-lg"></i></a></li>
                    <li class="nav-item"><a href="" class="nav-link"><i class="fa fa-twitter fa-lg"></i></a></li>
                    <li class="nav-item"><a href="" class="nav-link"><i class="fa fa-github fa-lg"></i></a></li>
                    <li class="nav-item"><a href="" class="nav-link"><i class="fa fa-instagram fa-lg"></i></a></li>
                </ul>
                <br>
            </div>
            <div class="col-md-2">
                <h5 class="text-md-right">Contact Us</h5>
                <hr>
            </div>
            <div class="col-md-5">
                <form>
                    <fieldset class="form-group">
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                    </fieldset>
                    <fieldset class="form-group">
                        <textarea class="form-control" id="exampleMessage" placeholder="Message"></textarea>
                    </fieldset>
                    <fieldset class="form-group text-xs-right">
                        <button type="button" class="btn btn-secondary-outline btn-lg">Send</button>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
