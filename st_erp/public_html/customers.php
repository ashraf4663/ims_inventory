<?php
include_once("./database/constants.php");
if (!isset($_SESSION["userid"])) {
	header("location:".DOMAIN."/");
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>ST Customers Page</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
 	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 	<script type="text/javascript" src="./js/main.js"></script>
 </head>
<body>
	<!--<?php print_r($_SESSION)?> <br>-->
	<!-- Navbar -->
	<?php include_once("./templates/header.php"); ?>
	<br/><br/>
	
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">Customers</h4>
						<p class="card-text">Here you can manage your customers and you add new customer</p>
						<a href="#" data-toggle="modal" data-target="#form_customers" class="btn btn-primary">Add Customer</a>
						<a href="manage_product.php" class="btn btn-primary">Manage Customers</a>
					</div>
				</div>

			</div>
		</div>
	</div>

	 <?php
	//Products Form
	include_once("./templates/customer.php");
	 ?>


</body>
</html>