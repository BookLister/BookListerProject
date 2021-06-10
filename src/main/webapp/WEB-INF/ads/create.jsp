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
<script>

    $(document).ready(function() {
        function getBooks() {
            const APIv3Key = "AIzaSyAPhGOrnFvJb8JfYysnrGrAH9wYppYy-V4";

            let search = document.getElementById("search").value;
            let apply = document.getElementById("apply");
            console.log(search);
            $.ajax({
                url:
                    "https://www.googleapis.com/books/v1/volumes?q="+
                    search+
                    "&key="+
                    APIv3Key,
                dataType: "json",
                success: function (book) {
                    console.log(book);
                    for(var i = 0; i < book.items.length; i++) {
                        // apply.innerHTML += "<p class='select'>" + book.items[i].volumeInfo.title + "</p>";
                        // apply.innerHTML += "<h3 id='invisible' class='select'>" + book.items[i].volumeInfo.authors + "</h3>";
                        // apply.innerHTML += "<img class='select' src='" + book.items[i].volumeInfo.imageLinks.thumbnail + "'>";
                        // apply.innerHTML += "<h4 class='select'>" + book.items[i].volumeInfo.description + "</h4>";
                        //apply.innerHTML += "<div class=\"container grid-body\" id=\"cardBody\" style='width: max-content'><div class=\"card\" style=\"width: 18rem;\"><div class=\"card-body select\" style=\"background-color: #7A7072\"><h5 class='select card-title' style=\"text-align: center; color: white; font-size: larger; font-weight: bold\">" + book.items[i].volumeInfo.title + "</h5><img  class=\"select\" src=" + book.items[i].volumeInfo.imageLinks.thumbnail + "alt=\"pic\" style=\"width: 250px; height: 350px;\"></div></div></div>";

                        apply.innerHTML += '<div class=\"card-container container grid-body\" id=\"cardBody\" style=\'width: max-content\'><div class=\"card card-flip card-body select\"><div class=\"front card-block\"><h5 class=\'select card-title\' style=\"text-align: center; color: white; font-size: larger; font-weight: bold\">' + book.items[i].volumeInfo.title + '</h5><img class=\"select\" src=' + book.items[i].volumeInfo.imageLinks.thumbnail +  'alt=\"thecount\" style=\"width: 250px; height: 350px;\"></div><div class=\"back card-block\" style=\"width: 250px; height: 350px;\"><h5 class="card-title">'+ book.items[i].volumeInfo.title +'</h5><h6 class=\"card-subtitle text-muted select\">'+ book.items[i].volumeInfo.authors +'</h6><p class=\"card-text desc select">'+ book.items[i].volumeInfo.description +'</p></div></div></div>'

                        // to give to
                        // apply.innerHTML += '<div class=\"card-container container grid-body\" id=\"cardBody\" style=\'width: max-content\'><div class=\"card card-flip card-body select\"><div class=\"front card-block\"><h5 class=\'select card-title\' style=\"text-align: center; color: white; font-size: larger; font-weight: bold\">' + book.items[i].volumeInfo.title + '</h5><img src=' + book.items[i].volumeInfo.imageLinks.thumbnail +  'alt=\"thecount\" style=\"width: 250px; height: 350px;\"></div><div class=\"back card-block\" style=\"width: 250px; height: 350px;\"><h4 class="card-title">'+ book.items[i].volumeInfo.title +'</h4><h6 class=\"card-subtitle text-muted\">Condition</h6><p class=\"card-text\">User Description</p><a href=\"#\" class=\"btn btn-primary btn-lg\">User's Page</a></div></div></div>'


                    }
                },
                type: "GET"
            });
        }
        // let cardBody = document.getElementById("cardBody");
        let url = document.getElementById("url");
        let title = document.getElementById("title");
        // let info = document.getElementById("info");
        let authors = document.getElementById("authors")
        let titleDescription= document.getElementById("desc")

        var submitButton = document.querySelector('#submit');
        submitButton.addEventListener('click', getBooks);
        $(document).on("click", "img.select" , function() {
            let src = $(this).attr('src');
            url.setAttribute("value", src)
            console.log(src);
        });
        $(document).on("click", "h5.card-title" , function() {
            let bookName = $(this).clone().html();
            title.setAttribute("value", bookName)
            console.log(bookName);
        });
        $(document).on("click", "p.select" , function() {
            let description = $(this).clone().html();
            titleDescription.setAttribute("value", description)
        });
        $(document).on("click", "h6.select" , function() {
            let author = $(this).clone().html();
            authors.setAttribute("value", author)
        });




        // $(document).on("click", "h4.select" , function() {
        //
        // }
        // $(document).on("click", "h3.select" , function() {
        //     var author = $('h3.select').clone().html();
        //
        // });
    });
