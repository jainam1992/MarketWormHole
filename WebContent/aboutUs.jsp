<%@ page import="java.sql.*"%>
<%
	if (session.getAttribute("username") == null) {

		response.sendRedirect("login.jsp");

	}
%>
<%@ page import="com.mysql.*"%>
<%@ page import="java.sql.*"%>
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
<link id="bootstrap-style" href="css/fpbootstrap.min.css"
	rel="stylesheet">
<!-- <link id="bootstrap-style" href="css/fpbootstrap.min.css" rel="stylesheet"> -->
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link id="base-style" href="css/style.css" rel="stylesheet">
<link id="base-style" href="css/font-awesome.css" rel="stylesheet">
<link id="base-style-responsive" href="css/style-responsive.css"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext'
	rel='stylesheet' type='text/css'>
	
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">	
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

<!--<jsp:include page="scoredisplay.jsp" /> -->
<%@ page import="java.sql.ResultSet"%>
<%-- <jsp:include page="logincheck.jsp" /> --%>

<%@ page import="java.sql.*"%>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!--  <script src="https://raw.githubusercontent.com/douglascrockford/JSON-js/master/json2.js"></script> -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>


<style>
.page-title{
    color:#5bc0de;    
}
.member-content .social-content li a{
    display:inline-block;
    padding:0;
    min-width:40px;
    height:40px;
    font-size:21px;
    line-height:40px;
    color:#5cc9df;
    border-radius:5px;
    box-shadow:0 3px 0 0 transparent;
    -webkit-transition:all .3s ease-out;
    transition:all .3s ease-out;
}

.member-content .details {
    margin:20px 0 0 20px;
    position:relative;
    padding:30px;
    padding-left:100px;
    background:#f5f5f5;
    border-radius:10px;
    box-shadow:5px 5px 0 rgba(0,0,0,0.08);
    -webkit-transition:all .3s ease-out;
    transition:all .3s ease-out;
}

.member-content {
    margin-bottom:30px;
}

.member-thumb{
    text-align:center;
}

.member-thumb h4{
    font-size:21px;
    margin:10px 0;
}

.member-thumb .title{
    font-size:18px;
    margin:10px 0;
    color:#5CC9DF;
}



.member-content:hover .details {
    background:#5bc0de;
    color:#fff;
}

.member-content.right .details {
    margin:20px 20px 0 0;
    box-shadow:-5px 5px 0 rgba(0,0,0,0.08);
}

.member-content .details:after {
    display:block;
    content:"";
    position:absolute;
    left:-18px;
    top:30px;
    width:0px;
    height:0px;
    background:transparent;
    border:20px solid transparent;
    border-left:20px solid #f5f5f5;
    box-shadow:-3px 0 0 rgba(0,0,0,0.08);
    -webkit-transform:rotate(-45deg);
    transform:rotate(-45deg);
    -webkit-transition:border-left-color .3s ease-out;
    transition:border-left-color .3s ease-out;
}

.member-content.right .details:after {
    position:absolute;
    left:auto;
    right:-17px;
    border-left:20px solid transparent;
    border-right:20px solid #f5f5f5;
    box-shadow:3px 0 0 0 rgba(0,0,0,0.08);
    -webkit-transform:rotate(45deg);
    transform:rotate(45deg);
    -webkit-transition:border-right-color .3s ease-out;
    transition:border-right-color .3s ease-out;
}

.member-content:hover .details:after {
    border-left-color:#5CC9DF;
}

.member-content.right:hover .details:after {
    border-left-color:transparent;
    border-right-color:#5CC9DF;
}

.member-content .details:before {
    display:block;
    content:"\201D";
    position:absolute;
    left:20px;
    top:50px;
    font-size:120px;
    font-weight:800;
    line-height:60px;
    font-family:Arial;
    color:#5cc9df;
    -webkit-transition:all .3s ease-out;
    transition:all .3s ease-out;
}

.member-content:hover .details:before {
    color:#fff;
}

.member-content .social-content {
    list-style:none;
    margin:0;
    padding:0;
}

.member-content .social-content li {
    display:inline;
    text-align:center;
    margin:0 2px;
}

.member-content:hover .social-content li a {
    color:#fff;
}

.member-content .social-content li a:hover{
    background:#fff;
    color:#5cc9df;
    box-shadow:0 3px 0 0 rgba(0,0,0,0.05);
}


</style>


</head>

