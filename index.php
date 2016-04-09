<!doctype html>
<?php
// Start the session
session_start();
//ini_set("display_errors", 1);
//error_reporting(-1);
      $ip=$_SERVER['REMOTE_ADDR'];
//      $mac = shell_exec('arp '.$ip.' | awk \'{print $4}\'');
      if(!isset($_SESSION["ip"]) && !isset($_SESSION["uname"])) {
	      echo '<script type="text/javascript">
	                 window.location = "login.php"
	            </script>';
      }
      	$servername = "localhost";
		$username = "root";
		$password = "root";
		$dbname = "cipproject";
		$user=$_SESSION["uname"];


		// Create connection
		$conn = new mysqli($servername, $username, $password, $dbname);
		// Check connection
		if ($conn->connect_error) {
		     $errors='2';
		}
		//Get count of previous orders!!!
		$sql = "SELECT * FROM orders where username='$user'";
		$result = $conn->query($sql); 
		$id=0;
		while($row = $result->fetch_assoc()) {
	         $id++;
	    }

	    //Recommendation
	    for($i=1;$i<5;$i++)
	    {	
	    	$j=0;
	    	$sqlforrec="SELECT itemID2 , ( sum / count ) AS average
					FROM dev
					WHERE count > 2 AND itemID1 = $i
					ORDER BY ( sum / count ) DESC
					LIMIT 10";
			$resultsqlrec =$conn->query($sqlforrec);
			while($row = $resultsqlrec->fetch_assoc()){
				$Item[$j]=$i;
				$average[$j]=$row['average'];
				$j=$j+1;
			}
		}
		function cmp( $a, $b ) { 
  			if(  $a->weight ==  $b->weight ){ return 0 ; } 
  			return ($a->weight < $b->weight) ? -1 : 1;
		}
		usort($average,'cmp');


	    //Recommendation
	    $sqlrand = "SELECT * FROM menucard ORDER BY RAND() LIMIT 1";
	    $resultran = $conn->query($sqlrand);
	    while($row = $resultran->fetch_assoc()) {
	        $foodname = $row['food'];
	    }

	    //Getting Token Number
	    $sqlt = "SELECT count(*) as total from tokengiver where username = '$user' ORDER BY id DESC";
	    $rr = $conn->query($sqlt);
	    while($resultcount = $rr->fetch_assoc()) {
		if($resultcount['total']==0)
		{
			$tokennum = "No Token";
		}
		else
		{
			$sqltoken = "SELECT * FROM tokengiver where username='$user' ORDER BY id desc";
			$result = $conn->query($sqltoken);
			while($row = $result->fetch_assoc()) {
	         $tokennum = $row['id'];
	    	}
		}
		}

			//To get Serving Queue
	    	$sqlserve = "SELECT * FROM tokengiver";
			$result2 = $conn->query($sqlserve);
			$idsum = mysqli_num_rows($result2);
			while($row = $result2->fetch_assoc()) {
	    		$chkpt = $row['id'];
	    		$idsum++;
	    	}
	    	//Serving Queue;
			if($idsum == 0 )
				$servingqueue = '100';
			else
			{
				$servingqueue = 100 - $chkpt;
			}

			//Get Serving time from all 2 tables

			//getting user id
			$sqlidget = "SELECT id from customers where name = '$user'";
			$ridget = $conn->query($sqlidget);
			while($row = $ridget->fetch_assoc()){
				$userid = $row['id'];
			}
			
			//table 1
			$sqlidmas1 = "SELECT id from idmaster where userid = '$userid' ORDER BY id DESC";
			$ridmas = $conn->query($sqlidmas1);
			$row2 = $ridmas->fetch_assoc();
			$lastididmas = $row2['id'];
			$sqlidtime = "SELECT SUM(time) as tot from idmaster where id <='$lastididmas'";
			$ridtime = $conn->query($sqlidtime);
			$row3 = $ridtime->fetch_assoc();
			$idmasttime = $row3['tot'];

			//table 2
			$sqlchmas1 = "SELECT id from chmaster where userid = '$userid' ORDER BY id DESC";
			$rchmas = $conn->query($sqlchmas1);
			$row4 = $rchmas->fetch_assoc();
			$lastidchmas = $row4['id'];
			$sqlchtime = "SELECT SUM(time) as tot from chmaster where id <='$lastididmas'";
			$rchtime = $conn->query($sqlchtime);
			$row5 = $rchtime->fetch_assoc();
			$chmasttime = $row5['tot'];

			//table 3
			$sqlffmas1 = "SELECT id from ffmaster where userid = '$userid' ORDER BY id DESC";
			$rffmas = $conn->query($sqlffmas1);
			$row6 = $rffmas->fetch_assoc();
			$lastffchmas = $row6['id'];
			$sqlfftime = "SELECT SUM(time) as tot from chmaster where id <='$lastididmas'";
			$rfftime = $conn->query($sqlfftime);
			$row7 = $rfftime->fetch_assoc();
			$ffmasttime = $row7['tot'];

			if($idmasttime > $chmasttime)
			{
				if($idmasttime> $ffmasttime)
					$totaltimetoserve = $idmasttime;
				else
					$totaltimetoserve = $ffmasttime;
			}
			else
				$totaltimetoserve = $chmasttime;
			if($totaltimetoserve >60)
			{
				$errorval = "DoS attack alert! Contact ADMIN.";

			}

