<%@ page import ="java.sql.*" %>
<%
if(session.getAttribute("username")==null){
       
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
<link id="bootstrap-style" href="css/fpbootstrap.min.css" rel="stylesheet">
<!-- <link id="bootstrap-style" href="css/fpbootstrap.min.css" rel="stylesheet"> -->
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link id="base-style" href="css/style.css" rel="stylesheet">
<link id="base-style" href="css/font-awesome.css" rel="stylesheet">
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
div.twitter-tweet-rendered p.entry-title {
    font-family: Arial, sans-serif !important;
    font-size: 14px !important;
    padding: 5px !important;
    background: #eee !important;
    max-width: 300px !important;
}

div.twitter-tweet-rendered p.entry-title a.link {
    font-family: Arial, sans-serif !important;
    font-size: 14px !important;
}

div.twitter-tweet-rendered div.twt-border {
    padding: 0 !important;
    border: none !important;
    box-shadow: none !important;
}

div.twitter-tweet-rendered iframe.twt-follow-button { display: none !important; }

div.twitter-tweet-rendered div.footer ul.twt-actions {display: none !important;}

div.twitter-tweet-rendered div.footer a.view-details {
    display:block !important;
    width: 120px !important;
    margin: 5px 0 !important;
    padding: 7px 0 !important;
    background: #000 !important;
    color: #fff !important;
    text-decoration: none !important;
    border-radius: 13px !important;
    text-align: center !important;
    box-shadow: -1px -1px 2px #555 !important;
}
    
div.twitter-tweet-rendered div.footer a.view-details span {
    font: 14px Georgia, serif !important;
    color: #fff !important;
}

blockquote.twitter-tweet {
  display: inline-block;
  font-family: "Helvetica Neue", Roboto, "Segoe UI", Calibri, sans-serif;
  font-size: 14px;
  font-weight: bold;
  line-height: 16px;
  border-color: #35CE94;
  color:#01448B;
  border-radius: 5px;
  border-style: double;
  border-width: 6px;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.15);
  margin: 10px 5px;
  padding: 16px 16px 16px;
  max-width: 468px;
  background-color: #D8E4E7;
}
 
blockquote.twitter-tweet p {
  font-size: 16px;
  font-weight: lighter;
  line-height: 20px;
}
 
blockquote.twitter-tweet a {
  color:  black;
  font-weight: normal;
  text-decoration: none;
  outline: 0 none;
}
 
blockquote.twitter-tweet a:hover,
blockquote.twitter-tweet a:focus {
  text-decoration: underline;
}



blockquote.style1 {
  font: 14px/20px italic Times, serif;
  padding: 8px;
  background-color: #faebbc;
  border-top: 1px solid #e1cc89;
  border-bottom: 1px solid #e1cc89;
  margin: 5px;
  background-image: url(images/openquote1.gif);
  background-position: top left;
  background-repeat: no-repeat;
  text-indent: 23px;
  }
  blockquote.style1 span {
    	display: block;
    	background-image: url(images/closequote1.gif);
    	background-repeat: no-repeat;
    	background-position: bottom right;
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
				</ul>
<div class="container">
		</div>
				
								
				<div class="row-fluid sortable">
				
				<div class="row">
				<div class="col-md-5">

				<form name="form1" action="/fetchHighChartsDataServlet"
					method="POST">
					<!-- <input type="hidden" name="action" value="checking">  -->
		<label><i>	Select Stock:  </i><select name="stockSymbol" id="stockSymbol" onchange="stockSelected()">
						<option value="AAPL" >Apple Inc.</option>
						<option value="CSCO">Cisco Systems</option>
						<option value="DIS">The Walt Disney</option>
						<option value="EBAY">eBay</option>
						<option value="GOOG">Google</option>
						<option value="INTC">Intel</option>
						<option value="LNKD">LinkedIn Corporation</option>
						<option value="RHT">Red Hat Inc</option>
						<option value="TSLA">Tesla Motors</option>
						<option value="TWTR">Twitter Inc.</option>
					</select></label>

				</form>
				</div>
				</div>
				
			<div class="container">
			<div class="row">
			<div class="col-md-6" align="center">	
			<h2><b>Twitter Latest Tweets <i class="icon-twitter"></i></b></h2>
			
				<div id="tweets"></div>
			</div>
			<div class="col-md-6" align="center">
			<h2><b> Stocktwits Latest Tweets <i class="icon-twitter"></i></b></h2>	
				<div id="stocktweets"></div>
			</div>
			</div>	
			</div>	
				
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
			<button type="button" class="close" data-dismiss="modal">Ã</button>
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
				href="sample.jsp"
				alt="Bootstrap_Metro_Dashboard">Market Wormhole</a></span>

		</p>

	</footer>

	<!-- start: JavaScript-->

	<script src="js/bootstrap.min.js"></script>

	<!-- end: JavaScript-->

</body>

	<script>
	
	function stockSelected() {

		var a = $("#stockSymbol").val();           
        
        
		$.ajax({
					type : "GET",
					url : "fetchTweets",
					data:{"stockSymbol":a},
					success : function(data) {
						//alert(data);
						$("#tweets").html(data);
						
						
						//console.log(data);
						
					}
				});
		
		$.ajax({
			type : "GET",
			url : "fetchStocktwits",
			data:{"stockSymbol":a},
			success : function(data) {
				//alert(data);
				$("#stocktweets").html(data);
				
				
				//console.log(data);
				
			}
		});

	}

stockSelected();
</script>

</html>


