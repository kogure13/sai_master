$(document).ready(function (){

    $('#btn_cancel').on('click', function (){
        window.location.reload();
    });

	var dataTable = $('#lookup').DataTable({
        'autoWidth': false,
        'aoColumnDefs': [
            {'bSortable': false, 'aTargets': ['nosort']},
            {'sClass': 'status', 'aTargets': [0]}
        ],
        'processing': true,
        'serverSide': true,
        'ajax': {
            type: 'POST',
            dataType: 'JSON',
            url: 'application/golongan/ajax.php',
            error: function() {
                new PNotify({
                    title: 'Warning !',
                    text: 'Data not found.',
                    type: 'error',
                    delay: 1500,
                    styling: 'bootstrap3'
                });
            }
        },
        fnDrawCallback: function(oSettings) {                       
                                    
            $('.act_btn').each(function() {
                $(this).tooltip({
                    html: true
                });
            });

            $('.act_btn').on('click', function (e) {
                e.preventDefault();
                var com = $(this).attr('data-original-title');
                var id = $(this).attr('id');

                if(com == 'Edit') {                    
                    $('#action').val('edit');
                    $('#edit_id').val(id);

                    v_edit = $.ajax({
                        url: 'application/golongan/edit_golongan.php?id='+id,
                        type: 'POST',
                        dataType: 'JSON',
                        beforeSend: function () {
                        	$('#err-loading').css('display', 'inline', 'important');
            				$('#err-loading').html("<img src='theme/asset/images/loading.gif' height='20px' /> Loading...");
                        },
                        success: function(data) {
                        	$('#err-loading').hide(1300);
                            $('#golongan').val(data.golongan);
                        }
                    });
                    
                }else if(com == 'Delete') {
                    var conf = confirm('Delete this items ?');
                    var url = 'application/golongan/data_golongan.php';

                    if(conf) {
                        $.post(url, {id: id, action: com.toLowerCase()}, function() {
                            var table = $('#lookup').DataTable();
                            table.ajax.reload();
                        });
                    }
                }
            });
        }
    });//end datatable

	$('#form_golongan').validate({
		rules: {
			golongan: {
				required: true
			}
		},
		messages: {
			golongan: {
				required: ' *) field is required'
			}
		},
		submitHandler: function(form) {
			var com_action = $('#action').val();
            if(com_action == 'add') {
                ajaxAction('add');
            }else if(com_action == 'edit') {
                ajaxAction('edit');
            }

            $('#form_golongan').trigger('reset');
		}
	});
});

function ajaxAction(action) {
    data = $('#form_golongan').serializeArray();
    var table = $('#lookup').DataTable();

    v_dump = $.ajax({
        url: 'application/golongan/data_golongan.php',
        type: 'POST',
        dataType: 'JSON',
        data: data,        
        success: function(response) {
        	if(response == 1) {
        		new PNotify({
                    title: 'Warning !',
                    text: 'Data already exist.',
                    type: 'error',
                    delay: 1500,
                    styling: 'bootstrap3'
                });
        	}
            table.ajax.reload();            
        }
    });    
    console.log(v_dump)
}