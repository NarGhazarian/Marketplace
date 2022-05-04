<%@ page import="Admin.AdminDAO" %>
<%@ page import="Admin.Admin" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>


        * {
            box-sizing: border-box;
        }

        body {
            font-family: Verdana, sans-serif;
        }

        .mySlides {
            display: none;
        }

        img {
            vertical-align: middle;
        }

        /* Slideshow container */
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }

        /* Caption text */
        .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

        .active {
            background-color: #717171;
        }

        /* Fading animation */
        .fade {
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @keyframes fade {
            from {
                opacity: .4
            }
            to {
                opacity: 1
            }
        }

        /* On smaller screens, decrease text size */
        @media only screen and (max-width: 300px) {
            .text {
                font-size: 11px
            }
        }
    </style>

</head>
<body>
<div class="w3-bar w3-border w3-blue w3-large">
    <a href="index.jsp" class="w3-bar-item w3-button">Home</a>
    <a href="authForm.jsp" class="w3-bar-item w3-button">Auth</a>
</div>

<div class="slideshow-container">

    <div class="mySlides fade">
        <div class="numbertext">1 / 3</div>
        <img src="images/1.jpg" style="width:100%">
    </div>

    <div class="mySlides fade">
        <div class="numbertext">2 / 3</div>
        <img src="images/s.jpg" style="width:100%">

    </div>

    <div class="mySlides fade">
        <div class="numbertext">3 / 3</div>
        <img src="images/githublnk.jpg" style="width:100%">
    </div>


</div>

<br>

<div style="text-align:center">
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
</div>


<div class="container">
    <div class="row">
        <div class="col-sm-4" style="width: 50%; height: 50%">
            <h3>Apple iPhone 13</h3>
            <a href="discounts.jsp"><img src="images/iphone13%20copy.jpg"></a>
        </div>
        <div class="col-sm-4" style="width: 50%; height: 50%">
            <h3>Apple iMac</h3>
            <a href="discounts.jsp"> <img src="images/imac.jpg"></a>

        </div>
        <div class="col-sm-4" style="width: 50%; height: 50%">
            <h3>Apple Macbook Pro</h3>
            <a href="discounts.jsp"><img src="images/macbook.jpg"></a>

        </div>

        <div class="col-sm-4" style="width: 50%; height: 50%">
            <h3>Lenovo Legion</h3>
            <a href="discounts.jsp"> <img src="images/legion.jpg"></a>

        </div>
    </div>

</div>

<div>
    <img src="images/EducatuionProject.jpg" style="width: 100%; height: 40%">

</div>

<script>
    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        let dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 1000); // Change image every 1 seconds
    }
</script>
</body>
</html>

