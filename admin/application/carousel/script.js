$(document).ready(function () {    

    $('#btn_add').click(function (e) {
        e.preventDefault();

        $('#carousel_field').css('display', 'block');
        $('#carousel_list').hide();
        $('#carousel_field_title').html('Tambah carousel');

        $('#action').val('add');
        $('#edit_id').val(0);
    });
    

    $('#btn_cancel').click(function () {
        var $form = $('#form_carousel');
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
            url: 'application/carousel/ajax.php',
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

                    $('#carousel_field').css('display', 'block');
                    $('#carousel_list').hide();
                    $('#carousel_field_title').html('Edit carousel');

                    $('#action').val('edit');
                    $('#edit_id').val(id);

                    v_edit = $.ajax({
                        url: 'application/carousel/edit_carousel.php?id='+id,
                        type: 'POST',
                        dataType: 'JSON',
                        success: function(data) {

                            $('#deskripsi').val(data.deskripsi);                            
                        }
                    });

                    console.log(v_edit)
                    
                }else if(com == 'Delete') {
                    var conf = confirm('Delete this items ?');
                    var url = 'application/carousel/data_carousel.php';

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

    $('#form_carousel').validate({
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

            $('#form_carousel').trigger('reset');
        }
    });//end validate

    $("#xUpload").on('change', function () {

        var imgPath = $(this)[0].value;
        var extn = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();

        if (extn == "gif" || extn == "png" || extn == "jpg" || extn == "jpeg") {
            if (typeof (FileReader) != "undefined") {

                var image_holder = $("#iOutput");
                image_holder.empty();

                var reader = new FileReader();
                reader.onload = function (e) {
                    $("<img />", {
                        "src": e.target.result,
                        "class": "thumb-image"
                    }).appendTo(image_holder);

                }
                image_holder.show();
                reader.readAsDataURL($(this)[0].files[0]);
            } else {
                swal({
                    title: "Warning",
                    text: "This browser does not support FileReader.",
                    type: "Warning"
                });
                return;                
            }
        } else {
            swal({
                    title: "Warning",
                    text: "Please select image files",
                    type: "Warning"
                });
                return;
        }
    });//end image thumb
});

function ajaxAction(action) {

    var table = $('#lookup').DataTable();
    data = $('#form_carousel').serializeArray();
    
    v_dump = $.ajax({
        beforeSend: function() {
            $('#err-loading').css('display', 'inline', 'important');
            $('#err-loading').html("<img src='theme/asset/images/loading.gif' height='20px' /> Please wait...");
        },
        url: 'application/carousel/data_carousel.php',
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
