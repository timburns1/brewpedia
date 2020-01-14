<?php
    include 'header.php';
?>

    <div class="welcome">
        <h1><span>Brewpedia</span></h1>
    </div>

    <div class="container">
        <div class="row">
            <form action="search.php" method="POST">
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