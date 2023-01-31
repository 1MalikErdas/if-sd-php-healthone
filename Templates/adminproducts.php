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
    global $products
    ?>

     <h4>beheer sportapparaten</h4>
    <table class="table align-middle">
        <thead>
        <tr>
            <th scope="col">nr</th>
            <th scope="col">naam</th>
            <th scope="col">category</th>
            <th scope="col" class="text-center">aanpassen</th>
            <th scope="col" class>verwijderen</th>
        </tr>
        </thead>
        <tbody>
        <?php $count=1;?>
        <?php foreach ($products as $product):?>

        <tr>
            <th scope="row"><?=$count++?></th>

            <td><?=$product->naam?></td>
            <td><?=getCategoryName($product->merk_id)?></td>
            <td class="text-center">
                <a type="button" class="btn btn-success btn-sm px-3"
                a href="/admin/edit/<?=$product->id?>">
                    <i class="bi bi-pencil-square"></i>
                </a>
            </td>
            <td class="text-center">
                <a type="button" class="btn btn-danger btn-sm px-3"
                   a href="/admin/delete/<?=$product->id?>">
                    <i class="bi bi-dash-square"></i>
                </a>
            </td>
        </tr>
        <?php endforeach;?>
        </tbody>
    </table>
    <?php
    include_once ('defaults/footer.php');
    ?>
</div>

</body>
</html>
