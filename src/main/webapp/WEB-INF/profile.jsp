<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
</div>

<form action="/profile" method="post">
    <div class="form-group">
        <label for="userads">Delete one of these ads</label>
        <select name="deleteMenu" id="userads">
            <optgroup label="DELETE">
                <c:forEach var="userAds" items="${userAds}">
                    <option value="${userAds.id}">${userAds.title}</option>
                </c:forEach>
            </optgroup>
        </select>
    </div>
    <input type="submit" class="btn btn-block btn-primary">
</form>

<c:forEach var="ad" items="${userAds}">
    <div class="col-md-6">
        <h2>${ad.title}</h2>
        <p>${ad.description}</p>
    </div>
</c:forEach>

<%--    <c:choose>--%>
<%--        <c:when test="${isAdmin==true}">--%>
<%--            <div>--%>

<%--            </div>--%>
<%--        </c:when>--%>
<%--    </c:choose>--%>


</body>
</html>
