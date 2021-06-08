<%--
  Created by IntelliJ IDEA.
  User: sergiodavila
  Date: 6/6/21
  Time: 5:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/search" method="post">
    <label for="searchTerm">Search Bar</label>
    <input id="searchTerm" type="text" name="search">
    <input type="submit" id="search-submit">
</form>

<form action="/filter" method="post">
    <div class="form-group">
        <label for="genrefilter">Filter through a genre</label>
        <select name="genreFilter" id="genrefilter">
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
    <input type="submit" class="btn btn-block btn-primary">
</form>

</body>
</html>
