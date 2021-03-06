<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
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
    </div>
</body>
</html>
