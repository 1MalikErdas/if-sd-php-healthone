<?php
function getAllProducts():array {
    global $pdo;
    $sth= $pdo->prepare('SELECT * FROM model ORDER BY merk_id');
    $sth->execute();
    return $sth->fetchAll(PDO::FETCH_CLASS,'product');
}