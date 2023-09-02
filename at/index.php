<?php
  session_start();
  error_reporting(0);
  include('includes/config.php');
  ?>

  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="applijewelleryion/x-javascript">
     addEventListener ("load", function() 
     { 
        setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1);
     } 
    </script>
 <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
 <link href="./css/style.css" rel='stylesheet' type='text/css' />
 <link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
 <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
 <link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
 <link href="css/font-awesome.css" rel="stylesheet">

 <script src="js/jquery-1.12.0.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
<!--animate-->
 <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
 <script src="./js/wow.min.js"></script>

 <script>
    new WOW().init();
 </script>
    <title>Chamo Tour</title>
  </head>
  <body>
    <?php include('includes/header.php');?>
    <div class="banner">
       <div class="container">
          <h1 class="wow zoomIn animated animated" data-wow-delay=".3s" style="visibility:visible; animation-delay: 0.3s; animation-name: zoomIn;">Visit Arbaminch</h1>
       </div>
    </div>

    <div class="container">
        <div class="holiday">

        
            <h3>Destinations</h3>
            
             <?php $sql = "SELECT * from tbltourdestinations order by rand() limit 4";
                   $query = $dbh->prepare($sql);
                   $query->execute();
                   $results = $query->fetchAll(PDO::FETCH_OBJ);
                   $count = 1;
                     if($query -> rowCount() > 0) {
                        foreach( $results as $result) {
                            ?>
                            <div class="rom-btm">
                                <div class="col-md-3 room-left wow fadeInLeft animated" data-wow-delay="0.3s">
                                    <img src="admin/destinationimages/<?php echo htmlentities($result ->DestinationImage);?>" class="img-responsive" alt="">
                        
                    
        </div>

        
        <div class="col-md-6 room-middle wow fadeInUp animated" data-wow-delay="0.3s">
             <h4>Destination: <?php echo htmlentities($result -> DestinationName);?></h4>
             <p><?php echo htmlentities($result -> DestinationDescription);?></p>
            
       </div>

       
       <div class="col-md-3 room-right wow fadeInRight animated" data-wow-delay="0.3s">

          <h5>Birr <?php echo htmlentities($result -> DestinationPrice);?></h5>
          <a href="destination-detail.php?desid=<?php echo htmlentities($result -> DestinationId);?>" class="view">See More</a>
       </div>
       <div class="clearfix"></div>
    </div>
    <?php }} ?>

    <div><a href="destination-list.php" class="view">More Destinations</a></div>
        </div>
        <div class="clearfix"></div>
    </div>

<?php include('includes/footer.php');?>

<?php include('includes/signup.php');?>			

<?php include('includes/signin.php');?>			

<?php include('includes/write-us.php');?>			

  </body>
  </html>