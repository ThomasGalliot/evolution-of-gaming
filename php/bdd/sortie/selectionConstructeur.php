<?php
    include('php/bdd/connection/connectionDB.php');

    $requete = $bdd->query("SELECT * FROM constructeur");
    $selectionConstructeur = $requete->fetchAll();

    foreach($selectionConstructeur as $constructeur) {
        echo "<option value='" . htmlspecialchars($constructeur['nom_constructeur']) . "'>" . htmlspecialchars($constructeur['nom_constructeur']) . "</option>";
    }
?>