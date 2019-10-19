<?php
    try {
        $bdd = new PDO("mysql:host=evolutioerevog.mysql.db;dbname=evolutioerevog;charset=utf8", "evolutioerevog", "Tgt11111");
        $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch(Exception $e) {
        die('Erreur : ' . $e->getMessage());
        die("Erreur mysql : " . $database->errorInfo()[2]);
    }
?>