<body>

	<%@ include file="navBar.jsp"%>


	<%--  	<% response.setIntHeader("Refresh", 2); %> --%>

	<div class="container-fluid-full">

		<div class="row-fluid">
			<hr>
			<hr>

			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">

						<!-- 						<li><a href="index.jsp"><i class="icon-eye-open"></i><span -->
						<!-- 								class="hidden-tablet">Dashboard</span></a></li> -->
						<li><a href="widgets.jsp"><i class="icon-dashboard"></i><span
								class="hidden-tablet"> Dashboard</span></a></li>
						<!-- 						<li> -->
						<!-- 							<a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Dropdown</span><span class="label label-important"> 3 </span></a> -->
						<!-- 							<ul> -->
						<!-- 								<li><a class="submenu" href="submenu.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 1</span></a></li> -->
						<!-- 								<li><a class="submenu" href="submenu2.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 2</span></a></li> -->
						<!-- 								<li><a class="submenu" href="submenu3.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 3</span></a></li> -->
						<!-- 							</ul>	 -->
						<!-- 						</li> -->
						<!-- 						<li><a href="form.jsp"><i class="icon-edit"></i><span -->
						<!-- 								class="hidden-tablet"> Forms</span></a></li> -->
						<li><a href="charts.jsp"><i class="icon-list-alt"></i><span
								class="hidden-tablet"> Charts</span></a></li>
						<li><a href="tweets.jsp"><i class="icon-list-alt"></i><span
								class="hidden-tablet"> Tweets</span></a></li>
						<li><a href="aboutUs.jsp"><i class="icon-list-alt"></i><span
								class="hidden-tablet"> About us</span></a></li>


					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->

			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>
						You need to have <a href="http://en.wikipedia.org/wiki/JavaScript"
							target="_blank">JavaScript</a> enabled to use this site.
					</p>
				</div>
			</noscript>

			<!-- start: Content -->
			<div id="content" class="span10">


				<ul class="breadcrumb">
					<li><i class="icon-home"></i> <a href="sample.jsp">Home</a> <i
						class="icon-angle-right"></i></li>
					<li><a href="widgets.jsp">Dashboard</a></li>
					<li><a href="charts.jsp">Charts</a></li>
					<li><a href="tweets.jsp">Tweets</a></li>
					<li><a href="aboutUs.jsp">About us</a></li>
				</ul>
				<div class="container"></div>
				
		
<div class="container bootstrap snippet">
    <section id="team" class="white-bg padding-top-bottom">
		<div class="container bootstrap snippet">
			<h1 class="section-title text-center page-title">Meet our team</h1>
			<p class="section-description text-center">We are a small team with great skills. See the faces behind the lines of code. </p>	
			<div class="row member-content">
				<div class="col-sm-3 col-sm-offset-1 member-thumb  fade-right in">
					<img class="img-responsive img-center img-thumbnail img-circle" src="img/jainam.jpg" alt="">
					<h4>Jainam Shah</h4>
					<p class="title">Front-End Developer</p>
				</div>
				<div class="col-sm-7">
					<div class="details">
						<p>Designed website for Market Wormhole. More than 2 years of experience as a Full Stack Developer.</p>
						<ul class="social-content">
							<li><a href="jainamshah20692@gmail.com"><i class="fa fa-envelope fa-fw"></i></a></li>
							<li><a href="https://twitter.com/imJshah92"><i class="fa fa-twitter fa-fw"></i></a></li>
							<li><a href="https://www.facebook.com/jainam.shah.54"><i class="fa fa-facebook fa-fw"></i></a></li>
							<li><a href="https://www.linkedin.com/in/jainamshah92"><i class="fa fa-linkedin fa-fw"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			
			<div class="row member-content right">
				<div class="col-sm-3 col-sm-push-8 member-thumb">
					<img class="img-responsive img-center img-thumbnail img-circle" src="http://bootdey.com/img/Content/user-453533-fdadfd.png" alt="">
					<h4>Ram Karan Daga</h4>
					<p class="title">Back-End Developer</p>
				</div>
				<div class="col-sm-7 col-sm-pull-2">
					<div class="details">
						<p>Set up Back-End for Market Wormhole. Written scripts to fetch data. More than 5 years of experience as a Full Stack Developer.</p>
						<ul class="social-content">
							<li><a href="mailto:mail@example.com"><i class="fa fa-envelope fa-fw"></i></a></li>
							<li><a href="#link"><i class="fa fa-twitter fa-fw"></i></a></li>
							<li><a href="#link"><i class="fa fa-facebook fa-fw"></i></a></li>
							<li><a href="https://www.linkedin.com/in/rdaga"><i class="fa fa-linkedin fa-fw"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			
			<div class="row member-content">
				<div class="col-sm-3 col-sm-offset-1 member-thumb">
					<img class="img-responsive img-center img-thumbnail img-circle" src="http://bootdey.com/img/Content/HexGames349.jpg" alt="">
					<h4>Surabhi Prakash</h4>
					<p class="title">Back-End Developer</p>
				</div>
				<div class="col-sm-7   ">
					<div class="details">
						<p>Written python scripts to fetch data for sentiment analysis. More than 3 years of experience as a Full Stack Developer.</p>
						<ul class="social-content">
							<li><a href="surabhi.prakash@sjsu.edu"><i class="fa fa-envelope fa-fw"></i></a></li>
							<li><a href="#link"><i class="fa fa-twitter fa-fw"></i></a></li>
							<li><a href="#link"><i class="fa fa-facebook fa-fw"></i></a></li>
							<li><a href="https://www.linkedin.com/in/surabhiprakash"><i class="fa fa-linkedin fa-fw"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>    
</div>                    		




				<!-- 					<div id="container-pie-chart" style="height: 200px; min-width: 210px"></div> -->
				<!-- 					<div id="container-pie-chart2" style="height: 200px; min-width: 210px"></div> -->





				<hr>
				<hr>


			</div>



		</div>


	</div>

	<!--/span-->


	</div>
	<!--/span-->

	</div>




	</div>
	<!--/.fluid-container-->

	<!-- end: Content -->
	</div>
	<!--/#content.span10-->
	</div>
	<!--/fluid-row-->

	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a> <a href="#"
				class="btn btn-primary">Save changes</a>
		</div>
	</div>

	<div class="clearfix"></div>

	<footer>

		<p>
			<span style="text-align: left; float: left">&copy; 2016 <a
				href="sample.jsp" alt="Bootstrap_Metro_Dashboard">Market
					Wormhole</a></span>

		</p>

	</footer>

	<!-- start: JavaScript-->

	<script src="js/bootstrap.min.js"></script>

	<!-- end: JavaScript-->

</body>


</html>


