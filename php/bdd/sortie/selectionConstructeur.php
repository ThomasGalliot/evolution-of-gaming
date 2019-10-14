<?php
    include('php/bdd/connection/connectionDB.php');

    $requete = $bdd->query("SELECT * FROM constructeur ORDER BY date_de_creation");
    $selectionConstructeur = $requete->fetchAll();

    foreach($selectionConstructeur as $constructeur) {
        echo "<option value='" . htmlspecialchars($constructeur['id']) . "'>" . htmlspecialchars($constructeur['nom']) . "</option>";
    }
?>