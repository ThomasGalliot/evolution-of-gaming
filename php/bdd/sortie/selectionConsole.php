<?php
    include('php/bdd/connection/connectionDB.php');

    $requete = $bdd->query("SELECT * FROM console");
    $selectionConsole = $requete->fetchAll();
    
    $i = 1;
    
    foreach($selectionConsole as $console) {    
        echo "<option id='" . $i . "' class='" . htmlspecialchars($console['constructeur_id']) . "' value='" . htmlspecialchars($console['id']) . "'>" . htmlspecialchars($console['nom_console']) . "</option>";
        $i++;
    }
?>