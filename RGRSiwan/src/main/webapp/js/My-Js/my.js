
$(document).ready(function () {
    $("#FoodImage").change(function () {
        readURL(this, 'foodImgPrev');
    });
    $("#userimage").change(function () {
        readURL(this, 'userImgPrev');
    });

});

function readURL(input, imid) {

    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {

            $("#" + imid).attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}


