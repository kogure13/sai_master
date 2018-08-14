<div class="page-title">
	<div class="title_left">
		<h3>Carousel</h3>
	</div>
</div>

<div class="clearfix"></div>

<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">		
		<div class="x_panel">
			<div class="x_content">
				<div id="carousel_list">
					<div class="form-group input-group">
						<button type="button" id="btn_add" class="btn btn-sm btn-primary" data-toggle="modal">
							<i class="fa fa-plus"></i>
							Add Carousel
						</button>                    
					</div>
					<table id="lookup" class="table table-striped table-hover table-bordered table-responsive table-condensed" style="width: 100%;">
						<thead>
							<tr>
								<th width="30px" class="nosort">Act</th>
								<th>URL</th><th>Deskripsi</th>
							</tr>
						</thead>
						<tbody>                        
						</tbody>
					</table>
				</div>

				<div id="carousel_field" style="display: none;">
					<h4 id="carousel_field_title"></h4>

					<form method="post" id="form_carousel" novalidate="novalidate" enctype="multipart/form-data">
						<input type="hidden" name="action" id="action" value="add">
						<input type="hidden" name="edit_id" id="edit_id" value="0">                		

						<div class="form-group">
							<p class="help-block">Optimal Resolution : 620x300</p>
							<input type="file" name="xUpload" id="xUpload" class="required">
							<div id="iOutput"></div>
						</div>
						<div class="form-group">                			
							<input type="text" name="deskripsi" id="deskripsi" class="form-control required" placeholder="Deskripsi">
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
