<?php
    include("php/bdd/connection/connectionDB.php");

    if (isset($_POST['console']) && isset($_POST['region'])) {
        if ($_POST['console'] != "") {
            if ($_POST['region'] == "") {
                $requete = $bdd->query("SELECT * FROM jeux_videos, region, info_complemantaire_jv WHERE console_id_jv = " . $_POST['console'] . " AND region.id = region_id AND info_complemantaire_jv.id = info_complemantaire_jv_id ORDER BY date_de_creation");
            }
            else {
                $requete = $bdd->query("SELECT * FROM jeux_videos, region, info_complemantaire_jv WHERE console_id_jv = " . $_POST['console'] . " AND region_id = " . $_POST['region'] . " AND region.id = region_id AND info_complemantaire_jv.id = info_complemantaire_jv_id ORDER BY date_de_creation");
            }
            $affichageJeuxVideos = $requete->fetchAll();
        
            foreach ($affichageJeuxVideos as $jeuVideo) {
                echo "<div class='card text-center bg-color d-inline-block col-3' style='width: 20rem;'>
                    <div class='card-header'>
                        <img class='card-img-top rounded mx-auto' src='" . $jeuVideo['image'] . "'
                        alt='image du jeux " . $jeuVideo['nom_jv'] . "' />
                    </div>
                    <div class='card-body bg-color'>
                        <div class='card-title'>
                            <p class='text-light bg-success'>" . $jeuVideo['nom_jv'] . "</p>
                        </div>
                        <div>
                            <div class='card-text'>
                                <p>développeur: " . $jeuVideo['developpeur'] . "</p>
                            </div>
                            <div>
                                <p>éditeur: " . $jeuVideo['editeur'] . "</p>
                            </div>
                            <div>
                                <p>region: " . $jeuVideo['nom_region'] . "</p>
                            </div>
                            <div>
                                <p>date de sorti: " . $jeuVideo['date_de_creation'] . "</p>
                            </div>
                        </div>
                        <a href='#' class='btn btn-success card-footer col-12 btn-color'>Voir plus</a>
                    </div>
                </div>";
            }
        }
    }
?>