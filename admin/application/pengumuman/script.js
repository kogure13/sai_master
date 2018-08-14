$(document).ready(function () {    

    $('#btn_add').click(function (e) {
        e.preventDefault();

        $('#pengumuman_field').css('display', 'block');
        $('#pengumuman_list').hide();
        $('#pengumuman_field_title').html('Tambah pengumuman');

        $('#action').val('add');
        $('#edit_id').val(0);
    });
    

    $('#btn_cancel').click(function () {
        var $form = $('#form_pengumuman');
        $form.trigger('reset');        
        $form.validate().resetForm();
        $form.find('.error').removeClass('error');
        window.location.reload();
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
            url: 'application/pengumuman/ajax.php',
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

            $('.act_btn').on('click', function(e) {
                e.preventDefault();
                var com = $(this).attr('data-original-title');
                var id = $(this).attr('id');

                if(com == 'Edit') {

                    $('#pengumuman_field').css('display', 'block');
                    $('#pengumuman_list').hide();
                    $('#pengumuman_field_title').html('Edit pengumuman');

                    $('#action').val('edit');
                    $('#edit_id').val(id);

                    v_edit = $.ajax({
                        url: 'application/pengumuman/edit_pengumuman.php?id='+id,
                        type: 'POST',
                        dataType: 'JSON',
                        success: function(data) {
                            $('#judul').val(data.judul);
                            var editor = tinymce.get('konten');
                            editor.setContent(data.pengumuman);
                        }
                    });

                    console.log(v_edit)
                    
                }else if(com == 'Delete') {
                    var conf = confirm('Delete this items ?');
                    var url = 'application/pengumuman/data_pengumuman.php';

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

    $('#form_pengumuman').validate({
        rules: {
            judul: { required: true}
        },
        messages: {
            judul: { required: ' *) Judul is required'}
        },
        submitHandler: function (form) {
            var com_action = $('#action').val();
            if(com_action == 'add') {
                ajaxAction('add');
            }else if(com_action == 'edit') {
                ajaxAction('edit');
            }

            $('#form_pengumuman').trigger('reset');
        }
    });//end validate

    tinymce.init({
        mode: 'textareas',
        editor_selector: "mceEditor",
        height: 350,
        theme: 'modern',
        setup: function(editor) {
            editor.on('change', function() {
                editor.save();
            });
        }, 
        plugins: [
            'advlist autolink lists link image charmap print preview hr anchor pagebreak',
            'searchreplace wordcount visualblocks visualchars code fullscreen',
            'insertdatetime media nonbreaking save table contextmenu directionality',
            'emoticons template paste textcolor colorpicker textpattern imagetools'
        ],
        toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
        toolbar2: 'print preview media | forecolor backcolor emoticons',
        image_advtab: true,
        templates: [
        {title: 'Test template 1', content: 'Test 1'},
        {title: 'Test template 2', content: 'Test 2'}
        ],
        content_css: [
            // '//fast.fonts.net/cssapi/e6dc9b99-64fe-4292-ad98-6974f93cd2a2.css',
            // '//www.tinymce.com/css/codepen.min.css'
        ]
    }); //end tinyMCE
});

function ajaxAction(action) {
    
    var table = $('#lookup').DataTable();
    data = $('#form_pengumuman').serializeArray();
    
    v_dump = $.ajax({
        beforeSend: function() {
            $('#err-loading').css('display', 'inline', 'important');
            $('#err-loading').html("<img src='theme/asset/images/loading.gif' height='20px' /> Please wait...");
        },
        url: 'application/pengumuman/data_pengumuman.php',
        type: 'POST',
        dataType: 'JSON',
        data: data,        
        success: function(response) {

            if(response == 0) {
                swal({
                    title: "Success",
                    text: "Data saved",
                    type: "success"
                }, function() {
                    location.reload();
                }, 500);
                return;
            }            
            table.ajax.reload();            
        }
    });   
    
}
