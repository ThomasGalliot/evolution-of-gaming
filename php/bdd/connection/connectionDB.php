<?php
    try {
        $bdd = new PDO("mysql:host=localhost;dbname=evolutioerevog;charset=utf8", "root", "");
        $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch(Exception $e) {
        die('Erreur : ' . $e->getMessage());
        die("Erreur mysql : " . $database->errorInfo()[2]);
    }
?>