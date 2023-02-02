!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');
?>
<body>
<div class="container">
    <?php
    include_once ('defaults/header.php');
    include_once ('defaults/membermenu.php');
    include_once ('defaults/pictures.php');
    ?>
    <?php if(!empty($message)): ?>
        <div class="alert alert-success" role="alert">
            <?=$message?>
        </div>
    <?php endif;?>
    <h4>WatchOne</h4>
    Verschillende horloges van top kwaliteit,
    alleen te bevinden hier bij Watchone.
    <hr>
    <?php
    include_once ('defaults/footer.php');
    ?>
</div>

</body>
</html>
