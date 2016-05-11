<!DOCTYPE html>
<html lang="en">
<head>

<!-- start: Meta -->
<meta charset="utf-8">
<title>Bootstrap Metro Dashboard by Jainam Shah for ARM demo</title>
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="Jainam Shah">
<meta name="keyword"
	content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->

<!-- start: CSS -->
<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link id="base-style" href="css/style.css" rel="stylesheet">
<link id="base-style" href="css/custom.css" rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link id="base-style-responsive" href="css/style-responsive.css"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext'
	rel='stylesheet' type='text/css'>
<!-- end: CSS -->


<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->

<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->

<!-- start: Favicon -->
<link rel="shortcut icon" href="img/favicon.ico">
<!-- end: Favicon -->

<style>
.container{
    background-color:#3BB29E;
    width: auto;
  height : auto;
  max-height: 100%;
  max-width: 100%;
  font-family: cursive;
    
}
</style>

<style type="text/css">
.bgimg {
    /* background-image: url('http://wallpoper.com/images/00/32/35/17/light-minimalistic_00323517.jpg'); */
    background-color:white;
    padding-left: 20px;
    padding-right: 20px;
    font-family: cursive;
    font-style: italic;
}
</style>



<style type="text/css">
.bgimg2 {
    background-image: url('http://newshaifakrayot.net/wp-content/uploads/2016/02/grafico.png');
    
}
</style>


<style>

.video-section .pattern-overlay {
background-color: rgba(71, 71, 71, 0.59);
padding: 110px 0 32px;
min-height: 496px; 
/* Incase of overlay problems just increase the min-height*/
}
.video-section h1, .video-section h3{
text-align:center;
color:#fff;
}
.video-section h1{
font-size:110px;
font-family: 'Buenard', serif;
font-weight:bold;
text-transform: uppercase;
margin: 40px auto 0px;
text-shadow: 1px 1px 1px #000;
-webkit-text-shadow: 1px 1px 1px #000;
-moz-text-shadow: 1px 1px 1px #000;
}
.video-section h3{
font-size: 25px;
font-weight:lighter;
margin: 0px auto 15px;
}
.video-section .buttonBar{display:none;}
.player {font-size: 1px;}


</style>

<!-- START Worden Top Gainers and Losers Ticker Widget -->


<link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>

</head>

<body>


<script src="http://pupunzi.com/mb.components/mb.YTPlayer/demo/inc/jquery.mb.YTPlayer.js"></script>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				</a> <a class="brand" href="fpindex.jsp"><span>Market
						Wormhole</span></a>

				<!-- start: Header Menu -->

				<ul class="nav pull-right">
					<a href="login.jsp"> <%
 	if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
 %> <br><button type="button" class="btn btn-danger">Login / Register</button>
<br /> <%
 	} else {
 %><br><b> Welcome, <%=session.getAttribute("username")%></b>
 <a	href='logout.jsp'> <br><b>Log out</b></a> <%
 	}
 %>


					</a>
				</ul>
			</div>
			<!-- end: Header Menu -->

		</div>
	</div>
<br>
<br>



	<!-- Page Content -->
	
<!-- <div class="container">
<img alt="" src="img/stock5.jpg">

</div>	
 -->	
 <br>
 
 
	
		
<div class="content-section video-section">
  <div class="pattern-overlay">
  <a id="bgndVideo" class="player" data-property="{videoURL:'https://www.youtube.com/watch?v=4v5_NsX8QvY&list=PLy_V76FcAH2VbXkVAOYg8TkjJTwVoXLQZ&index=6',containment:'.video-section', quality:'large', autoPlay:true, mute:true, opacity:1}">bg</a>
    
      
      
        <form id="login-form" action="sessionCheck.jsp" method="post"
						role="form" >
<div class="col-md-12 text-center">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				
				<p>
				<h3>	<b><i>Stock Recommendation using Real Time Sentiment</i></b></h3>
				</p>

				<h4><p><b>Check the real time stock analysis
					before you make your next investment.</b></p></h4>

				<p><b>Want to know stock prediction.? Click on button below</b></p>


						<button type="submit" class="btn btn-danger">View
							Prediction</button>
			</div>	
				</form>  
        
      
    
  </div>
</div>
			<br>
					




<h2><center><i><u>What we do?</u></i></center></h2>
<br>
<div class="row text-center">

<h4>We provide stock sentiment analysis for students to react & respond to market opinions. We monitor microblogging sites & analyze the overall sentiment.</h4>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="http://img.clubic.com/032001F403983100-c1-photo-oYToxOntzOjU6ImNvbG9yIjtzOjU6IndoaXRlIjt9-nasdaq.jpg" alt="">
                    <div class="caption">
                        <h3>Monitor</h3>
                        <p>Monitor data from various sources</p>
                        
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="img/analyze.jpg" alt="">
                    <div class="caption">
                        <h3>Analyze</h3>
                        <p>Analyze data collected from various sources</p>
                        
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="http://basic-loan.com/wp-content/uploads/2015/07/exchange-Buying-and-selling-800x500_c.jpg" alt="">
                    <div class="caption">
                        <h3>Predict</h3>
                        <p>Perform sentiment analysis on collected data</p>
                        
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="img/visualize.jpg" alt="">
                    <div class="caption">
                        <h3>Visualize</h3>
                        <p>Visualize sentiment analysis</p>
                        
                    </div>
                </div>
            </div>

        </div>
        <!-- /.row -->
	</div>
<br>
<br>



	
	<footer class="footer navbar-fixed-bottom">

		<p>
			<span style="text-align: left; float: left">&copy; 2016 - <a
				href="fpindex.jsp"
				alt="Bootstrap_Metro_Dashboard">Market Wormhole </a></span>

		</p>

	</footer>





	<!-- start: JavaScript-->

	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/jquery-migrate-1.0.0.min.js"></script>

	<script src="js/jquery-ui-1.10.0.custom.min.js"></script>

	<script src="js/jquery.ui.touch-punch.js"></script>

	<script src="js/modernizr.js"></script>

	<script src="js/bootstrap.min.js"></script>

	<script src="js/jquery.cookie.js"></script>

	<script src='js/fullcalendar.min.js'></script>

	<script src='js/jquery.dataTables.min.js'></script>

	<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.js"></script>
	<script src="js/jquery.flot.pie.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>

	<script src="js/jquery.chosen.min.js"></script>

	<script src="js/jquery.uniform.min.js"></script>

	<script src="js/jquery.cleditor.min.js"></script>

	<script src="js/jquery.noty.js"></script>


<script>
$(document).ready(function () {

    $(".player").mb_YTPlayer();

});

</script>


	<script src="js/jquery.elfinder.min.js"></script>

	<script src="js/jquery.raty.min.js"></script>

	<script src="js/jquery.iphone.toggle.js"></script>

	<script src="js/jquery.uploadify-3.1.min.js"></script>

	<script src="js/jquery.gritter.min.js"></script>

	<script src="js/jquery.imagesloaded.js"></script>

	<script src="js/jquery.masonry.min.js"></script>

	<script src="js/jquery.knob.modified.js"></script>

	<script src="js/jquery.sparkline.min.js"></script>

	<script src="js/counter.js"></script>

	<script src="js/retina.js"></script>

	<script src="js/custom.js"></script>
	
	<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/jquery.mb.YTPlayer.js"></script>
	<!-- end: JavaScript-->

</body>

</html>
