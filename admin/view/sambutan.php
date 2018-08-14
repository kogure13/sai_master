<div class="page-title">
	<div class="title_left">
		<h3>Sambutan</h3>
	</div>
</div>

<div class="clearfix"></div>

<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">		
		<div class="x_panel">
			<div class="x_content">								
				<div id="sambutan_field">					
					<form method="post" id="form_sambutan" novalidate="novalidate">
						<input type="hidden" name="action" id="action" value="add">
						<input type="hidden" name="edit_id" id="edit_id" value="0">
						<div class="form-group">                			
							<input type="text" name="judul" id="judul" class="form-control required" placeholder="Judul Sambutan">
						</div>
						<div class="form-group">
							<textarea name="konten" id="konten" class="mceEditor"></textarea>
						</div>                		
						<div class="form-group">
							<button type="submit" name="btn_add" id="btn_add" class="btn btn-sm btn-success">
								<i class="fa fa-save"></i>
								Update
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
