<div class="page-title">
	<div class="title_left">
		<h3>Data User</h3>
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
                        Add Users
                    </button>                    
                </div>
                <table id="lookup" class="table table-striped table-hover table-bordered table-responsive table-condensed">
                    <thead>
                        <tr>                            
                            <th>Username</th><th>Full name</th>                            
                            <th>Role</th><th>Status Pegawai</th><th>Satus Active</th>
                            <th width="30px" class="nosort">Act</th>
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
            <form id="form_users" novalidate="novalidate">
                <div class="modal-body">
                    <input type="hidden" value="add" name="action" id="action">
                    <input type="hidden" value="0" name="edit_id" id="edit_id">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-6">
                                <label for="username" class="control-label">Username:</label>
                                <input type="text" class="form-control input-sm" id="username" name="username" placeholder="Input Username" />
                            </div>
                            <div class="col-sm-6">
                                <label for="password" class="control-label">Password:</label>
                                <input type="password" class="form-control input-sm" id="password" name="password" placeholder="Input Password" />
                            </div>
                        </div>                            
                    </div>                        
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-3">
                                <label for="status" class="control-label">Status Pegawai</label>
                                <select name="Speg" id="Speg" class="form-control input-sm">
                                    <option value="">...</option>
                                    <option value="1">Pegawai</option>
                                    <option value="0">Non-pegawai</option>                                
                                </select>
                            </div>
                            <div class="col-sm-5">
                                <label for="nama_user" class="control-label">Full name:</label>
                                <input type="hidden" name="karyawan_id" id="karyawan_id">
                                <input type="text" class="form-control input-sm" id="fname" name="fname" placeholder="Input Full Name" />    
                            </div>                            
                        </div>                        
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-5">
                                <label for="role" class="control-label">Role:</label>
                                <select name="role" id="role" class="form-control input-sm">
                                    <option value="">...</option>                                    
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <label for="status" class="control-label">Status Active</label>
                                <select name="status" id="status" class="form-control input-sm">
                                    <option value="">...</option>
                                    <option value="1">Active</option>
                                    <option value="0">Inactive</option>                                
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
