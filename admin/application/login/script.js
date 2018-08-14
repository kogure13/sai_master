$(document).ready(function (){

	$('#login_form').validate({
		rules: {},
		messages: {
			username: "<span class='text-warning'> Username is required</span>",
			password: "<span class='text-warning'> Password is required</span>"
		},
		tooltip_options: {
			username: {placement:'left', html: true},
			password: {placement:'left', html: true}
        },
		submitHandler: function(form) {

			$('#login_form').trigger('reset');
		}
	});//end validate
});

function ajaxAction() {
	data = $('#login_form').serializeArray();

	v_dump = $.ajax({
        url: 'application/login/data_login.php',
        type: 'post',
        dataType: 'json',
        data: data,
        success: function (response) {
            if(response == 1) {
                window.location = "index.php";
            }else if(response == 0){
                $('#err-login').hide();
                alert('Username or Password incorrect');
            }

        },
        beforeSend: function () {
            $('#err-login').css('display', 'inline', 'important');
            $('#err-login').html("<img src='theme/asset/images/loading.gif' height='20px' /> Loading...");
        }
    });
}