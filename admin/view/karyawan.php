<div class="page-title">
	<div class="title_left">
		<h3>Data Karyawan</h3>
	</div>
</div>

<div class="clearfix"></div>

<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">		
		<div class="x_panel">
			<div class="x_content">
				<div class="form-group input-group">
                    <button type="button" id="btn_add" class="btn btn-sm btn-primary" data-toggle="modal">
                        <i class="fa fa-plus"></i>
                        Add karyawan
                    </button>                    
                </div>
                <table id="lookup" class="table table-striped table-hover table-bordered table-responsive table-condensed dt-responsive nowrap" style="width: 100%;">
                    <thead>
                        <tr>
                        	<th width="30px" class="nosort">Act</th>
                            <th>NIP</th><th>Nama</th> 
                            <th>Jabatan</th><th>Golongan</th>
                            <th>Alamat</th><th>No. Tlp</th>
                        </tr>
                    </thead>
                    <tbody>                        
                    </tbody>
                </table>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>

<div id="add_model" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">            
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <form id="form_karyawan" novalidate="novalidate">
                <div class="modal-body">
                    <input type="hidden" value="add" name="action" id="action">
                    <input type="hidden" value="0" name="edit_id" id="edit_id">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-4">
                                <label for="nip" class="control-label">NIP:</label>
                                <input type="text" class="form-control input-sm" id="nip" name="nip" placeholder="N.I.P" />
                            </div>
                            <div class="col-sm-7">
                                <label for="nama" class="control-label">Nama:</label>
                                <input type="text" class="form-control input-sm" id="nama" name="nama" placeholder="Nama Karyawan" />
                            </div>
                        </div>                            
                    </div>                        
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-4">
                                <label for="jabatan" class="control-label">Jabatan:</label>
                                <select name="jabatan" id="jabatan" class="form-control input-sm">
                                    <option value="">...</option>                                    
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <label for="golongan" class="control-label">Golongan:</label>
                                <select name="golongan" id="golongan" class="form-control input-sm">
                                    <option value="">...</option>                                    
                                </select>
                            </div>
                        </div>                        
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-5">
                                <label for="alamat" class="control-label">Alamat:</label>
                                <textarea name="alamat" id="alamat" class="form-control" rows="4" cols="3"></textarea>
                            </div>
                            <div class="col-sm-3">
                                <label for="tlp" class="control-label">Tlp:</label>
                                <input type="number" class="form-control input-sm required" id="tlp" name="tlp" placeholder="No. Telepon" min="0" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-3">
                                <label for="peran" class="control-label">Peran:</label>
                                <select name="peran" id="peran" class="form-control input-sm">
                                    <option value="">...</option>                                    
                                </select>
                            </div>                            
                        </div>                        
                    </div>                    
                </div>
                <div class="modal-footer">
                    <div class="">
                        <button type="button" id="btn_cancel" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                        <button type="submit" id="btn_add" class="btn btn-sm btn-primary">Save</button>
                    </div>                        
                </div>
            </form>
        </div>
    </div>
</div>
