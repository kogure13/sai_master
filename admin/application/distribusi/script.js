$(document).ready(function(){

	$('.compose-items').on('click', function(e) {
		e.preventDefault();

		var id = $(this).attr('id');

		$('#add_model').modal({backdrop: 'static', keyboard: false});

		if(id == "distribusi") {
			$('.modal-title').html('Lembar Disposisi Distribusi');
			$('.modal-body').load('application/distribusi/distribusi_add.php');
		}
		else if(id == "upload") {
			$('.modal-title').html('Upload distribusi');
			$('.modal-body').load('application/distribusi/distribusi_upload.php');
		}		
	});

	$('#btn_cancel').click(function () {
        var $form = $('#form_distribusi');
        $form.trigger('reset');        
        $form.validate().resetForm();
        $form.find('.error').removeClass('error');
    });
});