<div class="page-title">
	<div class="title_left">
		<h3>Artikel</h3>
	</div>
</div>

<div class="clearfix"></div>

<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">		
		<div class="x_panel">
			<div class="x_content">
				<div id="artikel_list">
					<div class="form-group input-group">
						<button type="button" id="btn_add" class="btn btn-sm btn-primary" data-toggle="modal">
							<i class="fa fa-plus"></i>
							Add artikel
						</button>                    
					</div>
					<table id="lookup" class="table table-striped table-hover table-bordered table-responsive table-condensed" style="width: 100%;">
						<thead>
							<tr>
								<th width="30px" class="nosort">Act</th>
								<th>Judul</th><th>Konten</th>
							</tr>
						</thead>
						<tbody>                        
						</tbody>
					</table>
				</div>

				<div id="artikel_field" style="display: none;">
					<h4 id="artikel_field_title"></h4>

					<form method="post" id="form_artikel" novalidate="novalidate">
						<input type="hidden" name="action" id="action" value="add">
						<input type="hidden" name="edit_id" id="edit_id" value="0">
						<input type="hidden" name="date" id="date" value="<?=date('Y-m-d H:i:s')?>">
						<input type="hidden" name="user" id="user" value="admin">

						<div class="form-group">                			
							<input type="text" name="judul" id="judul" class="form-control required" placeholder="Judul artikel">
						</div>
						<div class="form-group">
							<textarea name="konten" id="konten" class="mceEditor"></textarea>
						</div>                		
						<div class="form-group">
							<button type="submit" name="btn_add" id="btn_add" class="btn btn-sm btn-primary">
								<i class="fa fa-save"></i>
								Simpan
							</button>
							<button type="button" name="btn_cancel" id="btn_cancel" class="btn btn-sm btn-danger">
								<i class="fa fa-refresh"></i>
								Cancel
							</button>
							<div id="err-loading"></div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
