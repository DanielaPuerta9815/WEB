function CallAjax(url, async, verb, parameters) {

    var respuesta = {};

    $.ajax({
        cache: false,
        url: url,
        async: async,
        type: verb,
        dataType: "json",
        data: parameters,
        error: function (response, status, error) {
            alert(error);
        },
        success: function (response) {
            respuesta = response;
        },
        beforeSend: function () {



        },
        complete: function () {



        }
    });

    return respuesta;
}