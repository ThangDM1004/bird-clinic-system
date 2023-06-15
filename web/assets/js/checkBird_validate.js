jQuery(document).ready(function () {
    var isBirdnameAvailable = false;
     var isBirdImgAvailable = false;
    
    
    $('#birdname').change(function () {
        var birdname = $('#birdname').val();
          var username = $('#username').val();
        $.ajax({
            type: 'POST',
            data: {birdname: birdname, username : username},
            url: 'BirdnameCheckController',
            success: function (result) {
                $('#result').html(result);

                if (result === 'Birdname is available to use') {
                    $('#result').removeClass().addClass('available');
                    isUsernameAvailable = true;
                } else if (result === 'This birdname has been taken, try another') {
                    $('#result').removeClass().addClass('already-exists');
                    isUsernameAvailable = false;
                }
               
            }
        });
    });

    $('#imgbird').change(function () {
        var imgbird = $('#imgbird').val();
        $.ajax({
            type: 'POST',
            data: {imgbird: imgbird},
            url: 'ImageBirdController',
            success: function (result_1) {
                $('#result_1').html(result_1);
                if (result_1 === 'Image is available to use') {
                    $('#result_1').removeClass().addClass('available');
                    isEmailAvailable = true;
                } else if (result_1 === 'Allowed JPG, GIF or PNG., try another') {
                    $('#result_1').removeClass().addClass('already-exists');
                    isEmailAvailable = false;
                }
            }
        });
    });
});

