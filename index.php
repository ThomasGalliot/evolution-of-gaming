<!DOCTYPE html>
<html>
    <head>
        <?php
            include("php/view/cdn/google/addGoogleAnalytics.php");
            include("php/view/cdn/google/addGoogleAds.php");
            include("php/view/cdn/css/bootstrap.php");
        ?>

        <meta charset="utf-8"/>
        <link rel="stylesheet" href="css/style.css">
        <title>Evolution Of Gaming</title>
    </head>
    <body class="background-body">
        <?php include("navbar.php");?>
        <div class="col-10 m-auto shadow-form">
            <div>
                <h1 style="text-align: center;">Evolution Of Gaming</h1>
                <p>Bonjour et bienvenue sur Evolution Of Gaming, Nous tenons à signaler qu'il s'agit d'une version alpha, sur ce site
                nous allons référencer tout les jeux pour chaque console pour toutes les régions, ainsi que tout les bundles et
                toute les éditions limitées pour chaque jeux et consoles de jeu. Il y aura aussi plein de petites choses sur chaque
                jeux, comme des easter eggs, des glitchs, etc..., tout ça, c'est pour la première version. si vous voyez des oublis
                sur quelque chose n'hésitez pas à nous le faire savoir sur notre discord que voici : <a href="https://discord.gg/2DEcgqU">discord</a></p>
            </div>
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
        <?php include("footer.php") ?>
        <script type="text/javascript" src="js/modifSelectConsole.js"></script>
        <script type="text/javascript" src="js/modifSelectRegion.js"></script>
    </body>
</html>