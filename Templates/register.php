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
    <h4>autowinkel login</h4>
    <form method="post">

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" name="email" placeholder="Enter email">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" name="password" placeholder="Enter password">
        </div>
        <div class="form-group">
            <label for="inputFirstName">voornaam</label>
            <input type="text" class="form-control" name="FirstName" placeholder="voornaam">
        </div>
        <div class="form-group">
            <label for="password">achternaam</label>
            <input type="text" class="form-control" name="LastName" placeholder="achternaam" >
        </div>
        <button type="submit" name="register" class="btn btn-primary">Submit</button>
    </form>
</div>
