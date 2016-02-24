<!doctype html>
<?php
	  
session_start();
$ip=$_SERVER['REMOTE_ADDR'];
//$mac = shell_exec('arp '.$ip.' | awk \'{print $4}\'');

//Server Starting connection.
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "cipproject";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
     $errors='2';
} 

if(isset($_POST["username"])&& isset($_POST["pwd"])){
	
	//POST METHOD. Check Authentication and Set session variables.
	$chkuname = $_POST["username"];
	$chkpass = $_POST["pwd"];

	//Do Authentication
	$sql="SELECT * from customers where name='$chkuname' AND password='$chkpass'";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $_SESSION["ip"] = $ip;
  		$_SESSION["uname"]= $chkuname;
  		echo '<script type="text/javascript">
	    	window.location = "index.php"
		</script>';
    }
	}else{
		//if Failes
		$errors = '1';
		echo '<script type="text/javascript">
	    	window.location = "login.php"
		</script>';
	}

}
else{
	if(isset($_SESSION["ip"]) && isset($_SESSION["uname"])) {
		echo '<script type="text/javascript">
		    	window.location = "index.php"
			</script>';
	}
	//GET METHOD. Create a Token ID for Post Procession
	$sql="SELECT id FROM customers";
	if ($result=mysqli_query($conn,$sql))
	  $rowcount=mysqli_num_rows($result);
	$rowcount++;
	$genusername = 'CIP00'.$rowcount;
	$genpass = bin2hex(openssl_random_pseudo_bytes(3));

	$sql = "INSERT INTO customers (name, password, checkin) VALUES ('$genusername', '$genpass', '0')";
	$result = $conn->query($sql);
}
?>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<meta name="keywords" content="CIP Project" />
		<meta name="description" content="CIP Project">
		<meta name="author" content="okler.net">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-datepicker/css/datepicker3.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="assets/stylesheets/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css">

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>

	</head>
	<body>
		<!-- start: page -->
		<section class="body-sign">
			<div class="center-sign">
				<?php
					if(isset($errors))
					{
						if($errors == '1'){
							echo "<div class=\"alert alert-danger\">
		  					<strong>Error!</strong> Wrong Username and Password.!!
							</div>";
						}
						else if($errors == '2'){
							die("<div class=\"alert alert-danger\">
						  	<strong>Failure: </strong>" . $conn->connect_error . "!!!</div>");
						    echo '<script type="text/javascript">
						         window.location = "/php/index.php"
						    </script>';
						}
					}
				?>
				<a href="/" class="logo pull-left">
					<img src="#" height="54" alt="CIP Project" />
				</a>

				<div class="panel panel-sign">
					<div class="panel-title-sign mt-xl text-right">
						<h2 class="title text-uppercase text-bold m-none"><i class="fa fa-user mr-xs"></i> Sign In</h2>
					</div>
					<div class="panel-body">
						<form action="login.php" method="post">
							<div class="form-group mb-lg">
								<label>Username</label>
								<div class="input-group input-group-icon">
									<input name="username" type="text" class="form-control input-lg" />
									<span class="input-group-addon">
										<span class="icon icon-lg">
											<i class="fa fa-user"></i>
										</span>
									</span>
								</div>
							</div>

							<div class="form-group mb-lg">
								<div class="clearfix">
									<label class="pull-left">Password</label>
									<a href="pages-recover-password.html" class="pull-right">Lost Password?</a>
								</div>
								<div class="input-group input-group-icon">
									<input name="pwd" type="password" class="form-control input-lg" />
									<span class="input-group-addon">
										<span class="icon icon-lg">
											<i class="fa fa-lock"></i>
										</span>
									</span>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-8">
									<div class="checkbox-custom checkbox-default">
										<input id="RememberMe" name="rememberme" type="checkbox"/>
										<label for="RememberMe">Remember Me</label>
									</div>
								</div>
								<div class="col-sm-4 text-right">
									<button type="submit" class="btn btn-primary hidden-xs">Sign In</button>
									<button type="submit" class="btn btn-primary btn-block btn-lg visible-xs mt-lg">Sign In</button>
								</div>
							</div>

							<span class="mt-lg mb-lg line-thru text-center text-uppercase">
								<span>or</span>
							</span>

							<div class="mb-xs text-center">
								<p class="text-center">Token Username :<?php echo $genusername; ?> and Password: <?php echo $genpass; echo " IP: ".$ip; ?></p>
							</div>

							<p class="text-center"><a href="adminlogin.php">Admin Login </a></p>

						</form>
					</div>
				</div>

				<p class="text-center text-muted mt-md mb-md">&copy; Copyright 2016. All Rights Reserved.</p>
			</div>
		</section>
		<!-- end: page -->

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>

	</body>
</html>