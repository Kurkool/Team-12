<?php require __DIR__.'/includes/functions.php' ?>
<html>
<head>
    <title>Welcome to news channel - Ragnerok XL: Eternal Salt</title>
    <link rel="stylesheet" type="text/css" href="design/style.css">
</head>
<body>
    <div class="container">

        <div class="welcome">
            <h1>Latest news</h1>
            <p>Hey, adventurers! Welcome to land of <em>Ruin Midgard</em>. LongCat is been here waiting for you, let’s see what’s going with the interesting grand opening event.</p>
        </div>

        <div class="news-box">

            <div class="news">
                <?php
                  //  $user = 'root';
                    //$pass = '';
                    $dbh = connect_to_db(); 
                    $id_article = $_GET['newsid'];

                    if ( !empty($id_article) && $id_article > 0) {
                        $article = getAnArticle( $id_article, $dbh );
                        $article = $article[0];
                    }else{
                        $article = false;
                        echo "<strong>Wrong article!</strong>";
                    }

                    $other_articles = getOtherArticles( $id_article, $dbh );

                ?>

                <?php if ( $article && !empty($article) ) :?>

                <h2><?= stripslashes($article->news_title) ?></h2>
                <span>published on <?= date("M, jS  Y, H:i", $article->news_published_on) ?> by <?= stripslashes($article->news_author) ?></span>
                <div>
                    <?= stripslashes($article->news_full_content) ?>
                </div>
            <?php else:?>

                <?php endif?>
            </div>

            <hr>
            <h1>Other articles</h1>
            <div class="similar-posts">
                <?php if ( $other_articles && !empty($other_articles) ) :?>

                <?php foreach ($other_articles as $key => $article) :?>
                <h2><a href="read-news.php?newsid=<?= $article->news_id ?>"><?= stripslashes($article->news_title) ?></a></h2>
                <p><?= stripslashes($article->news_short_description) ?></p>
                <span>published on <?= date("M, jS  Y, H:i", $article->news_published_on) ?> by <?= stripslashes($article->news_author) ?></span>
                <?php endforeach?>

                <?php endif?>

            </div>

        </div>

        <div class="footer">
			Good luck la
        </div>

    </div>
</body>
</html>