<!DOCTYPE html>
<html>
    <?php
    include_once('defaults/head.php');
    ?>
    <body>
        <div class="container">
            <?php
            include_once ('defaults/header.php');
            include_once ('defaults/menu.php');
            include_once ('defaults/pictures.php');
            ?>
            <?php if(!empty($message)): ?>
                <div class="alert alert-success" role="alert">
                    <?=$message?>
                </div>
            <?php endif;?>
            <h4>JeffCars</h4>
            Voor Volkswagen, Audi, SEAT en SKODA
            ben je bij dealer JeffCars aan het juiste adres. Wij regelen alles rond jouw mobiliteit.
            <hr>
            <?php
            include_once ('defaults/footer.php');
            ?>
        </div>

    </body>
</html>