</script>
<script>
    $(document).ready(function() {
        var front = document.getElementsByClassName("front");
        var back = document.getElementsByClassName("back");

        var highest = 0;
        var absoluteSide = "";

        for (var i = 0; i < front.length; i++) {
            if (front[i].offsetHeight > back[i].offsetHeight) {
                if (front[i].offsetHeight > highest) {
                    highest = front[i].offsetHeight;
                    absoluteSide = ".front";
                }
            } else if (back[i].offsetHeight > highest) {
                highest = back[i].offsetHeight;
                absoluteSide = ".back";
            }
        }
        $(".front").css("height", highest);
        $(".back").css("height", highest);
        $(absoluteSide).css("position", "absolute");
    });
</script>
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
    <div class="col-md-1"></div>
    <form action="/ads/create" method="post">
    <div class="col-md-10 register-right">
        <div class="infoBanner row">
            <div class="col-2"></div>
            <div class="col-9 bannerTextBlock">
                <h3>Our form will help you to enter the book that you wish to trade! <br> Type in the title here then
                    click on the title's cover below</h3>
<%--                <input type="text" id="search" placeholder="Book Title"--%>
<%--                       style="border: 6px inset #7A7072 ; border-radius: 0 20%; font-weight: bolder; font-size: 15px;">--%>
<%--                <button class="display-title form-button" id="submit" type="submit">Search for your book</button>--%>
                <div>
                    <div class="mb-3">
                        <label for="description" class="form-label"></label>
                        <textarea name="description" class="form-control form-field" id="description" rows="3"
                                  placeholder="Tell us about the book you are selling" style="height: auto"></textarea>
                    </div>
                    <div class="row">
                        <div class="col">
                            <input name="title" type="text" id="title" class="form-control form-field"
                                   placeholder="Title will appear here" aria-label="Title"
                                   >
                        </div>
                        <div class="col" style="align-content: center">
                            <input type="text" id="authors" class="form-control form-field"
                                   placeholder="Author's name will appear here" aria-label="Authors" disabled>
                        </div>
                    </div>
                    <div>
                        <div class="row form-row">
                            <div class="col">
                                <select name="genre" id="genre" class="selectpicker dropdown" aria-label="Genre"
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
                            <div class="col">
                                <select name="condition" class="form-select form-select-lg dropdown" aria-label="Condition"
                                        data-style="btn-primary">
                                    <option selected>What condition is the book in?</option>
                                    <option value="New">New</option>
                                    <option value="Lightly used">Lightly used</option>
                                    <option value="Well worn">Well worn</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col price">
                                <h4>How much is the book worth?</h4>
                                <input name="price" class="price" type="number" id="price" min="0.00" max="10000.00" step="0.01"
                                       placeholder="$0.00" style="border: 6px inset #7A7072">
                            </div>
                        </div>
                        <div class="row form-row" style="display:none">

                            <div class="col">
                                <input type="text" class="form-control" placeholder="Suggested Genre"
                                       aria-label="Suggested Genre" style="display:none">

                            </div>
                            <div class="col">
                                <input name="summary" id="desc" type="text" class="form-control" placeholder="Plot Summary"
                                       aria-label="Summary" style="display:none">
                            </div>
                        </div>
                        <div class="col">
                            <input name="image_url" type="text" id="url" class="form-control" placeholder="ImageURl"
                                   aria-label="ImageURl" >
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <button class="display-title form-button" id="send" type="submit">Submit Book</button>
    </form>
    <input type="text" id="search" placeholder="Book Title"
           style="border: 6px inset #7A7072 ; border-radius: 0 20%; font-weight: bolder; font-size: 15px;">
    <button class="display-title form-button" id="submit" type="submit">Search for your book</button>
    <div class="col-2"></div>
    <div class="col-7"></div>
</div>




<div class="resultsContainer" id="apply"></div>


<!--    <div class="row bookspace">-->
<!--        <div class="col-md-2"></div>-->
<!--        <div class="col-md-9 register-right">-->
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

<div class="bookcover second">
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

<div class="bookcover third">
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

<div class="bookcover forth">
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

<div class="bookcover fifth">
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

</body>
</html>
