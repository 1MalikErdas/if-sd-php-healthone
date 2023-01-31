<?php


function makeRegistration(): string {
    global $pdo;
    $email=filter_input(INPUT_POST,'email', FILTER_VALIDATE_EMAIL);
    $password=filter_input(INPUT_POST,'password');
    $firstname=filter_input(INPUT_POST,'FirstName');
    $lastname=filter_input(INPUT_POST,'LastName');

    if ($email!== false && !empty($password) && !empty($firstname) && !empty($lastname)){
        $sql = 'SELECT * FROM `user` WHERE `email` = :e';
        $sth = $pdo->prepare($sql);
        $sth->bindParam(':e', $email);
        $sth->setFetchMode(PDO::FETCH_CLASS,'user');
        $sth->execute();
        $user =$sth->fetch();
        if($user!==false) {
            return "EXIST";
        } else {
            $sth = $pdo->prepare('INSERT INTO user
            (email,password,fname, lname,role) VALUES (?,?,?,?,"member")');
            $sth->bindParam(1,$email);
            $sth->bindParam(2,$password);
            $sth->bindParam(3,$firstname);
            $sth->bindParam(4,$lastname);
            $sth->execute();
            return "SUCCES";

        }
    }
 return "INCOMPLETE";
}
