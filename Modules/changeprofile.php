<?php
function changeProfile(): bool
{
    global $pdo;
    $email=filter_input(INPUT_POST,'email',FILTER_VALIDATE_EMAIL);
    $firstname=filter_input(INPUT_POST,'firstName');
    $lastname=filter_input(INPUT_POST,'lastName');
    if ($email!==false && !empty($firstname) && !empty($lastname)) {
        $sth = $pdo->prepare('UPDATE `user` SET `fname`=:f, `lname` =:l WHERE `email`=:e');
        $sth->bindValue(":f", $firstname);
        $sth->bindValue(":l", $lastname);
        $sth->bindValue(":e", $email);
        $sth->execute();
        $_SESSION['user']->fname=$firstname;
        $_SESSION['user']->lname=$lastname;
        return true;
    } else {
       return false;
    }
}