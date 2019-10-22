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
        <link rel="stylesheet" href="css/form.css">
        <title>Evolution Of Gaming</title>
    </head>
    <body class="background-body">

        <?php include("navbar.php");?>

        <?php include("hero.php"); ?>

        <?php include("form.php") ?>

        <div class="container-fluid">
            <div class="row col-lg-10 offset-lg-1">
                    <?php include("php/bdd/sortie/affichageJeux.php");?>


            </div>
        </div>

        <?php 
            include("footer.php");
            include("php/view/cdn/js/bootstrap.php");
        ?>

        <script type="text/javascript" src="js/modifSelectConsole.js"></script>
        <script type="text/javascript" src="js/modifSelectRegion.js"></script>
    </body>
</html>