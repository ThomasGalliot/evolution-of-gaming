<?php
    include("php/bdd/connection/connectionDB.php");

    if (isset($_POST['console'])) {
        $requete = $bdd->query("SELECT * FROM jeux_videos WHERE console_id = " . $_POST['console'] . " ORDER BY date_de_creation");
        $affichageJeuxVideos = $requete->fetchAll();
        
        foreach ($affichageJeuxVideos as $jeuVideo) {
            echo "<div>
                <div>
                    <img src='" . $jeuVideo['image'] . "'
                    alt='image du jeux " . $jeuVideo['nom'] . "' />
                </div>

                <div>
                    <p>" . $jeuVideo['nom'] . "</p>
                </div>
                <div>
                    <p>développeur: " . $jeuVideo['developpeur'] . "</p>
                </div>
                <div>
                    <p>éditeur: " . $jeuVideo['editeur'] . "</p>
                </div>
                <div>
                    <p>date de sorti: " . $jeuVideo['date_de_creation'] . "</p>
                </div>
            </div>";
        }
    }
?>