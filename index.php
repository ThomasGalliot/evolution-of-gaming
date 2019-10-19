<!DOCTYPE html>
<html>
    <head>
        <?php
            include("php/view/cdn/google/addGoogleAnalytics.php");
            include("php/view/cdn/google/addGoogleAds.php");
            include("php/view/cdn/css/bootstrap.php");
            include("php/view/cdn/css/fontAwesome.php");
        ?>

        <meta charset="utf-8"/>
        <link rel="stylesheet" href="css/style.css">
        <title>Evolution Of Gaming</title>
    </head>
    <body class="background-body">

        <?php include("navbar.php");?>

        <?php include("hero.php"); ?>

        <div class="col-10 m-auto shadow-form">
            <div class="offset-5">
                <div class="input-group mb-3">
                    <form action="#" method="post">
                        <div>
                            <label for="constructeur-select">constructeur:</label>

                            <select class="form-control" name="constructeur">
                                <option value="" selected="selected">--Choisir un constructeur--</option>
                                <?php include("php/bdd/sortie/selectionConstructeur.php");?>
                            </select>
                        </div>

                        <div class="input-group mb-3 margin-input">
                            <div>
                                <label for="console">console:</label>
        
                                <select name="console" class="form-control">
                                    <option id="console0" value="" selected="selected">--Choisir une console--</option>
                                    <?php include("php/bdd/sortie/selectionConsole.php");?>
                                </select>
                            </div>
                        </div>

                        <div class="input-group mb-3 margin-input">
                            <div>
                                <label for="region">région:</label>
        
                                <select name="region" class="form-control">
                                    <option id="region0" value="" selected="selected">voir tout les jeux</option>
                                    <?php include("php/bdd/sortie/selectionRegion.php");?>
                                </select>
                            </div>
                        </div>

                        <div>
                            <input class="btn btn-success" type="submit" value="rechercher"/>
                        </div>
                    </form>
                </div>
            </div>

            <?php
                include("php/bdd/sortie/affichageJeux.php");
            ?>
        </div>

        <?php 
            include("footer.php");
            include("php/view/cdn/js/bootstrap.php");
        ?>

        <script type="text/javascript" src="js/modifSelectConsole.js"></script>
        <script type="text/javascript" src="js/modifSelectRegion.js"></script>
    </body>
</html>