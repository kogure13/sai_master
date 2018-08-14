$(document).ready(function () {

    v_edit = $.ajax({
        url: 'application/sambutan/edit_sambutan.php',
        type: 'POST',
        dataType: 'JSON',
        success: function(data) {
            // var editor = tinymce.get('konten');
            // editor.setContent(data.kata);
            $('#konten').val(data.kata);
        }
    });

    console.log(v_edit)

    $('#form_sambutan').validate({
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

            $('#form_sambutan').trigger('reset');
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
    data = $('#form_sambutan').serializeArray();
    
    v_dump = $.ajax({
        beforeSend: function() {
            $('#err-loading').css('display', 'inline', 'important');
            $('#err-loading').html("<img src='theme/asset/images/loading.gif' height='20px' /> Please wait...");
        },
        url: 'application/sambutan/data_sambutan.php',
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
