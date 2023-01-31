<?php

function getProducts($id) {
    global $pdo;
    $query = $pdo->prepare('SELECT * FROM model WHERE merk_id = :merk_id');
    $query->bindParam('merk_id', $id);
    $query->execute();
    $result = $query->fetchAll(PDO::FETCH_CLASS, 'Product');
    return $result;
}
function getProduct($id) {
    global $pdo;
    $query = $pdo->prepare('SELECT * FROM model WHERE id = :id');
    $query->bindParam('id', $id);
    $query->execute();
    $result = $query->fetchAll(PDO::FETCH_CLASS, 'Product');
    return $result[0];
}
