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
    <form action="/ads/edit" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${}">
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
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control">${userAds.}</textarea>
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</form>
</body>
</html>
