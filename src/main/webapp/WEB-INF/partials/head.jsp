<title>${param.title}</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<style>
    body{
        background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    }

    .navtitle{
        font-family: 'Volkhov', serif;
        letter-spacing: 2px;
        font-size: 50px;
        text-align: center;
        margin-bottom: 0 !important;
    }

    .subTitle{
        text-align: center;
    }

    .form-button{
        position: relative;
        -webkit-transition-duration: 0.4s;
        transition-duration: 0.4s;
        text-decoration: none;
        overflow: hidden;
        cursor: pointer;
    }

    .form-button:hover {
        background-color: #494949;
        color: #FFFFFF;
    }

    .form-button:after {
        content: "";
        background: #908f8f;
        display: block;
        position: absolute;
        padding-top: 200%;
        padding-right: 200%;
        margin-right: -100px!important;
        margin-top: -60%;
        border-radius: 10% 10%;
        opacity: 0;
        transition: all 0.8s;
    }

    .form-button:active:after {
        padding: 0;
        margin: 0;
        opacity: 1;
        transition: 0s
    }
    .openbook{
        z-index: 10;
        display: flex;
        margin-top: 15px;
        justify-content: center;
        width: 300px;
        align-self: center;
        top:50px;
    }

    .register-left{
        text-align: center;
        color: #fff;
        margin-top: 4%;
    }
    .register-left input{
        border: none;
        border-radius: 1.5rem;
        padding: 2%;
        width: 60%;
        background: #f8f9fa;
        font-weight: bold;
        color: #383d41;
        margin-top: 17%;
        margin-bottom: 3%;
        cursor: pointer;
    }
    .register-right{
        display: flex;
        flex-direction: column;
        width: 700px;
        border-top-left-radius: 5% 30%;
        border-bottom-left-radius: 5% 30%;
    }

    .infoBanner{
        position: relative;
        top:-10px;
        margin-top: 30px;
        margin-left: 50px !important;
        background: url("/media/bookBorder-01.png") no-repeat scroll 50% 50% ;
        box-shadow: 0 15px 15px 0 rgba(0, 0, 0, 0.50);
        background-size: 100%;
        height: 600px;
        width: 100%;
    }

    .display-title {

    }

    .bannerTextBlock{
        padding: 105px 100px 0 0;
        /*border-radius: 0 30%;*/
    }

    .form-field {
        width: 85% !important;
        border-radius: 0 20% !important;
        border: 6px inset #7A7072 !important;
        font-weight: bolder !important;
        font-size: 15px !important;

    }

    .dropdown {
        width: 100% !important;
        height: 40px !important;
        border-radius: 0 20%;
        border: 6px inset #7A7072;
        font-weight: bolder;
        font-size: 15px;
    }

    .bannerTitle{
        text-shadow: -8px -5px #6B6F76;
        color: #FFFFFF;
        font-weight: bolder;
        font-size: 5em;
    }

    .bannerSubTitle{
        text-shadow: -8px -5px #6B6F76;
        color: #FFFFFF;
        font-weight: bold;
        font-size: 3em;

    }

    .form-row {
        margin: 1.5em 5em 0 0 !important;
    }

    .price{
        text-align: center;
        border-radius: 0 20%;
    }

    .bookcover {
        position: absolute;
        top: 1000px;
        right: -68px;
        height: 700px;
        width: 1500px ;
        z-index: -10;
        transform: scale(1, 1.75);
    }

    .first {
        position: absolute;
        transform: /*translate(0px,0px);*/ scale(1.15, 1.225);
        top: 800px;
        right: 32px;
        height: 500px;
        width: 1500px ;
        z-index: -10;
    }



    .second {
        position: absolute;
        top: 1310px;
        right: 75px;
        height: 500px;
        width: 1500px ;
        z-index: -11;
        transform: /*translate(800px,-570px);*/ scale(1.15, 1.225);
    }



    .third {
        position: absolute;
        top: 1830px;
        right: 80px;
        height: 500px;
        width: 1500px;
        z-index: -12;
        transform: /*translate(800px,-840px);*/ scale(1.15, 1.225);
    }


    .forth {
        position: absolute;
        top: 2355px;
        right: 72px;
        height: 500px;
        width: 1500px;
        z-index: -13;
        transform: /*translate(800px,-1100px);*/ scale(1.15, 1.225);
    }

    .fifth {
        position: absolute;
        top: 2850px;
        right: 32px;
        height: 500px;
        width: 1500px;
        z-index: -13;
        transform: /*translate(800px,-1100px);*/ scale(1.15, 1.225);

    }

    .bookspace{
        margin: 20px 0 0 0 !important;
        width: 100%;
    }

    .register-left .stack{
        position: relative;
        top: -20px;
        left: 100px;
        margin-top: 15%;
        margin-bottom: 5%;
        width: 200%;
    }
    .register-left .book{
        position: absolute;
        top: -250px;
        left: 100px;
        z-index: 10;
        margin-top: 15%;
        margin-bottom: 5%;
        width: 175%;
        animation: mover 5s forwards ;
        animation-timing-function: ease-in-out;
        animation-iteration-count: 1;
        animation-name: mover;
    }

    @keyframes mover {
        0% { transform: rotate(0deg) translateX(75px) rotate(0deg); opacity:0.0; }
        40% { transform: rotate(0deg) translateX(75px) rotate(0deg); opacity:8.0; }
        93%{ transform: rotate(-180deg) translateY(-200px) rotate(-180deg); opacity:9.0}
        /*90%{ transform: rotate(-180deg) translateY(-100px) rotate(-180deg); opacity:1.0}*/
        94%{ transform: translateY(210px); opacity:1.0 }
        96%{ transform: translateY(205px); opacity:1.0 }
        100%{ transform: translateY(210px); opacity:1.0 }
    }
    @-webkit-keyframes mover {
        0% { -webkit-transform: rotate(0deg) translateX(50px) rotate(0deg);opacity:0.0; }
        40% { -webkit-transform: rotate(0deg) translateX(50px) rotate(0deg);opacity:8.0; }
        94%{ -webkit-transform: rotate(-180deg) translateX(50px) rotate(-180deg); opacity:9.0}
        94%{ transform: translateY(210px); opacity:1.0}
        96%{ transform: translateY(205px); opacity:1.0}
        100%{ transform: translateY(210px); opacity:1.0}
    }

    .revealedLinks{
        display: flex;
        flex-direction: column;
        position: relative;
        letter-spacing: 2px;
        font-size: 40px;
        text-align: left;
        padding-left: 60px;
        font-weight: bolder;
        color: #FFFFFF;
        top: 25px;
        right: 150px;
        z-index: 15;
        animation: mover 4s forwards ;
        animation-timing-function: ease-in-out;
        animation-iteration-count: 1;
        animation-name: reveal;
        text-decoration: none;
        transition: all 0.3s ease-in-out;
    }

    @keyframes reveal {
        0%{ transform: translateY(0px); opacity:0.0 }
        50%{ transform: translateY(-200px); opacity:0.0 }
        100%{ transform: translateY(0px); opacity:1.0 }
    }

    #bookmark {
        /*width: px;*/
        display: block;
        height: 380px;
        background-color: transparent;
        position: absolute;
        top: -100px;
        /*right: 200px;*/
        border: solid 150px  #B13A22;
        border-bottom: solid 50px transparent;
        border-top-left-radius: 15px;
        border-top-right-radius: 15px;
        transition: all 0.2s;
        animation: mover 4s forwards ;
        animation-timing-function: ease-in-out;
        animation-iteration-count: 1;
        animation-name: bookmarkDrop;
    }
    #bookmark:after {
        content: "";
        position: relative;
        right: 65px;
        top: -50px;
        /*    height: 200px;*/
        border: 90px solid #b13a22;
        /*    border-bottom: solid 120px transparent;*/
        /*    border-top-left-radius: 75px;*/
        /*    border-top-right-radius: 75px;*/
        width: 100px;
        height: 120px;

    }

    @keyframes bookmarkDrop {
        0%{ transform: translateY(0px); opacity:0.0 }
        50%{ transform: translateY(-200px); opacity:0.0 }
        100%{ transform: translateY(0px); opacity:1.0 }
    }

    .register-left p{
        font-weight: lighter;
        padding: 12%;
        margin-top: -9%;
    }
    .register .register-form{
        padding: 2% 10% 5% 10%;
    }
    .btnRegister{
        float: right;
        margin-top: 5%;
        border: none;
        border-radius: 1.5rem;
        padding: 2%;
        background: #0062cc;
        color: #fff;
        font-weight: 600;
        width: 50%;
        cursor: pointer;
    }
    .register .nav-tabs{
        margin-top: 3%;
        border: none;
        background: #0062cc;
        border-radius: 1.5rem;
        width: 28%;
        float: right;
    }
    .register .nav-tabs .nav-link{
        padding: 2%;
        height: 34px;
        font-weight: 600;
        color: #fff;
        border-top-right-radius: 1.5rem;
        border-bottom-right-radius: 1.5rem;
    }
    .register .nav-tabs .nav-link:hover{
        border: none;
    }
    .register .nav-tabs .nav-link.active{
        width: 100px;
        color: #0062cc;
        border: 2px solid #0062cc;
        border-top-left-radius: 1.5rem;
        border-bottom-left-radius: 1.5rem;
    }
    .register-heading{
        text-align: center;
        margin-top: 8%;
        margin-bottom: -15%;
        color: #495057;
    }

    /* Card Flipping CSS */

    .resultsContainer {
        display: flex;
        flex-wrap: wrap;
        width: 60%;
        height: auto;
        margin: 13% 3% 0 auto;
        perspective: 700px;
        row-gap: 168px;
        column-gap: 40px;
    }

    .card-block .btn-outline-primary {
        width: 100%;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
        bottom: 0;
        left: 0;
        position: absolute;
    }

    .card-title {
        margin: 10px 0 3px 0;
        color: lightgrey !important;
        text-shadow: 2px 0 0 black;
        overflow: hidden;
        font-weight: bolder;
        font-size: large !important;
    }
    .card-subtitle {
        overflow: hidden;
        font-size: medium;
        font-family: 'Volkhov', serif;
        color: rgba(144, 143, 143, 0.3);
    }

    .card-text:last-child {
        margin: 3px;
        overflow: auto;
        font-size: medium;
        font-family: 'Volkhov', serif;
        color: #908f8f;
        overflow: -moz-hidden-unscrollable;
    }

    p .card-text {
        margin-top: 0;
        margin-bottom: 1rem;
    }

    .card {
        /*margin: 40px;*/
    }
    .card-body {
        width: 250px!important;
        height: 350px!important;
        margin: 2px !important;
        padding: 2px !important;
    }
    /*.card-container {*/
    /*    width: 250px;*/
    /*    height: 350px;*/
    /*    margin: 2px !important;*/
    /*    padding: 2px !important;*/
    /*}*/

    .card-flip {
        position: relative;
        width: 100%;
        transform-style: preserve-3d;
        height: 400px;
        transition: all 0.5s ease-out;
        background: white;
        border: none;
    }

    .card-flip div {
        backface-visibility: hidden;
        transform-style: preserve-3d;
        height: 100%;
        width: 100%;
        border: none;
    }

    .card-flip .front {
        position: relative;
        /*top: -50px;*/
        z-index: 3;
        width: 100%;
        height: 100%;
    }

    .card-flip .back {
        position: relative;
        top: -350px;
        z-index: 2;
        transform: rotateY(-180deg);
        width: 100%;
        height: 300px;
        text-align: center;
    }

    .card-container:hover .card-flip {
        transform: rotateY(180deg);
    }

    .cardImage {
        width: 215px;
        height: 290px;
        margin: 5px 0 5px 15px;


    }


    /*Nav bar stuff*/

    .navigationWrapper {
        position: relative;
        margin-left:auto;
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 10px 50px 30px 100px !important;
        background-color: #fff;
        box-shadow: 0 10px 20px 0 rgba(0, 0, 0, 0.50);
        color: #000000;
        overflow: hidden;
        width: 85%;
        height: 250px;
    }

    .logoWrapper {
        display: flex;
        flex-direction: column;
        text-align: center;
    }

    .navigation {
        display: flex;
        list-style-type: none;
    }

    li {
        opacity: 1;
        list-style-type: none;
        color: #000000;
        text-decoration: none;
        transition: all 0.3s ease-in-out;
    }

    .clickable {
        padding: 0 10px;
        cursor: pointer;
    }

    .link {
        position: relative;
        display: flex;
        align-items: center;
        text-decoration: none;
        transition: all 0.3s ease-in-out;
        font-size: 40px;
        color: #000000;
        font-weight: bolder;
    }


    li a {
        font-size: 30px;
        padding: 0 5px;
    }

    .footer {
        position: absolute;
        bottom: 0;
        width: 100%;
        height: 400px;
    }

    /* Taller footer on small screens */
    @media (max-width: 567em) {
        body {
            margin-bottom: 400px;
        }
        .footer {
            height: 400px;
        }
    }

    /* Sticky footer style and color
    -------------------------------------------------- */
    footer {
        padding-top: 60px;
        background-color: #292c2f;
        color: #bbb;
    }

    footer a {
        color: #999;
        text-decoration:none;
    }

    footer a:hover, footer a:focus {
        color: #aaa;
        text-decoration:none;
        border-bottom:1px dotted #999;
    }

    footer .form-control {
        background-color: #1f2022;
        box-shadow: 0 1px 0 0 rgba(255, 255, 255, 0.1);
        border: none;
        resize: none;
        color: #d1d2d2;
        padding: 0.7em 1em;
    }

    /*Media querries*/
    @media screen and (max-width: 1699px) {
        .first {
            transform: scale(.7, 1.225);
            right: -100px;
        }

        .second {
            transform: scale(.7, 1.225);
            right: -100px;
        }

        .third {
            transform: scale(.7, 1.225);
            right: -100px;

        }

        .forth {
            transform: scale(.7, 1.225);
            right: -100px;
        }


        .fifth {
            transform: scale(.7, 1.225);
            right: -100px;
        }
        #bookmark {
            /*width: px;*/
            display: block;
            height: 380px;
            background-color: transparent;
            position: absolute;
            top: -100px;
            /*left: 10px;*/
            border: solid 100px  #B13A22;
            border-bottom: solid 50px transparent;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            transition: all 0.2s;
            animation: mover 4s forwards ;
            animation-timing-function: ease-in-out;
            animation-iteration-count: 1;
            animation-name: bookmarkDrop;
        }
        #bookmark:after {
            content: "";
            position: relative;
            right: 65px;
            top: -20px;

            border: 130px solid #b13a22;
            width: 100px;
            height: 120px;

        }

        .register-left .book{
            position: absolute;
            top: -240px;
            left: 125px;
            z-index: 10;
            margin-top: 15%;
            margin-bottom: 5%;
            width: 150%;
            animation: mover 5s forwards ;
            animation-timing-function: ease-in-out;
            animation-iteration-count: 1;
            animation-name: mover;
        }

        .revealedLinks{
            display: flex;
            flex-direction: column;
            position: relative;
            letter-spacing: 2px;
            font-size: 35px;
            text-align: left;
            padding-left: 60px;
            font-weight: bolder;
            color: #FFFFFF;
            top: 25px;
            right: 130px;
            z-index: 15;
            animation: mover 4s forwards ;
            animation-timing-function: ease-in-out;
            animation-iteration-count: 1;
            animation-name: reveal;
            text-decoration: none;
            transition: all 0.3s ease-in-out;
        }
    }


    @media screen and (max-width: 1994px) and (min-width: 1700px) {
        .first {
            top: 750px;
            transform: scale(.8, 1.225);
        }

        .second {
            top: 1260px;
            transform: scale(.8, 1.225);
        }

        .third {
            top: 1780px;
            transform: scale(.8, 1.225);

        }

        .forth {
            top: 2305px;
            transform: scale(.8, 1.225);
        }


        .fifth {
            top: 2800px;
            transform: scale(.8, 1.225);
        }

        #bookmark {
            display: block;
            height: 380px;
            width: 150px;
            background-color: transparent;
            position: absolute;
            top: -100px;
            left: -30px;
            border: solid 150px #B13A22;
            border-bottom: solid 50px transparent;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            transition: all 0.2s;
            animation: mover 4s forwards ;
            animation-timing-function: ease-in-out;
            animation-iteration-count: 1;
            animation-name: bookmarkDrop;
        }
        #bookmark:after {
            content: "";
            position: relative;
            right: 65px;
            top: -45px;

            border: 110px solid #b13a22;
            width: 100px;
            height: 120px;

        }

        .register-left .book{
            position: absolute;
            top: -250px;
            left: 100px;
            z-index: 10;
            margin-top: 15%;
            margin-bottom: 5%;
            width: 175%;
            animation: mover 5s forwards ;
            animation-timing-function: ease-in-out;
            animation-iteration-count: 1;
            animation-name: mover;
        }

        .revealedLinks{
            display: flex;
            flex-direction: column;
            position: relative;
            letter-spacing: 2px;
            font-size: 35px;
            text-align: left;
            padding-left: 10px;
            font-weight: bolder;
            color: #FFFFFF;
            top: 25px;
            right: 110px;
            z-index: 15;
            animation: mover 4s forwards ;
            animation-timing-function: ease-in-out;
            animation-iteration-count: 1;
            animation-name: reveal;
            text-decoration: none;
            transition: all 0.3s ease-in-out;
        }
    }



    @media screen and (min-width: 2219px) {
        .first {
            transform: scale(1.4, 1.225);
            right: 150px;
        }

        .second {
            transform: scale(1.4, 1.225);
            right: 150px;
        }

        .third {
            transform: scale(1.4, 1.225);
            right: 150px;

        }

        .forth {
            transform: scale(1.4, 1.225);
            right: 150px;
        }


        .fifth {
            transform: scale(1.4, 1.225);
            right: 150px;
        }

        .register-left .book{
            position: absolute;
            top: -250px;
            left: 100px;
            z-index: 10;
            margin-top: 15%;
            margin-bottom: 5%;
            width: 175%;
            animation: mover 5s forwards ;
            animation-timing-function: ease-in-out;
            animation-iteration-count: 1;
            animation-name: mover;
        }

        #bookmark {
            /*width: px;*/
            display: block;
            height: 380px;
            background-color: transparent;
            position: absolute;
            top: -100px;
            /*right: 200px;*/
            /*border: solid 250px  #B13A22;*/
            border-bottom: solid 50px transparent;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            transition: all 0.2s;
            animation: mover 4s forwards ;
            animation-timing-function: ease-in-out;
            animation-iteration-count: 1;
            animation-name: bookmarkDrop;
        }
        #bookmark:after {
            content: "";
            position: relative;
            right: 20px;
            top: -50px;
            /*    height: 200px;*/
            /*border: 90px solid #b13a22;*/
            /*    border-bottom: solid 120px transparent;*/
            /*    border-top-left-radius: 75px;*/
            /*    border-top-right-radius: 75px;*/
            width: 100px;
            height: 120px;
        }
        .revealedLinks{
            display: flex;
            flex-direction: column;
            position: relative;
            letter-spacing: 2px;
            font-size: 40px;
            text-align: left;
            padding-left: 60px;
            font-weight: bolder;
            color: #FFFFFF;
            top: 25px;
            right: 150px;
            z-index: 15;
            animation: mover 4s forwards ;
            animation-timing-function: ease-in-out;
            animation-iteration-count: 1;
            animation-name: reveal;
            text-decoration: none;
            transition: all 0.3s ease-in-out;
        }
    }

</style>