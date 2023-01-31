<!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');
?>
<body>
<div class="container bg-light">
    <?php
    include_once ('defaults/header.php');
    include_once ('defaults/menu.php');
    include_once ('defaults/pictures.php');
    global $product;
    global $review;
    ?>
    <?php global $product ?>
    <div class="container bg-light">
        <div class="row">
            <div class="col-md-6 bg-light">
                <h3 class="text-dark"><?php echo $product->naam?></h3>
                <img class="img-fluid img-thumbnail" style="width: 85%" src='/img/<?= $product->img ?>'/>
            </div>
            <div class="col-md-6 bg-light pt-5">
                <p class="text-dark"><?php echo $product->discription?></p>
                <p class="text-dark">Vanaf: €<?php echo $product->price?>,-</p><br>
                <p>Configureer uw ideale auto nu hier:
                </p>
                <a href="<?= $product->config ?>"target="_blank">
                    <p>Configureer</p>
                </a><br>

            </div>
        </div>
    </div>
    <hr>

    <div class="row">
        <?php foreach ($review as $reviews):;?>
        <div class="row">
            <div class="col-md-12 text-white">
                <hr>
                <b><p><?= $reviews->name . ' ' . $reviews->date . ' ' . $reviews->time?></p></b>
                <p><b><?= $reviews->title ?></p></b>
                <p><?= $reviews->description ?></p>
                <p><?= $reviews->rating ?> Stars</p>
            </div>
        </div>
    </div>
<?php endforeach; ?>




    <hr class="bg-light">
    <?php
    include_once ('defaults/footer.php');
    ?>
</div>
</body>
</html>