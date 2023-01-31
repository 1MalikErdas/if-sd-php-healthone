<!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');
?>

<body>

<div class="container">
    <?php
    include_once('defaults/header.php');
    include_once('defaults/menu.php');
    include_once('defaults/pictures.php');
    global $products;
    ?>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item"><a href="/categories">Categories</a></li>
        </ol>
    </nav>

    <div class="row gy-3 ">
        <?php global $product ?>
        <?php foreach ($products as $products): ?>
            <div class="col-sm-4 col-md-3">
                <div class="card">
                    <div class="card-body bg-gradient  text-center">
                        <a href="/productdetail/<?= $products->id ?>">
                            <img class="product-img img-responsive center-block img-fix" src='/img/<?= $products->img ?>'/>
                        </a>
                        <div class="card-title mb-3"><?= $products->naam ?></div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>

    </div>

    <hr class="bg-light">
    <?php
    include_once('defaults/footer.php');

    include_once ('defaults/footer.php');
    ?>

</div>

</body>
</html>

