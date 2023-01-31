<?php

function deleteProduct():array {
    global $pdo;
    $sth= $pdo->prepare('DELETE FROM model WHERE id =:id');
    $sth->execute();

return true;
}