<?php

$host = "localhost";
$user = "root";
$password = "";
$dbname = "shoes";
// $host = "eu-cdbr-west-02.cleardb.net";
// $user = "b2997fae9fd9ce";
// $password = "3b4dd584";
// $dbname = "heroku_4078e2be1a9a77a";

$dsn = "mysql:host=" . $host . "; dbname=" . $dbname;

try {
    $pdo = new PDO($dsn, $user, $password);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
} catch (PDOException $e) {
    echo 'Database Connection Failed. <br/>' . $e->getMessage();
}
