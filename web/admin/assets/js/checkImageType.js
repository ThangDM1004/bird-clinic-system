var isBirdImgAvailable = true;

function checkImageAdd() {
    var myemail = $('#bird_image_dash').val();
    $.ajax({
        type: 'POST',
        data: {bird_image_dash: myemail},
        url: '../ImageUpdateBirdController',
        success: function (result_1) {
            $('#result_3').html(result_1);
            
              if (result_1 === 'Allowed JPG, or PNG, try another') {
                $('#result_3').removeClass().addClass('already-exists');
                isBirdImgAvailable = false;
            }
            if (result_1 === 'Image is available to use') {
                $('#result_3').removeClass().addClass('available');
                isBirdImgAvailable = true;
            } 
             enableSubmitButton();
          
        }
    });
}
;

jQuery(document).ready(function () {
    var isUsernameAvailable = false;
    var isEmailAvailable = false;
    var isPhoneAvailable = false;
    var isBirdImgAvailable = true;
    
    $('#bird_image_dash').change(function () {
    var myemail = $('#bird_image_dash').val();
    $.ajax({
        type: 'POST',
        data: {bird_image_dash: myemail},
        url: '../ImageUpdateBirdController',
        success: function (result_1) {
            $('#result_3').html(result_1);
            
              if (result_1 === 'Allowed JPG, or PNG, try another') {
                $('#result_3').removeClass().addClass('already-exists');
                isBirdImgAvailable = false;
            }
            if (result_1 === 'Image is available to use') {
                $('#result_3').removeClass().addClass('available');
                isBirdImgAvailable = true;
            } 
             enableSubmitButton();
          
        }
    });
});


    $('#myuser').change(function () {
        var myuser = $('#myuser').val();
        $.ajax({
            type: 'POST',
            data: {myuser: myuser},
            url: '../UsernameCheckController',
            success: function (result) {
                $('#result').html(result);

                if (result === 'Username is available to use !') {
                    $('#result').removeClass().addClass('available');
                    isUsernameAvailable = true;
                } else if (result === 'This username has been taken, try another !' || result === 'Username must at least 8 characters !') {
                    $('#result').removeClass().addClass('already-exists');
                    isUsernameAvailable = false;
                }

                enableSubmitButton();
            }
        });
    });

    $('#myemail').change(function () {
        var myemail = $('#myemail').val();
        $.ajax({
            type: 'POST',
            data: {myemail: myemail},
            url: '../EmailCheckController',
            success: function (result_1) {
                $('#result_1').html(result_1);

                if (result_1 === 'Email is available to use !') {
                    $('#result_1').removeClass().addClass('available');
                    isEmailAvailable = true;
                } else if (result_1 === 'This email has been taken, try another !' || result_1 === 'It looks like you may have entered an incorrect email!') {
                    $('#result_1').removeClass().addClass('already-exists');
                    isEmailAvailable = false;
                }

                enableSubmitButton();
            }
        });
    });
    $('#myphone').change(function () {
        var myphone = $('#myphone').val();
        $.ajax({
            type: 'POST',
            data: {myphone: myphone},
            url: '../PhoneCheckController',
            success: function (result_2) {
                $('#result_2').html(result_2);

                if (result_2 === 'Phone is available to use !') {
                    $('#result_2').removeClass().addClass('available');
                    isPhoneAvailable = true;
                } else if (result_2 === 'This phone has been taken, try another !' || result_2 === 'It looks like you may have entered an incorrect phone!') {
                    $('#result_2').removeClass().addClass('already-exists');
                    isPhoneAvailable = false;
                }

                enableSubmitButton();
            }
        });
    });

    function enableSubmitButton() {
        if (isUsernameAvailable && isEmailAvailable && isPhoneAvailable && isBirdImgAvailable) {
            $('#submit').prop('disabled', false);
        } else {
            $('#submit').prop('disabled', true);
        }
    }

});
