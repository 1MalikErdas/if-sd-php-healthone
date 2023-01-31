<!DOCTYPE html>
<html class="container">
<?php
include_once('defaults/head.php');
?>

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
    <form class="" method="post"›
          <div class="col-12">
              <label for="inputEmail" class="form-label">email</label>
              <input type="email" name="email" class="form-control"
              id="inputEmail" readonly="readonly" value="<?php if
               (isset($_SESSION['user']->email)) {echo $_SESSION['user']->email;}
else{echo "";}?>">
          </div>
          <div class="col-6">
              <label for="inputEmail" class="form-label">voornaam</label>
              <input type="firstName" name="firstName" class="form-control"
                     id="inputFirstName"  value="<?php if
              (isset($_SESSION['user']->fname)) {echo $_SESSION['user']->fname;}
              else{echo "";}?>">
          </div>
    <div class="col-6">
        <label for="inputEmail" class="form-label">achternaam</label>
        <input type="lastName" name="lastName" class="form-control"
               id="inputLastname"  value="<?php if
        (isset($_SESSION['user']->lname)) {echo $_SESSION['user']->lname;}
        else{echo "";}?>">
    </div>
    <div class="col-6">
        <button type="submit" name="profile" class="btn btn-primary">
            profiel aanpassen
        </button>
    </div>
</form>
<hr>
<?php
include_once ('defaults/footer.php')
?>


</body>
</html>
