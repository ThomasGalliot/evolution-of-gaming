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
                echo "<div class='card text-center bg-color d-inline-block col-lg-3 col-md-4 col-sm-12' style='width: 20rem;'>
                    <div class='card-header'>
                        <img class='card-img-top rounded mx-auto' src='" . $jeuVideo['image'] . "'
                        alt='image du jeux " . $jeuVideo['nom_jv'] . "' />
                    </div>
                    <div class='container-fluid'>
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
                            <a href='#' class='btn btn-success card-footer col-12 btn-color' data-toggle='modal' data-target='#GameModal'>Voir plus</a>
                        </div>
                    </div>
                </div>";
            }
        }
    }
?>

<div class="modal fade" id="GameModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"> Nom du jeux </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        </button>
      </div>
      <div class="modal-body">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>