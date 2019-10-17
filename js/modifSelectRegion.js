$(document).ready(function(){
    var length = $("select[name='region'] > *").length;

    modifSelect();
    $("select[name='console']").change(function(){
        var consoles = $(this).children("option:selected").val();
            
        modifSelect(consoles);
    });
    
    function modifSelect(consoles){
        i = 0;

        while (i < length) {
            if (i === 0 || $('#region' + i).hasClass(consoles)) {
                $('#region' + i).show();
            }

            else {
                $('#region' + i).hide();
            }

            i++;
        }
    }
});