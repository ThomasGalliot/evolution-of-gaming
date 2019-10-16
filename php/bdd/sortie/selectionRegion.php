<?php
    include('php/bdd/connection/connectionDB.php');

    $requete = $bdd->query("SELECT * FROM region ORDER BY nom");
    $selectionRegion = $requete->fetchAll();
    
    $i = 1;
    
    foreach($selectionRegion as $region) {    
        echo "<option id='region" . $i . "' class='" . htmlspecialchars($region['console_id']) . "' value='" . htmlspecialchars($region['id']) . "'>" . htmlspecialchars($region['nom']) . "</option>";
        $i++;
    }
?>