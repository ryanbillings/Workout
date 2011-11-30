jQuery(document).ready(function($) {
 $('#loading_image').hide();

});
function create() {

    $('#loading_image').show()
    /*alert("HI");
    $.ajax({
     type: 'POST',
     url: '/workout_types/multi_create?remote=true',
     data: $('form').serialize(),
     success: createSuccessHandler,
     error: createErrorHandler,
     complete: hideLoadingImage
    });
  */
}

function createSuccessHandler(data) {

    alert("Created!")

}

function createErrorHandler(data) {

    alert("It failed, ffs!")

}

function hideLoadingImage() {

    $('#loading_image').hide()

}
