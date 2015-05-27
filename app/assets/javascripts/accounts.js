$(function() {
    loadAccounts();
    return $(document).on('change', '#account_number', function(evt) {
        return loadAccounts();
    });
});


function loadAccounts(){
    $.ajax('load_account', {
        dataType: 'script',
        data: {
            number: $("#account_number option:selected").val()
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.log($("#account_number option:selected").val());
            return console.log("AJAX Error: " + textStatus);
        },
        success: function(data, textStatus, jqXHR) {
            return console.log("Dynamic country select OK!");
        }
    });
}
