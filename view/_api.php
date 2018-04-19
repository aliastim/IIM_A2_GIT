<body style="background-color: #333;">
<section id="login-container">
    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 midway-horizontal midway-vertical fadeInDown animated">
        <div id="logbox" class="register">
            <h1><i class="fa fa-soundcloud"></i> Nos API </h1>

            <form method="get" action="../api/musique.php">

                <input type="hidden" name="music_id" value="1">

                <div class="form-submit">
                    <input type="submit" value="API MUSIQUES">
                </div>
            </form>

            <form method="get" action="../api/comments.php">

                <input type="hidden" name="comment_id" value="1">

                <div class="form-submit">
                    <input type="submit" value="API COMMENTS">
                </div>
            </form>

            <form method="get" action="../api/likes.php">

                <input type="hidden" name="like_id" value="1">

                <div class="form-submit">
                    <input type="submit" value="API LIKES">
                </div>
            </form>

            <form method="get" action="../api/tag.php">

                <input type="hidden" name="tag_id" value="1">

                <div class="form-submit">
                    <input type="submit" value="API TAGS">
                </div>
            </form>
        </div>
    </div>
</section>