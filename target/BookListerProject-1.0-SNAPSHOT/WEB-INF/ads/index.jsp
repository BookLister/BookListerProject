<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
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
<div style="left: 50px" class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
