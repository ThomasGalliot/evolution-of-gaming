<?php
    include('php/bdd/connection/connectionDB.php');

    $requete = $bdd->query("SELECT * FROM console ORDER BY date_de_creation");
    $selectionConsole = $requete->fetchAll();
    
    $i = 1;
    
    foreach($selectionConsole as $console) {    
        echo "<option id='console" . $i . "' class='" . htmlspecialchars($console['constructeur_id']) . "' value='" . htmlspecialchars($console['id']) . "'>" . htmlspecialchars($console['nom']) . "</option>";
        $i++;
    }
?>