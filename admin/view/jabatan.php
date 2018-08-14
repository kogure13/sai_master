<div class="page-title">
	<div class="title_left">
		<h3>Jabatan</h3>
	</div>
</div>

<div class="clearfix"></div>

<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">		
		<div class="x_panel">
			<div class="x_content">
				<form method="post" name="form_jabatan" id="form_jabatan" novalidate="novalidate">
					<input type="hidden" value="add" name="action" id="action">
                    <input type="hidden" value="0" name="edit_id" id="edit_id">                    
					<div class="form-group input-group">
						<input type="text" name="jabatan" id="jabatan" class="form-control required" placeholder="Jabatan">						
					</div>				
					<div class="form-group">
	                    <button type="submit" name="btn_add" id="btn_add" class="btn btn-sm btn-primary">
	                        <i class="fa fa-plus"></i>
	                        Add items
	                    </button>
	                    <button type="button" name="btn_cancel" id="btn_cancel" class="btn btn-sm btn-danger">
	                        <i class="fa fa-refresh"></i>
	                        Cancel
	                    </button>
	                    <div id="err-loading"></div>
	                </div>
				</form>

                <table id="lookup" class="table table-striped table-hover table-bordered table-responsive table-condensed">
                    <thead>
                        <tr>                                                        
                            <th width="30px" class="nosort">Act</th>
                            <th>Jabatan</th>
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

