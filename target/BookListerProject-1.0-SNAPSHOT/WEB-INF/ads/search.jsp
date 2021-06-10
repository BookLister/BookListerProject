<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>

</head>

<body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>

<div class="row">
    <div class="col-2" id="bookmark">
        <div><a class="revealedLinks" href="#">LOGIN</a></div>
        <div><a class="revealedLinks" href="#">REGISTER</a></div>
    </div>
    <nav class="col-10 navigationWrapper">
        <div class="logoWrapper">
            <img class="openbook" src="https://i.ibb.co/PmmBD24/Open-Book-01.png" alt="Open-Book-01">
            <p class="navtitle">Book Stack</p>
            <h3 class="subTitle">Find, Trade, Learn</h3>
        </div>
        <ul class="navigation">
            <li class="clickable"><a class="link" href="#">HOME</a></li>
            <li class="clickable"><a class="link" href="#">SEARCH</a></li>
            <li class="clickable"><a class="link" href="#">CREATE</a></li>
            <li class="clickable"><a class="link" href="#">EDIT</a></li>
        </ul>
    </nav>
</div>
<div class="row">
    <div class="col-md-1 register-left">
        <img class="stack" src="https://i.ibb.co/pLYRKpK/booklister-Bottom-Stack-01.png"
             alt="booklister-Bottom-Stack">
        <img class="book" src="https://i.ibb.co/0mwX5b4/booklister-01.png" alt="Why!!!"/>
    </div>
    <form action="/search" method="post">
    <div class="col-md-1"></div>
    <div class="col-md-10 register-right">
        <div class="infoBanner row">
            <div class="col-3"></div>
            <div class="col-6 bannerTextBlock">
                <div style="margin-top: 40px">
                    <h3>Search By Title: Type in a books names at all copies listed</h3>
                    <input name="search" type="text" id="search" placeholder="Book Title"
                           style="border: 6px inset #7A7072 ; border-radius: 0 20%; font-weight: bolder; font-size: 15px;">
                    <button class="display-title form-button" id="searchTitle" type="submit">Search</button>
                </div>
                <div style="margin-top: 40px">
                    <h3>Filter By Genre: Select from the drop down menu</h3>
                    <div class="col">
                        <select name="genreFilter" id="genre" class="selectpicker dropdown" aria-label="Genre"
                                data-style="btn-primary">
                            <option selected>What genre is it?</option>
                            <option value="1">Mystery</option>
                            <option value="2">Horror</option>
                            <option value="3">Adventure</option>
                            <option value="4">Crime</option>
                            <option value="5">Sci-fi</option>
                            <option value="6">Romance</option>
                            <option value="7">Fantasy</option>
                            <option value="8">Non-fiction</option>
                            <option value="9">Self-help</option>
                            <option value="10">Children's</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-2"></div>
        </div>
    </div>
    </form>

    <div class="col-2"></div>
    <div class="col-7"></div>
</div>

<!--reveals the searched results-->
<div class="resultsContainer" id="apply"></div>

<c:forEach items="ads" var="ad">
    <div class="bookcover first">
        <p>${ad.title}</p>
        <p>${ad.price}</p>
        <p>${ad.conditions}</p>
        <p>${ad.description}</p>
        <p>${ad.summary}</p>
<%--        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 750 400">--%>
<%--            <style type="text/css">--%>
<%--                .st0 {--%>
<%--                    fill: none;--%>
<%--                    stroke: #000000;--%>
<%--                    stroke-width: 2;--%>
<%--                    stroke-miterlimit: 10;--%>
<%--                }--%>

