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


</head>

<body>

	<%@ include file="navBar.jsp"%>
	<script>
		function stockSelected() {

			var a = $("#stockSymbol").val();           
            
            
			$.ajax({
						type : "GET",
						url : "pieChart",
						data:{"stockSymbol":a},
						success : function(data) {
							console.log(data);

							$(document)
									.ready(
											function() {
												//alert(data)
												var chart = {
													plotBackgroundColor : null,
													plotBorderWidth : null,
													plotShadow : false,
													type : 'pie'
												};
												var title = {
													text : 'Twitter Sentiment Analysis Pie Chart'
												};
												var tooltip = {
													pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'
												};
												var plotOptions = {
													pie : {
														allowPointSelect : true,
														cursor : 'pointer',
														dataLabels : {
															enabled : true,
															format : '<b>{point.name}</b>: {point.percentage:.1f} %',
															style : {
																color : (Highcharts.theme && Highcharts.theme.contrastTextColor)
																		|| 'black'
															}
														}
													}
												};
												var series = [ {
													name : 'Brands',
													colorByPoint : true,
													data : eval(data)
												} ];

												var json = {};
												json.chart = chart;
												json.title = title;
												json.tooltip = tooltip;
												json.series = series;
												json.plotOptions = plotOptions;
												$('#container-pie-chart')
														.highcharts(json);

											});
						}
					});

			$.ajax({
						type : "GET",
						url : "pieChartStocktwits",
						data:{"stockSymbol":a},
						success : function(data) {
							//console.log(data);

							$(document)
									.ready(
											function() {
												//alert(data)
												var chart = {
													plotBackgroundColor : null,
													plotBorderWidth : null,
													plotShadow : false,
													type : 'pie'
												};
												var title = {
													text : 'Stocktwits Sentiment Analysis Pie Chart'
												};
												var tooltip = {
													pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'
												};
												var plotOptions = {
													pie : {
														allowPointSelect : true,
														cursor : 'pointer',
														dataLabels : {
															enabled : true,
															format : '<b>{point.name}</b>: {point.percentage:.1f} %',
															style : {
																color : (Highcharts.theme && Highcharts.theme.contrastTextColor)
																		|| 'black'
															}
														}
													}
												};
												var series = [ {
													name : 'Brands',
													colorByPoint : true,
													data : eval(data)
												} ];

												var json = {};
												json.chart = chart;
												json.title = title;
												json.tooltip = tooltip;
												json.series = series;
												json.plotOptions = plotOptions;
												$('#container-pie-chart2')
														.highcharts(json);

											});
						}
					});

		}
	</script>

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
					
				</ul>
<div class="container">
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
		
				<div class="col-md-6">	
				
				<span class="label" id="buysell"></span>
				
		</div>		
		</div>
		</div>
				
		<div class="container">
				<div class="row-fluid sortable">
				<div class="box span6">
				
				<div class="box-content">
				<div id="container-pie-chart" style="height: 400px; min-width: 410px"></div>
				</div>
				
				</div>
				
				<div class="box span6">
				
				<div class="box-content">
				<div id="container-pie-chart2" style="height: 400px; min-width: 410px"></div>
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
				href="sample.jsp"
				alt="Bootstrap_Metro_Dashboard">Market Wormhole</a></span>

		</p>

	</footer>

	<!-- start: JavaScript-->

	<script src="js/bootstrap.min.js"></script>

	<!-- end: JavaScript-->

</body>

<script>
stockSelected();
</script>

</html>


