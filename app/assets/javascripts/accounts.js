$(function() {
    return $(document).on('change', '#account_number', function(evt) {
        //location.href = location.href + "?number=" + $("#account_number option:selected").val()
        return $.ajax('load_account', {
            dataType: 'script',
            data: {
                number: $("#account_number option:selected").val()
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log($("#account_number option:selected").val());
                return console.log("AJAX Error: " + textStatus);
            },
            success: function(data, textStatus, jqXHR) {
                //window.location.reload();
                return console.log("Dynamic country select OK!");
            }
        });
    });
});
