<!--Start Form-->

<div class="p-5 col-lg-8 col-md-8 col-sm-12 offset-lg-2 offset-md-2 container-fluid">
        <div class="form-frame row">
            <h1 id="title-form" class="col-lg-10 offset-lg-1 pt-5">Choix des jeux</h1>

            <form class="form-signin col-lg-12 p-5" action="" method="post" name="form">

                <div class="col-lg-12">
                    <label class="label-form" for="constructeur-select">Constructeur: </label>
                    <select class="form-control form-styling" name="constructeur">
                        <option value="" selected="selected">--Choisir un constructeur--</option>
                        <?php include("php/bdd/sortie/selectionConstructeur.php");?>
                    </select>
                </div>

                <div class="col-lg-12">
                    <label class="label-form" for="console">Console: </label>
                    <select name="console" class="form-control form-styling">
                        <option id="console0" value="" selected="selected">--Choisir une console--</option>
                        <?php include("php/bdd/sortie/selectionConsole.php");?>
                    </select>
                </div>

                <div class="col-lg-12">
                    <label class="label-form" for="region">Région: </label>
                    <select name="region" class="form-control form-styling">
                        <option id="region0" value="" selected="selected">Voir tout les jeux</option>
                        <?php include("php/bdd/sortie/selectionRegion.php");?>
                    </select>
                </div>

                    <input class="btn-signin" type="submit" value="rechercher"/>

            </form>

        </div>
    </div>

<!--End Form-->