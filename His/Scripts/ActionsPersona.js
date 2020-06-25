$(document).on('change', '#cboemple', function (event) {

    var id = $("#cboemple option:selected").val();
    if (id == 109) {
        $("#esp1").hide();
        $("#esp2").hide();
        $("#ruc1").hide();
        $("#ruc2").hide();
        $("#col1").hide();
        $("#col2").hide();
    } else {
        $("#esp1").show();
        $("#esp2").show();
        $("#ruc1").show();
        $("#ruc2").show();
        $("#col1").show();
        $("#col2").show();
    }

});