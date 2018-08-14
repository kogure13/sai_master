<div class="page-title">
	<div class="title_left">
		<h3>Distribusi</h3>
	</div>
</div>

<div class="clearfix"></div>

<div class="row">
	<div class="x_panel">
		<div class="x_content">
			<div class="col-sm-3 mail_list_column">
				<div class="btn-group" style="width: 100%;">
					<button id="compose" data-toggle="dropdown" class="btn btn-sm btn-success btn-block" type="button" aria-expanded="false">						
						Compose
						<i class="caret"></i>
					</button>
					<ul roel="menu" class="dropdown-menu">
						<li>
							<a href="#" id="distribusi" class="compose-items" data-toggle="modal">
								Tambah distribusi
							</a>
						</li>
						<li>
							<a href="#" id="upload" class="compose-items" data-toggle="modal">
								Upload distibusi
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="col-sm-9 mail_view">
				<div class="inbox-body">
					<div class="mail_heading row">
						<div class="col-md-8"></div>
						<div class="col-md-4 text-right">
							<p class="date"></p>
						</div>
						<div class="col-md-12"></div>
					</div>
					<div class="sender-info"></div>
					<div class="view-mail"></div>
					<div class="attachment"></div>
				</div>
			</div>
		</div>
	</div>				
</div>

<div id="add_model" class="modal fade">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">            
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <form id="form_distribusi" novalidate="novalidate">
                <div class="modal-body">
                    
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
