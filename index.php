<!DOCTYPE html>
<html>
    <head>
        <?php
            include("php/view/cdn/google/addGoogleAnalytics.php");
            include("php/view/cdn/google/addGoogleAds.php");
            include("php/view/cdn/css/bootstrap.php");
        ?>
      
        <meta charset="utf-8" />
        <title>Evolution Of Gaming</title>
    </head>
    <body>
        <h1>Evolution Of Gaming</h1>
        <p>Bonjour et bienvenue sur Evolution Of Gaming, Nous tenons à signaler qu'il s'agit d'une version alpha, sur ce site
             nous allons référencer tout les jeux pour chaque console pour toutes les régions, ainsi que tout les bundles et
             toute les éditions limitées pour chaque jeux et consoles de jeu. Il y aura aussi plein de petites choses sur chaque
             jeux, comme des easter eggs, des glitchs, etc..., tout ça, c'est pour la première version. si vous voyez des oublis
             sur quelque chose n'hésitez pas à nous le faire savoir sur notre discord que voici : <a href="https://discord.gg/2DEcgqU">discord</a></p>
        
        <div>
            <form action="" method="post">
                <div>
                    <label for="constructeur-select">constructeur:</label>

                    <select name="constructeur">
                        <option value="">--Choisir un constructeur--</option>
                        <?php
                            include("php/selection/selectionConstructeur.php");
                        ?>
                    </select>
                </div>

                <div>
                    <label for="console-select">console:</label>
                
                    <select name="console">
                        <option value="">--Choisir une console--</option>
                        <?php
                            include("php/selection/selectionConsole.php");
                        ?>
                    </select>
                </div>

                <div>
                    <input type="submit" value="rechercher"/>
                </div>
            </form>
        </div>

        <?php
            include("php/view/cdn/js/bootstrap.php");
        ?>
    </body>
</html>