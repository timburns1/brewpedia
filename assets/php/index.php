<?php

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="assets/style.css/styles.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Brewpedia</title>
</head>

<body>

    <div class="welcome">
        <h1><span>Brewpedia</span></h1>
    </div>

    <div class="container">
        <div class="row">
            <form action="../brewpedia/search.html" method="get">
                <label for="search-box">Search</label>
                <input type="text" id="search-box" name="query">
                <input type="submit" value="search" id="button">
            </form>
        </div>
    </div>

    <section class="hola">
        <div class="imageLeft">
            <img src="assets/images/headerPic.jpg" alt="4beers">
        </div>
        <div class="imageMiddle">
            <h2>Your Source For Everything Beer!</h2>

        </div>
        <div class="imageRight">
            <img src="assets/images/singleBeer.jpg" alt="1beer">
        </div>
    </section>




    <script src="/assets/javascript/search.js"></script>

    <body>

</html>