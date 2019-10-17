$(document).ready(function(){
    var length = $("select[name='console'] > *").length;

    modifSelect();
    $("select[name='constructeur']").change(function(){
        var constructeur = $(this).children("option:selected").val();
            
        modifSelect(constructeur);
    });
    
    function modifSelect(constructeur){
        i = 0;

        while (i < length) {
            if (i === 0 || $('#console' + i).hasClass(constructeur)) {
                $('#console' + i).show();
            }

            else {
                $('#console' + i).hide();
            }

            i++;
        }
    }
});