<?php if($_SESSION['login']) {
?>

<div class="top-header">

    <div class="container">
        <ul class="tp-hd-lft wow fadeInLeft animated" data-wow-delay="0.3s">
 
            <li class="hm"><a href="index.html"><i class="fa fa-home"></i></a></li>
            <li class="prnt"><a href="profile.php">My Profile</a></li>
			<li class="prnt"><a href="change-password.php">Change Password</a></li>
			<li class="prnt"><a href="issuetickets.php">Issue Tickets</a></li>
		</ul>
        <ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay="0.3s">
            <li class="tol">Welcome :</li>
            <li class="sig"><?php echo htmlentities($_SESSION['login']);?></li>
            <li class="sigi"><a href="logout.php">/ Logout</a></li>
        </ul>
        <div class="clearfix"></div>

    </div>

</div><?php } else { ?> 
    <div class="top-header">
        <div class="container">
            <ul class="tp-hd-lft " >
               
                <li class="hm"><a href="index.php"><i class="fa fa-home"></i></a></li>
				<li class="hm"><a href="admin/index.php">TourGuide Login</a></li>
            </ul>
            <ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s"> 			
			<li class="sig"><a href="#" data-toggle="modal" data-target="#myModal" >Sign Up</a></li> 
			<li class="sigi"><a href="#" data-toggle="modal" data-target="#myModal4" >/ Sign In</a></li>
        </ul>
        <div class="clearfix"></div>
        </div>
    </div>
    <?php  }?>

    <div class="header">
	<div class="container">
		<div class="logo" >
			<a href="index.php">CHAMO <span>TOUR</span></a>	
		</div>
	
		<div class="clearfix"></div>
	</div>
</div>

<div class="footer-btm wow fadeInLeft animated" data-wow-delay=".3s">
	<div class="container">
	<div class="navigation">
			<nav class="navbar navbar-default">
				
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="cl-effect-1">
						<ul class="nav navbar-nav">
							<li><a href="index.php">Home</a></li>
							<li><a href="page.php?type=Aboutus">About</a></li>
								<li><a href="destination-list.php">Destinations</a></li>
								<li><a href="page.php?type=Privacy">Privacy Policy</a></li>
								<li><a href="page.php?type=Terms">Terms of Use</a></li>
								<li><a href="page.php?type=contact">Contact Us</a></li>
								<?php if($_SESSION['login'])
{?>
								<li>Need Help?<a href="#" data-toggle="modal" data-target="#myModal3"> / Write Us </a>  </li>
								<?php } else { ?>
								<li><a href="enquiry.php"> Enquiry </a>  </li>
								<?php } ?>
								<div class="clearfix"></div>

						</ul>
					</nav>
				</div>
			</nav>
		</div>
		
		<div class="clearfix"></div>
	</div>
</div>