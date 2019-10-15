<?php
    include("php/bdd/connection/connectionDB.php");

    if (isset($_POST['console'])) {
        $requete = $bdd->query("SELECT * FROM jeux_videos WHERE console_id = " . $_POST['console'] . " ORDER BY date_de_creation");
        $affichageJeuxVideos = $requete->fetchAll();
        
        foreach ($affichageJeuxVideos as $jeuVideo) {
            echo "<div class='card text-center bg-color' style='width: 19rem;'>
                <div class='card-header'>
                    <img class='card-img-top' src='" . $jeuVideo['image'] . "'
                    alt='image du jeux " . $jeuVideo['nom'] . "' />
                </div>
                    <div class='card-body bg-color'>
                        <div class='card-title'>
                            <p class='text-light bg-success'>" . $jeuVideo['nom'] . "</p>
                        </div>
                        <div class='col-12'>
                            <div class='card-text'>
                                <p>développeur: " . $jeuVideo['developpeur'] . "</p>
                            </div>
                            <div>
                                <p>éditeur: " . $jeuVideo['editeur'] . "</p>
                            </div>
                            <div>
                                <p>date de sorti: " . $jeuVideo['date_de_creation'] . "</p>
                            </div>
                        </div>
                        <div class='card-footer'></div>
                </div>
            </div>";
        }
    }
?>