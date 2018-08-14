$(document).ready(function () {    

    $('#btn_add').click(function (e) {
        e.preventDefault();

        $('#add_model').modal({backdrop: 'static', keyboard: false});
        $('.modal-title').html('Tambah data karyawan');
        $('#action').val('add');
        $('#edit_id').val(0);
    });
    

    $('#btn_cancel').click(function () {
        var $form = $('#form_karyawan');
        $form.trigger('reset');        
        $form.validate().resetForm();
        $form.find('.error').removeClass('error');
    });    

    var items_jabatan = '';
    var items_golongan = '';
    var items_peran = '';
    $.ajax({
        url: 'application/jabatan/option_jabatan.php',
        dataType: 'JSON',
        success: function(data) {
            $.each(data, function (key, value) {
                items_jabatan += '<option value="' + value.id + '">' + value.jabatan + '</option>';
            });

            $('#jabatan').append(items_jabatan);
        }        
    });    

    $.ajax({
        url: 'application/golongan/option_golongan.php',
        dataType: 'JSON',
        success: function(data) {
            $.each(data, function (key, value) {
                items_golongan += '<option value="' + value.id + '">' + value.golongan + '</option>';
            });

            $('#golongan').append(items_golongan);
        }        
    });

    $.ajax({
        url: 'application/peran/option_peran.php',
        dataType: 'JSON',
        success: function(data) {
            $.each(data, function (key, value) {
                items_peran += '<option value="' + value.id + '">' + value.peran + '</option>';
            });

            $('#peran').append(items_peran);
        }        
    });

    var dataTable = $('#lookup').DataTable({        
        'aoColumnDefs': [
            {'bSortable': false, 'aTargets': ['nosort']},
            {'sClass': 'status', 'aTargets': [0]}
        ],
        'processing': true,
        'serverSide': true,
        'ajax': {
            type: 'POST',
            dataType: 'JSON',
            url: 'application/karyawan/ajax.php',
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
                    $('.modal-title').html('Edit karyawan');
                    $('#action').val('edit');
                    $('#edit_id').val(id);

                    v_edit = $.ajax({
                        url: 'application/karyawan/edit_karyawan.php?id='+id,
                        type: 'POST',
                        dataType: 'JSON',
                        success: function(data) {
                            $('#nip').val(data.nip);
                            $('#nama').val(data.nama_karyawan);
                            $('#jabatan').val(data.id_jabatan);
                            $('#golongan').val(data.id_golongan);  
                            $('#alamat').val(data.alamat); 
                            $('#tlp').val(data.tlp);
                            $('#peran').val(data.id_peran);
                        }
                    });
                    
                }else if(com == 'Delete') {
                    var conf = confirm('Delete this items ?');
                    var url = 'application/karyawan/data_karyawan.php';

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

    $('#form_karyawan').validate({
        rules: {
            nip: {
                required: true                
            },
            nama: {
                required: true                
            },
            alamat: {
                required: true
            },            
            tlp: {
                required: true
            },
            jabatan: {
                required: true
            },
            golongan: {
                required: true
            },
            peran: {
                required: true
            }
        },
        messages: {
            nip: {
                required: ' *) nip is required'               
            },
            nama: {
                required: '*) Nama karyawan is required'                
            },
            alamat: {
                required: '*) alamat is required'
            },            
            tlp: {
                required: '*) No. Telepon is required'
            },
            jabatan: {
                required: '*) Choose one'
            },
            golongan: {
                required: '*) Choose one'
            },
            peran: {
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

            $('#form_karyawan').trigger('reset');
        }
    });//end validate
});

function ajaxAction(action) {
    data = $('#form_karyawan').serializeArray();
    var table = $('#lookup').DataTable();

    v_dump = $.ajax({
        url: 'application/karyawan/data_karyawan.php',
        type: 'POST',
        dataType: 'JSON',
        data: data,        
        success: function(response) {
            $('#add_model').modal('hide');      
            table.ajax.reload();            
        }
    });   
    console.log(v_dump) 
}
