<?php
function getAllReviews():array {
    global $pdo;
    $sth= $pdo->prepare('SELECT * FROM review WHERE :id');
    $sth->execute();
    return $sth->fetchAll(PDO::FETCH_CLASS,'review');
}
