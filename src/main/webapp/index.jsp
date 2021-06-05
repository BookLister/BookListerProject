<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/src/main/webapp/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/src/main/webapp/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to the Booklister!</h1>
    </div>
</body>
</html>