?>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>CIP Project</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="Porto Admin - Responsive HTML5 Template">
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

		<!-- Specific Page Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/jquery-ui/css/ui-lightness/jquery-ui-1.10.4.custom.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.css" />
		<link rel="stylesheet" href="assets/vendor/morris/morris.css" />

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
		<section class="body">

			<!-- start: header -->
			<header class="header">
				<div class="logo-container">
					<a href="../" class="logo">
						<img src="assets/images/annauniv.png" height="35" alt="CIP Project" />
					</a>
					<div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
						<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
					</div>
				</div>
			
				<!-- start: search & user box -->
				<div class="header-right">
					<div id="userbox" class="userbox">
						<a href="#" data-toggle="dropdown">
							<figure class="profile-picture">
								<img src="assets/images/!logged-user.jpg" alt=<?php echo $_SESSION["uname"] ?> class="img-circle" data-lock-picture="assets/images/!logged-user.jpg" />
							</figure>
							<div class="profile-info" data-lock-name=<?php echo $_SESSION["uname"] ?> data-lock-email=<?php echo $_SESSION["uname"] ?>>
								<span class="name">Welcome[<b><?php echo $_SESSION["uname"] ?></b>]</span>
								<span class="role">User</span>
								
							</div>
							
							<i class="fa custom-caret"></i>
						</a>
			
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="divider"></li>
								<li>
									<a role="menuitem" tabindex="-1" href="#" data-lock-screen="true"><i class="fa fa-lock"></i> Change Username</a>
								</li>
								<li>
									<a role="menuitem" tabindex="-1" href="logout.php"><i class="fa fa-power-off"></i> Logout</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- end: search & user box -->
			</header>
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<aside id="sidebar-left" class="sidebar-left">
				
					<div class="sidebar-header">
						<div class="sidebar-title">
							Navigation
						</div>
						<div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
							<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
						</div>
					</div>
				
					<div class="nano">
						<div class="nano-content">
							<nav id="menu" class="nav-main" role="navigation">
								<ul class="nav nav-main">
									<li class="nav-active">
										<a href="index.php">
											<i class="fa fa-home" aria-hidden="true"></i>
											<span>Welcome</span>
										</a>
									</li>
									<li>
										<a href="previousorder.php">
											<span class="pull-right label label-primary"><?php echo $id;?></span>
											<i class="fa fa-history" aria-hidden="true"></i>
											<span>Previous Orders</span>
										</a>
									</li>
									<li>
										<a href="addorder.php">
											<i class="fa fa-cutlery" aria-hidden="true"></i>
											<span>Add Order</span>
										</a>
									</li>
								</ul>
							</nav>
						</div>
				
					</div>
				
				</aside>
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Welcome</h2>
					</header>

					<!-- start: page -->
					<div class="row">
						<div class="col-md-6 col-lg-12 col-xl-6">
							<section class="panel">
								<div class="panel-body">
									<div class="row">
										<div class="col-lg-8">
											<div class="chart-data-selector" id="salesSelectorWrapper">
												<h2>
													Current Token on process: 
													<strong><?php echo $tokennum; ?></strong>
												</h2></br></br>
												<?php if(isset($errorval)) {echo $errorval;} else{ ?>
												<h3>You will be served after <?php echo $totaltimetoserve; ?>minutes if you order now!</h3>
												Scroll below to add an order.</br>
												New Orders get new Tokens Automatically.</br>
												Note: Predictable Token Number may vary from the token shown above.</br> <?php } ?>
											</div>
										</div>
										<div class="col-lg-4 text-center">
											<h2 class="panel-title mt-md">Your Serving</h2>
												<div class="circular-bar">
													<div class="circular-bar-chart" data-percent="<?php echo $servingqueue; ?>" data-plugin-options='{ "barColor": "#2BAAB1", "delay": 600 }'>
														<strong>Serving queue</strong>
														<label><span class="percent"><?php echo $servingqueue; ?></span>%</label>
													</div>
												</div>
										</div>
									</div>
								</div>
						</section>
						</div>
						<div class="col-md-6 col-lg-12 col-xl-6">
							<div class="row">
								<div class="col-md-12 col-lg-6 col-xl-6">
									<section class="panel panel-featured-left panel-featured-tertiary">
										<div class="panel-body">
											<div class="widget-summary">
												<div class="widget-summary-col widget-summary-col-icon">
													<div class="summary-icon bg-tertiary">
														<i class="fa fa-shopping-cart"></i>
													</div>
												</div>
												<div class="widget-summary-col">
													<div class="summary">
														<h4 class="title">Previous Orders</h4>
														<div class="info">
															<strong class="amount"><?php echo $id;?></strong>
														</div>
													</div>
													<div class="summary-footer">
														<a class="text-muted text-uppercase" href="previousorder.php">(view all)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
								<div class="col-md-12 col-lg-6 col-xl-6">
									<section class="panel panel-featured-left panel-featured-quartenary">
										<div class="panel-body">
											<div class="widget-summary">
												<div class="widget-summary-col widget-summary-col-icon">
													<div class="summary-icon bg-quartenary">
														<i class="fa fa-cutlery"></i>
													</div>
												</div>
												<div class="widget-summary-col">
													<div class="summary">
														<h4 class="title">Add Order</h4>
														<div class="info">
															<strong class="amount">Order Now!</strong>
														</div>
													</div>
													<div class="summary-footer">
														<a class="text-muted text-uppercase" href="addorder.php">(get me there!)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-12 col-xl-6">
							<div class="row">
								<div class="col-md-12 col-lg-6 col-xl-6">
									<section class="panel panel-featured-left panel-featured-tertiary">
										<div class="panel-body">
											<div class="widget-summary">
												<div class="widget-summary-col widget-summary-col-icon">
													<div class="summary-icon bg-tertiary">
														<i class="fa fa-shopping-cart"></i>
													</div>
												</div>
												<div class="widget-summary-col">
													<div class="summary">
														<h4 class="title">Recommended today</h4>
														<div class="info">
															<strong class="amount"><?php echo $foodname; ?></strong>
														</div>
													</div>
													<div class="summary-footer">
														<a class="text-muted text-uppercase" href="addorder.php">(view all)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
							</div>
						</div>
					</div>
			<!-- end: page -->
				</section>
			</div>
		</section>

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		<script src="assets/vendor/jquery-ui/js/jquery-ui-1.10.4.custom.js"></script>
		<script src="assets/vendor/jquery-ui-touch-punch/jquery.ui.touch-punch.js"></script>
		<script src="assets/vendor/jquery-appear/jquery.appear.js"></script>
		<script src="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
		<script src="assets/vendor/jquery-easypiechart/jquery.easypiechart.js"></script>
		<script src="assets/vendor/flot/jquery.flot.js"></script>
		<script src="assets/vendor/flot-tooltip/jquery.flot.tooltip.js"></script>
		<script src="assets/vendor/flot/jquery.flot.pie.js"></script>
		<script src="assets/vendor/flot/jquery.flot.categories.js"></script>
		<script src="assets/vendor/flot/jquery.flot.resize.js"></script>
		<script src="assets/vendor/jquery-sparkline/jquery.sparkline.js"></script>
		<script src="assets/vendor/raphael/raphael.js"></script>
		<script src="assets/vendor/morris/morris.js"></script>
		<script src="assets/vendor/gauge/gauge.js"></script>
		<script src="assets/vendor/snap-svg/snap.svg.js"></script>
		<script src="assets/vendor/liquid-meter/liquid.meter.js"></script>
		<script src="assets/vendor/jqvmap/jquery.vmap.js"></script>
		<script src="assets/vendor/jqvmap/data/jquery.vmap.sampledata.js"></script>
		<script src="assets/vendor/jqvmap/maps/jquery.vmap.world.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.africa.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.asia.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.australia.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.europe.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.north-america.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.south-america.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>


		<!-- Examples -->
		<script src="assets/javascripts/dashboard/examples.dashboard.js"></script>
	</body>
</html>