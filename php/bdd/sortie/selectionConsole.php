<?php
    include('php/bdd/connection/connectionDB.php');

    $requete = $bdd->query("SELECT * FROM console");
    $selectionConsole = $requete->fetchAll();

    foreach($selectionConsole as $console) {
        echo "<option value='" . htmlspecialchars($console['nom_console']) . "'>" . htmlspecialchars($console['nom_console']) . "</option>";
    }
?>