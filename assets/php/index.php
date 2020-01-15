<?php
    include 'header.php';
?>

<div class="container">
        <div class="row">
            <form action="search.php" method="POST">
                <label for="search-box">Search</label>
                <input type="text" id="search-box" name="query">
                <input type="submit" value="search" id="button">
            </form>
        </div>
    </div>

    <h1>front page</h1>
    <h2>All articles</h2>

    <div class="article-container">
        <?php
            $sql="SELECT * FROM volume";
            $result = myslq_query($conn, $sql);
            $queryResults = myslq_num_rows($result);

            if ($queryResults > 0){
                while ($row = mysqli_fetch_assoc($result)){
                    echo "<div>
                        <h3>.$row['item_id'].</h3>
                        <p>.$row['beer_style'].</p>
                        <p>.$row['item_id'].<p>
                        <p>.$row['item_id'].</p>

                    </div>";

                }

            }

        ?>
    </div>
    
</body>
</html>