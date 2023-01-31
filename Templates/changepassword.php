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
<form action="" method="post">
    <label for="current_password">Current Password:</label>
    <input type="password" name="current_password" id="current_password" required>

    <label for="new_password">New Password:</label>
    <input type="password" name="new_password" id="new_password" required>

    <label for="confirm_password">Confirm Password:</label>
    <input type="password" name="confirm_password" id="confirm_password" required>

    <input type="submit" name="change_password" value="Change Password">
</form>
<hr>
<?php
include_once ('defaults/footer.php')
?>


</body>
</html>
