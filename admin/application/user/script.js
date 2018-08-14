$(document).ready(function () {    

    $('#btn_add').click(function (e) {
        e.preventDefault();

        $('#add_model').modal({backdrop: 'static', keyboard: false});
        $('.modal-title').html('Add new user');
        $('#action').val('add');
        $('#edit_id').val(0);
    });
    

    $('#btn_cancel').click(function () {
        var $form = $('#form_users');
        $form.trigger('reset');        
        $form.validate().resetForm();
        $form.find('.error').removeClass('error');
    });    

    var items_role = '';
    $.ajax({
        url: 'application/user/option_role.php',        
        dataType: 'JSON',
        success: function(data) {
            $.each(data, function (key, value) {
                items_role += '<option value="' + value.id + '">' + value.role_user + '</option>';
            });

            $('#role').append(items_role);            
        }        
    });    

    var dataTable = $('#lookup').DataTable({
        'autoWidth': false,
        'aoColumnDefs': [
            {'bSortable': false, 'aTargets': ['nosort']},
            {'sClass': 'status', 'aTargets': [4]}
        ],
        'processing': true,
        'serverSide': true,
        'ajax': {
            type: 'POST',
            dataType: 'JSON',
            url: 'application/user/ajax.php',
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
            
            $('#lookup td.status').each(function() {
                var status = $(this).html();
                switch(status) {
                    case 'Inactive': $(this).addClass('status-inactive'); break;
                    case 'Active': $(this).addClass('status-active'); break;
                    default: return;
                }
            });
                                    
            $('.act_btn').each(function() {
                $(this).tooltip({
                    html: true
                });
            });

            $('.act_btn').on('click', function(e) {
                e.preventDefault();
                var com = $(this).attr('data-original-title');
                var id = $(this).attr('id');

                if(com == 'Edit') {
                    $('#add_model').modal({backdrop: 'static', keyboard: false});
                    $('.modal-title').html('Edit user');
                    $('#action').val('edit');
                    $('#edit_id').val(id);

                    v_edit = $.ajax({
                        url: 'application/users/edit_user.php?id='+id,
                        type: 'POST',
                        dataType: 'JSON',
                        success: function(data) {
                            $('#username').val(data.username);
                            $('#password').val(data.password);
                            $('#fname').val(data.nama);
                            $('#role').val(data.role);                            
                            $('#status').val(data.status);                            
                        }
                    });
                    
                }else if(com == 'Delete') {
                    var conf = confirm('Delete this items ?');
                    var url = 'application/user/data_user.php';

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

    $('#form_users').validate({
        rules: {
            username: {
                required: true,
                minlength: 4
            },
            password: {
                required: true,
                pwcheck: /^[A-Za-z0-9\d=!\-@._*]+$/,
                minlength: 6
            },
            fname: {
                required: true
            },            
            role: {
                required: true
            },
            status: {
                required: true
            }

        },
        messages: {
            username: {
                required: ' *) Username is required',
                minlength: 'min 4 characters'
            },
            password: {
                required: '*) Password is required',
                pwcheck: 'at least capital, lower and numeric allowed',
                minlength: 'min 6 characters'
            },
            fname: {
                required: '*) Full name is required'
            },            
            role: {
                required: '*) Choose one'
            },
            status: {
                required: '*) Choose one'
            }
        },
        submitHandler: function (form) {
            var com_action = $('#action').val();
            if(com_action == 'add') {
                ajaxAction('add');
            }else if(com_action == 'edit') {
                ajaxAction('edit');
            }

            $('#form_users').trigger('reset');
        }
    });//end validate
    $.validator.addMethod("pwcheck", function (value, element, regexpr) {
        return regexpr.test(value);
    });

});

function ajaxAction(action) {
    data = $('#form_users').serializeArray();
    var table = $('#lookup').DataTable();

    v_dump = $.ajax({
        url: 'application/user/data_user.php',
        type: 'POST',
        dataType: 'JSON',
        data: data,        
        success: function(response) {
            $('#add_model').modal('hide');            
            table.ajax.reload();            
        }
    });    
}
