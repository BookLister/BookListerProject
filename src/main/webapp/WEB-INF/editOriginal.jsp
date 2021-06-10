<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jakechadwell
  Date: 6/9/21
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit an ad</title>
</head>
<body>

    <form action="/edit" method="post">
        <div class="form-group">
            <label for="edit">Edit one of these ads</label>
            <select name="editMenu" id="edit">
                <optgroup label="EDIT">
                    <c:forEach var="userAds" items="${userAds}">
                        <option value="${userAds.id}">${userAds.title}</option>
                    </c:forEach>
                </optgroup>
            </select>
        </div>
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <input id="price" name="price" class="form-control" type="number">
        </div>
        <div class="form-group">
            <label for="genre">Choose a genre</label>
            <select name="genre" id="genre">
                <optgroup label="Genres">
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
                </optgroup>
            </select>
        </div>
        <div class="form-group">
            <label for="condition">Choose a condition</label>
            <select name="condition" id="condition">
                <optgroup label="Genres">
                    <option value="1">New</option>
                    <option value="2">Slightly Used</option>
                    <option value="3">Very Old</option>
                </optgroup>
            </select>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control"></textarea>
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</form>
</body>
</html>
