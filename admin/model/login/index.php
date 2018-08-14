<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Login - <?=app_name?></title>
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="vendors/bootstrap/dist/css/bootstrap.min.css">	
	<link rel="stylesheet" type="text/css" href="vendors/font-awesome/css/font-awesome.min.css">	
	<link rel="stylesheet" type="text/css" href="vendors/nprogress/nprogress.css">	
	<link rel="stylesheet" type="text/css" href="vendors/animate.css/animate.min.css">	
	<link rel="stylesheet" type="text/css" href="build/css/custom.min.css">
	<style type="text/css">
		.error {
			text-align: left;
			color: #F44336
		}

		#link_site {
			cursor: pointer;
		}
	</style>
</head>

<body class="login">
	<div>
		<a class="hiddenanchor" id="signup"></a>
		<a class="hiddenanchor" id="signin"></a>

		<div class="login_wrapper">
			<div class="animate form login_form">
				<section class="login_content">
					<form method="post" name="login_form" id="login_form" novalidate="novalidate">
						<h1>Login Form</h1>
						<div class="form-group">
							<input type="text" name="username" id="username" class="form-control" placeholder="Username" required="required">							
						</div>
						<div class="form-group">
							<input type="password" name="password" id="password" class="form-control" placeholder="Password" required="required">	
						</div>
						<div>
							<button type="submit" class="btn btn-sm btn-default">
								<i class="fa fa-sign-in fa-fw"></i>
								Log in
							</button>
							<div id="err-login"></div>						
						</div>
						<div class="clearfix"></div>
						<div class="separator">							
							<div class="clearfix"></div>
							<br />
							<div>
								<h1 id="link_site"><i class="fa fa-globe"></i> <?=app_name?></h1>								
								<p>&copy; 2016-<?=date('Y')?> All Rights Reserved. <?=site_name?></p>
							</div>
						</div>
					</form>					
				</section>
			</div>			
		</div>
	</div>

	<!-- Javascript -->	
	<script src="vendors/jquery/dist/jquery.min.js"></script>       
	<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>	
    <script src="vendors/fastclick/lib/fastclick.js"></script>    
    <script src="vendors/nprogress/nprogress.js"></script>
    
    <!-- validate -->
    <script src="build/js/jquery.validate.min.js"></script>
    <script src="build/js/jquery-validate.bootstrap-tooltip.js"></script>

    <script src="application/login/script.js"></script>
    <script type="text/javascript">
    	$(document).ready(function() {
    		$('#link_site').on('click', function() {
    			window.location.href = '../index.php';
    		});
    	});    		
	</script>
</body>
</html>