<%--                .st1 {--%>
<%--                    fill: #FFFFFF;--%>
<%--                }--%>
<%--            </style>--%>
<%--            <path class="st0"--%>
<%--                  d="M715.8 97.7c-4.3 1.4-8.5 2.8-12.8 4.3 -0.5 1.2-0.9 2.4-1.4 3.7l5.9 2.4 -5 2.5c0.5 1.8 1 3.6 1.5 5.4 -1.1 2.9-2.2 5.7-3.3 8.6l3.8 5.3 -2.8 6c0.4 1.1 0.9 2.1 1.3 3.2 -0.3 1.3-0.7 2.7-1 4 -0.8 1.1-1.5 2.3-2.3 3.4l2.8 3.5 1 3.9c-0.8 1.1-1.6 2.1-2.5 3.2 1.6 1.4 3.2 2.7 4.8 4.1l-3.6 5.4v4l1.4 4.1 1.4 5.9 -3.5 6c0.2 1.2 0.4 2.3 0.6 3.5 1.2 1.8 2.4 3.6 3.6 5.3l-3.4 6c0 1.6-0.1 3.1-0.1 4.6 0.3 1.3 0.7 2.7 1 4 -0.3 1.3-0.7 2.7-1 4 0.9 1.2 1.8 2.3 2.6 3.5l-2.5 3.9 -1.5 3.6 4.7 2.7 -1.7 4.3 -5 1.3c1.3 1.2 2.6 2.4 3.9 3.6l-1.6 4.5 5.9 3.1 -1.8 3.6c-1.3 2-2.6 3.9-3.9 5.9 1 0.5 2.1 1 3.1 1.4 -1 2.2-2.1 4.4-3.1 6.6 1.7 2 3.3 4 5 6 -0.9 2.3-1.8 4.5-2.6 6.7 1.6 1.8 3.1 3.5 4.6 5.3 -1.3 1.3-2.7 2.7-4 4 1 1.7 2 3.3 3 5 0 1.7 0 3.3 0 5"/>--%>
<%--            <path d="M101.9 90.8c0.9 0 2-0.1 3.3-0.1 7.5-0.1 13 0.2 13.6 0.3 6.5 0.4 167.7 4.6 548.5-2.6 6-0.1 17.8-0.3 32.9-0.6 5 0.3 9.1 0.2 12 0 6.7-0.3 9.7-1.1 12 1 1.6 1.5 2.4 3.9 2 6 -0.9 4.4-7 6.2-10 7 -5.1 1.4-9.8 0.8-13 0 -454.6 4.9-602.5 5.5-606.3 4.3 -0.1 0-6.5-0.3-13.4-3.8 0 0 0 0 0 0 -6.1-2.8-8.9-5.7-12.3-4.5 -2.3 0.9-3.6 3.2-5.2 6.2 -1.9 3.5-2.6 6.6-2.7 7.4 -4.6 22.1-6.9 33.1-7 34.5 0 0-4.5 47.8 2 110 0 0 1.4 13 6.4 28 0.4 1.1 0.8 2.1 0.8 2.1 0.8 1.8 1.9 3.4 3.1 5 2.1 2.5 4.1 3.1 7 1.7 2.4-1.2 4.7-2.6 7.2-3.5 0 0 0 0 0 0 0-0.6 6.9-1.7 7.5-1.8 4.4-0.5 163.7-0.2 608.7 1.9 5.4 0.2 10.8 0.4 16.2 0.6 0.2 0 5.5-1 9 3 1.8 2.1 2.9 5.3 2 8 -1.4 4.2-7.4 7.1-14 5 -18.3 0-36.7 0-55 0 -183.1-0.1-366.2-1.3-549.3-3.5 -6.8 1.6-10.6 0.4-12.8-1 -1.1-0.7-1.8-1.5-3.5-2 -2.8-0.8-5.7 0.1-8.5 1.4 -9.3 4.2-17.1 0.4-22.2-5.8 -5-6-8.4-12.8-10.1-20.4 -1.3-5.9-2.4-11.8-3.2-17.7 -1.4-10.8-2.6-21.6-3.8-32.5 -0.2-2.2-0.1-4.4-0.1-6.6 0-15.8-0.2-31.6 0.2-47.5 0.2-8.1 1.2-16.2 2.5-24.2 1.8-11.1 3.9-22.2 6.4-33.2 1.2-5.1 3.7-9.8 5.7-14.7 0.2-0.4 0.4-0.6 0.5-0.8 5.7-8.6 22.3-11.1 28.4-5.2 1.2 1.2 1.4 2.1 2.8 2.7C93.7 96.2 98.3 93.6 101.9 90.8z"/>--%>
<%--            <path class="st1"--%>
<%--                  d="M705.1 268.2c-1.7-2-3.3-4-5-6 1-2.2 2.1-4.4 3.1-6.6 -1-0.5-2.1-1-3.1-1.4 1.3-2 2.6-3.9 3.9-5.9l1.8-3.6 -5.9-3.1 1.7-4.4c-1.3-1.2-2.6-2.4-3.9-3.6l5-1.3 1.7-4.3 -4.7-2.7 1.5-3.6 2.5-3.9c-0.9-1.1-1.7-2.3-2.6-3.4 0.3-1.3 0.7-2.7 1-4 -0.3-1.3-0.7-2.7-1-4 0.1-1.5 0.1-3.1 0.2-4.6l3.4-6c-1.2-1.8-2.4-3.6-3.6-5.3 -0.2-1.2-0.4-2.3-0.6-3.5l3.5-6 -1.3-5.9 -1.4-4.1v-4l3.6-5.4c-1.6-1.4-3.2-2.7-4.7-4.1 0.8-1 1.6-2.1 2.5-3.2l-1-3.9 -2.8-3.5c0.8-1.1 1.6-2.3 2.3-3.4 0.3-1.3 0.7-2.7 1-4 -0.4-1.1-0.9-2.1-1.3-3.2l2.8-6 -3.8-5.2c1.1-2.9 2.2-5.7 3.3-8.6 -0.5-1.8-1-3.6-1.5-5.4l5-2.5 -5.9-2.4c0.5-1.2 1-2.4 1.4-3.7 0.2-0.1 0.4-0.1 0.5-0.2 -0.1 0-0.2-0.1-0.4-0.1 -454.6 4.9-602.5 5.5-606.3 4.3 -0.1 0-6.5-0.3-13.4-3.8 0 0 0 0 0 0 -6.1-2.8-8.9-5.7-12.3-4.5 -2.3 0.9-3.6 3.2-5.2 6.2 -1.9 3.5-2.6 6.6-2.7 7.4 -4.6 22.1-6.9 33.1-7 34.5 0 0-4.5 47.8 2 110 0 0 1.4 13 6.4 28 0.4 1.1 0.8 2.1 0.8 2.1 0.8 1.8 1.9 3.4 3.1 5 2.1 2.5 4.1 3.1 7 1.7 2.4-1.2 4.7-2.6 7.2-3.5 0-0.6 6.9-1.7 7.5-1.8 4.4-0.5 163.7-0.2 608.7 1.9 2.7 0.1 5.4 0.2 8.1 0.3 0-0.1 0-0.3 0-0.4 -1-1.7-2-3.3-3-5 1.2-1.2 2.4-2.4 3.6-3.6l0-0.8c-1.4-1.6-2.8-3.2-4.3-4.9C703.3 272.7 704.2 270.4 705.1 268.2z"/>--%>
<%--        </svg>--%>
    </div>
</c:forEach>




<script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script src="../js/keys.js"></script>
<script src="../js/books.js"></script>


</body>
</html>