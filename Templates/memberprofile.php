<!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');
?>
<body>
<table class="container">
    <?php
    include_once ('defaults/header.php');
    include_once ('defaults/membermenu.php');
    include_once ('defaults/pictures.php');
    ?>
    <h4>
        member profile
    </h4>
    <table class="table align-middle"
    <thead>
    <tr>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>email</td>
        <td><?=$_SESSION['user']->email?></td>
    </tr>
    <tr>
        <td>firstname</td>
        <td><?=$_SESSION['user']->fname?></td>
    </tr>
    <tr>
        <td>lastname</td>
        <td><?=$_SESSION['user']->lname?></td>
    </tr>
    </tbody>
</table>
<a type="button" class="btn btn-success btn-sm px-3"
href="/member/editprofile">
    profiel aanpassen
</a>
<a type="button" class="btn btn-danger btn-sm px-3"
   href="/member/changepassword">
    verander wachtwoord
</a>
    <hr>
<?php
include_once ('defaults/footer.php');
?>
</body>
</html>
