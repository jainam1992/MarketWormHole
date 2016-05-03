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
				url : "fetchTable",
				data:{"stockSymbol":a},
				success : function(data) {
					var jsonData = JSON.parse(data);
					//alert(jsonData.symbol);
					
					var html = "<table class='table table-bordered'><thead><tr><th>Symbol</th><th>Sentiment</th></tr></thead><tbody>";
						html += "<tr><td>"+jsonData.symbol+"</td><td>"+jsonData.sentiment+"</td></tr></tbody></table>";
						
					$("#dynamicTable").html(html);	
						
					
				}
			});

            
            
			$.ajax({
				type : "GET",
				url : "fetchHighChartsDataServlet",
				data:{"stockSymbol":a},
				success : function(data) {
					//console.log(data);

					$(document).ready(function() {
						var chart = {
							type : 'spline'
						};
						var title = {
							text : 'Time-Score Plot'
						};
						var subtitle = {
							text : 'Irregular time data'
						};
						var xAxis = {
							type : 'datetime',
							title : {
								text : 'Time'
							}
						};
						var yAxis = {
							title : {
								text : 'Score'
							},
							min : 0
						};
						var tooltip = {
							headerFormat : '<b>{series.name}</b><br>',
						//pointFormat: '{point.x:%e. %b}: {point.y:.2f} m'
						};
						var plotOptions = {
							spline : {
								marker : {
									enabled : true
								}
							}
						};
						var series = [ {
							name : 'Twitter Sentiment score-time plot',
							// Define the data points. All series have a dummy year
							// of 1970/71 in order to be compared on the same x axis. Note
							// that in JavaScript, months start at 0 for January, 1 for February etc.
							data : eval(data),
							turboThreshold : 2000
						//  [[Date.UTC(2016,04,30,04,30,59),0.0000000000],[Date.UTC(2016,04,30,04,31,03),0.3180350000],[Date.UTC(2016,04,30,04,31,08),-0.5281090000],[Date.UTC(2016,04,30,04,32,41),-0.6509710000],[Date.UTC(2016,04,30,04,32,52),-0.0230971000],[Date.UTC(2016,04,30,04,33,06),-0.6934630000],[Date.UTC(2016,04,30,04,33,45),0.0000000000],[Date.UTC(2016,04,30,04,35,09),0.0000000000],[Date.UTC(2016,04,30,04,35,33),0.3563850000],[Date.UTC(2016,04,30,04,38,30),0.0451487000],[Date.UTC(2016,04,30,04,38,34),0.3174100000],[Date.UTC(2016,04,30,04,44,01),0.0000000000],[Date.UTC(2016,04,30,04,45,10),0.0000000000],[Date.UTC(2016,04,30,04,46,42),0.5718160000],[Date.UTC(2016,04,30,04,46,42),0.5718160000],[Date.UTC(2016,04,30,04,49,14),0.7452160000],[Date.UTC(2016,04,30,04,49,14),0.7452160000],[Date.UTC(2016,04,30,04,50,05),0.0000000000],[Date.UTC(2016,04,30,04,51,15),0.3368500000],[Date.UTC(2016,04,30,04,51,15),0.3368500000],[Date.UTC(2016,04,30,04,51,15),0.3368500000],[Date.UTC(2016,04,30,04,55,32),0.0000000000],[Date.UTC(2016,04,30,04,55,32),0.3765900000],[Date.UTC(2016,04,30,04,56,42),0.5931620000],[Date.UTC(2016,04,30,04,57,05),0.5504990000],[Date.UTC(2016,04,30,05,00,10),0.0000000000],[Date.UTC(2016,04,30,05,00,30),0.2662740000],[Date.UTC(2016,04,30,05,00,30),0.2662740000],[Date.UTC(2016,04,30,05,00,56),0.3652850000],[Date.UTC(2016,04,30,05,02,05),-0.8548250000],[Date.UTC(2016,04,30,05,02,58),0.4223900000],[Date.UTC(2016,04,30,05,03,06),0.0000000000],[Date.UTC(2016,04,30,05,03,13),0.0000000000],[Date.UTC(2016,04,30,05,05,39),0.5097280000],[Date.UTC(2016,04,30,05,06,53),0.0000000000],[Date.UTC(2016,04,30,05,07,11),-0.7238180000],[Date.UTC(2016,04,30,05,07,35),-0.0721591000],[Date.UTC(2016,04,30,05,09,48),-0.5722070000],[Date.UTC(2016,04,30,05,09,54),-0.7299360000],[Date.UTC(2016,04,30,05,10,03),0.0000000000],[Date.UTC(2016,04,30,05,10,31),0.4066860000],[Date.UTC(2016,04,30,05,11,37),0.6944750000],[Date.UTC(2016,04,30,05,12,50),-0.2062650000],[Date.UTC(2016,04,30,05,12,51),-0.2062650000],[Date.UTC(2016,04,30,05,12,51),-0.2062650000],[Date.UTC(2016,04,30,05,13,21),0.4004650000],[Date.UTC(2016,04,30,05,13,21),0.4004650000],[Date.UTC(2016,04,30,05,13,21),0.4004650000],[Date.UTC(2016,04,30,05,13,39),0.4341640000],[Date.UTC(2016,04,30,05,15,10),-0.6763450000]]
						//  [[Date.UTC(2016,04,30,04,30,59),0.0000000000],[Date.UTC(2016,04,30,04,31,03),0.3180350000],[Date.UTC(2016,04,30,04,31,08),-0.5281090000],[Date.UTC(2016,04,30,04,32,41),-0.6509710000],[Date.UTC(2016,04,30,04,32,52),-0.0230971000],[Date.UTC(2016,04,30,04,33,06),-0.6934630000],[Date.UTC(2016,04,30,04,33,45),0.0000000000],[Date.UTC(2016,04,30,04,35,09),0.0000000000],[Date.UTC(2016,04,30,04,35,33),0.3563850000],[Date.UTC(2016,04,30,04,38,30),0.0451487000],[Date.UTC(2016,04,30,04,38,34),0.3174100000],[Date.UTC(2016,04,30,04,44,01),0.0000000000],[Date.UTC(2016,04,30,04,45,10),0.0000000000],[Date.UTC(2016,04,30,04,46,42),0.5718160000],[Date.UTC(2016,04,30,04,46,42),0.5718160000],[Date.UTC(2016,04,30,04,49,14),0.7452160000],[Date.UTC(2016,04,30,04,49,14),0.7452160000],[Date.UTC(2016,04,30,04,50,05),0.0000000000],[Date.UTC(2016,04,30,04,51,15),0.3368500000],[Date.UTC(2016,04,30,04,51,15),0.3368500000],[Date.UTC(2016,04,30,04,51,15),0.3368500000],[Date.UTC(2016,04,30,04,55,32),0.0000000000],[Date.UTC(2016,04,30,04,55,32),0.3765900000],[Date.UTC(2016,04,30,04,56,42),0.5931620000],[Date.UTC(2016,04,30,04,57,05),0.5504990000],[Date.UTC(2016,04,30,05,00,10),0.0000000000],[Date.UTC(2016,04,30,05,00,30),0.2662740000],[Date.UTC(2016,04,30,05,00,30),0.2662740000],[Date.UTC(2016,04,30,05,00,56),0.3652850000],[Date.UTC(2016,04,30,05,02,05),-0.8548250000],[Date.UTC(2016,04,30,05,02,58),0.4223900000],[Date.UTC(2016,04,30,05,03,06),0.0000000000],[Date.UTC(2016,04,30,05,03,13),0.0000000000],[Date.UTC(2016,04,30,05,05,39),0.5097280000],[Date.UTC(2016,04,30,05,06,53),0.0000000000],[Date.UTC(2016,04,30,05,07,11),-0.7238180000],[Date.UTC(2016,04,30,05,07,35),-0.0721591000],[Date.UTC(2016,04,30,05,09,48),-0.5722070000],[Date.UTC(2016,04,30,05,09,54),-0.7299360000],[Date.UTC(2016,04,30,05,10,03),0.0000000000],[Date.UTC(2016,04,30,05,10,31),0.4066860000],[Date.UTC(2016,04,30,05,11,37),0.6944750000],[Date.UTC(2016,04,30,05,12,50),-0.2062650000],[Date.UTC(2016,04,30,05,12,51),-0.2062650000],[Date.UTC(2016,04,30,05,12,51),-0.2062650000],[Date.UTC(2016,04,30,05,13,21),0.4004650000],[Date.UTC(2016,04,30,05,13,21),0.4004650000],[Date.UTC(2016,04,30,05,13,21),0.4004650000],[Date.UTC(2016,04,30,05,13,39),0.4341640000],[Date.UTC(2016,04,30,05,15,10),-0.6763450000]]
						} ];

						var json = {};
						json.chart = chart;
						json.title = title;
						json.subtitle = subtitle;
						json.tooltip = tooltip;
						json.xAxis = xAxis;
						json.yAxis = yAxis;
						json.series = series;
						json.plotOptions = plotOptions;
						// json.turboThreshold = 10000;
						$('#container').highcharts(json);

					});
				}
			});
			
			$.ajax({
				type : "GET",
				url : "fetchStocktwitsGraph",
				data:{"stockSymbol":a},
				success : function(data) {
					console.log(data);
					
					$(document).ready(function() {
						var chart = {
							type : 'spline'
						};
						var title = {
							text : 'Time-Score Plot'
						};
						var subtitle = {
							text : 'Irregular time data'
						};
						var xAxis = {
							type : 'datetime',
							title : {
								text : 'Time'
							}
						};
						var yAxis = {
							title : {
								text : 'Score'
							},
							min : 0
						};
						var tooltip = {
							headerFormat : '<b>{series.name}</b><br>',
						//pointFormat: '{point.x:%e. %b}: {point.y:.2f} m'
						};
						var plotOptions = {
							spline : {
								marker : {
									enabled : true
								}
							}
						};
						var series = [ {
							name : 'Stocktwits Sentiment score-time plot',
							// Define the data points. All series have a dummy year
							// of 1970/71 in order to be compared on the same x axis. Note
							// that in JavaScript, months start at 0 for January, 1 for February etc.
							data : eval(data),
							turboThreshold : 10000
						//  [[Date.UTC(2016,04,30,04,30,59),0.0000000000],[Date.UTC(2016,04,30,04,31,03),0.3180350000],[Date.UTC(2016,04,30,04,31,08),-0.5281090000],[Date.UTC(2016,04,30,04,32,41),-0.6509710000],[Date.UTC(2016,04,30,04,32,52),-0.0230971000],[Date.UTC(2016,04,30,04,33,06),-0.6934630000],[Date.UTC(2016,04,30,04,33,45),0.0000000000],[Date.UTC(2016,04,30,04,35,09),0.0000000000],[Date.UTC(2016,04,30,04,35,33),0.3563850000],[Date.UTC(2016,04,30,04,38,30),0.0451487000],[Date.UTC(2016,04,30,04,38,34),0.3174100000],[Date.UTC(2016,04,30,04,44,01),0.0000000000],[Date.UTC(2016,04,30,04,45,10),0.0000000000],[Date.UTC(2016,04,30,04,46,42),0.5718160000],[Date.UTC(2016,04,30,04,46,42),0.5718160000],[Date.UTC(2016,04,30,04,49,14),0.7452160000],[Date.UTC(2016,04,30,04,49,14),0.7452160000],[Date.UTC(2016,04,30,04,50,05),0.0000000000],[Date.UTC(2016,04,30,04,51,15),0.3368500000],[Date.UTC(2016,04,30,04,51,15),0.3368500000],[Date.UTC(2016,04,30,04,51,15),0.3368500000],[Date.UTC(2016,04,30,04,55,32),0.0000000000],[Date.UTC(2016,04,30,04,55,32),0.3765900000],[Date.UTC(2016,04,30,04,56,42),0.5931620000],[Date.UTC(2016,04,30,04,57,05),0.5504990000],[Date.UTC(2016,04,30,05,00,10),0.0000000000],[Date.UTC(2016,04,30,05,00,30),0.2662740000],[Date.UTC(2016,04,30,05,00,30),0.2662740000],[Date.UTC(2016,04,30,05,00,56),0.3652850000],[Date.UTC(2016,04,30,05,02,05),-0.8548250000],[Date.UTC(2016,04,30,05,02,58),0.4223900000],[Date.UTC(2016,04,30,05,03,06),0.0000000000],[Date.UTC(2016,04,30,05,03,13),0.0000000000],[Date.UTC(2016,04,30,05,05,39),0.5097280000],[Date.UTC(2016,04,30,05,06,53),0.0000000000],[Date.UTC(2016,04,30,05,07,11),-0.7238180000],[Date.UTC(2016,04,30,05,07,35),-0.0721591000],[Date.UTC(2016,04,30,05,09,48),-0.5722070000],[Date.UTC(2016,04,30,05,09,54),-0.7299360000],[Date.UTC(2016,04,30,05,10,03),0.0000000000],[Date.UTC(2016,04,30,05,10,31),0.4066860000],[Date.UTC(2016,04,30,05,11,37),0.6944750000],[Date.UTC(2016,04,30,05,12,50),-0.2062650000],[Date.UTC(2016,04,30,05,12,51),-0.2062650000],[Date.UTC(2016,04,30,05,12,51),-0.2062650000],[Date.UTC(2016,04,30,05,13,21),0.4004650000],[Date.UTC(2016,04,30,05,13,21),0.4004650000],[Date.UTC(2016,04,30,05,13,21),0.4004650000],[Date.UTC(2016,04,30,05,13,39),0.4341640000],[Date.UTC(2016,04,30,05,15,10),-0.6763450000]]
						//  [[Date.UTC(2016,04,30,04,30,59),0.0000000000],[Date.UTC(2016,04,30,04,31,03),0.3180350000],[Date.UTC(2016,04,30,04,31,08),-0.5281090000],[Date.UTC(2016,04,30,04,32,41),-0.6509710000],[Date.UTC(2016,04,30,04,32,52),-0.0230971000],[Date.UTC(2016,04,30,04,33,06),-0.6934630000],[Date.UTC(2016,04,30,04,33,45),0.0000000000],[Date.UTC(2016,04,30,04,35,09),0.0000000000],[Date.UTC(2016,04,30,04,35,33),0.3563850000],[Date.UTC(2016,04,30,04,38,30),0.0451487000],[Date.UTC(2016,04,30,04,38,34),0.3174100000],[Date.UTC(2016,04,30,04,44,01),0.0000000000],[Date.UTC(2016,04,30,04,45,10),0.0000000000],[Date.UTC(2016,04,30,04,46,42),0.5718160000],[Date.UTC(2016,04,30,04,46,42),0.5718160000],[Date.UTC(2016,04,30,04,49,14),0.7452160000],[Date.UTC(2016,04,30,04,49,14),0.7452160000],[Date.UTC(2016,04,30,04,50,05),0.0000000000],[Date.UTC(2016,04,30,04,51,15),0.3368500000],[Date.UTC(2016,04,30,04,51,15),0.3368500000],[Date.UTC(2016,04,30,04,51,15),0.3368500000],[Date.UTC(2016,04,30,04,55,32),0.0000000000],[Date.UTC(2016,04,30,04,55,32),0.3765900000],[Date.UTC(2016,04,30,04,56,42),0.5931620000],[Date.UTC(2016,04,30,04,57,05),0.5504990000],[Date.UTC(2016,04,30,05,00,10),0.0000000000],[Date.UTC(2016,04,30,05,00,30),0.2662740000],[Date.UTC(2016,04,30,05,00,30),0.2662740000],[Date.UTC(2016,04,30,05,00,56),0.3652850000],[Date.UTC(2016,04,30,05,02,05),-0.8548250000],[Date.UTC(2016,04,30,05,02,58),0.4223900000],[Date.UTC(2016,04,30,05,03,06),0.0000000000],[Date.UTC(2016,04,30,05,03,13),0.0000000000],[Date.UTC(2016,04,30,05,05,39),0.5097280000],[Date.UTC(2016,04,30,05,06,53),0.0000000000],[Date.UTC(2016,04,30,05,07,11),-0.7238180000],[Date.UTC(2016,04,30,05,07,35),-0.0721591000],[Date.UTC(2016,04,30,05,09,48),-0.5722070000],[Date.UTC(2016,04,30,05,09,54),-0.7299360000],[Date.UTC(2016,04,30,05,10,03),0.0000000000],[Date.UTC(2016,04,30,05,10,31),0.4066860000],[Date.UTC(2016,04,30,05,11,37),0.6944750000],[Date.UTC(2016,04,30,05,12,50),-0.2062650000],[Date.UTC(2016,04,30,05,12,51),-0.2062650000],[Date.UTC(2016,04,30,05,12,51),-0.2062650000],[Date.UTC(2016,04,30,05,13,21),0.4004650000],[Date.UTC(2016,04,30,05,13,21),0.4004650000],[Date.UTC(2016,04,30,05,13,21),0.4004650000],[Date.UTC(2016,04,30,05,13,39),0.4341640000],[Date.UTC(2016,04,30,05,15,10),-0.6763450000]]
						} ];

						var json = {};
						json.chart = chart;
						json.title = title;
						json.subtitle = subtitle;
						json.tooltip = tooltip;
						json.xAxis = xAxis;
						json.yAxis = yAxis;
						json.series = series;
						json.plotOptions = plotOptions;
						// json.turboThreshold = 10000;
						$('#container2').highcharts(json);

					});
				}
			});
			

			$.ajax({
						type : "GET",
						url : "pieChart",
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
<!-- 						<li><a href="chart.jsp"><i class="icon-list-alt"></i><span -->
<!-- 								class="hidden-tablet"> Charts</span></a></li> -->

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
					<li><i class="icon-home"></i> <a href="fpindex.jsp">Home</a> <i
						class="icon-angle-right"></i></li>
					<li><a href="#">Dashboard</a></li>
				</ul>

				<form name="form1" action="/fetchHighChartsDataServlet"
					method="POST">
					<!-- <input type="hidden" name="action" value="checking">  -->
					<select name="stockSymbol" id="stockSymbol" onchange="stockSelected()">
						<option value="AAPL">AAPL</option>
						<option value="CSCO">CSCO</option>
						<option value="DIS">DIS</option>
						<option value="EBAY">EBAY</option>
						<option value="GOOG">GOOG</option>
						<option value="INTC">INTC</option>
						<option value="LNKD">LNKD</option>
						<option value="RHT">RHT</option>
						<option value="TSLA">TSLA</option>
						<option value="TWTR">TWTR</option>
					</select>

				</form>
				
				<div id="dynamicTable"></div>
				
				<div id="container" style="height: 400px; min-width: 310px"></div>
<hr>
				<div id="container2" style="height: 400px; min-width: 310px"></div>
<hr>
				
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
				href="http://themifycloud.com/downloads/janux-free-responsive-admin-dashboard-template/"
				alt="Bootstrap_Metro_Dashboard">Market Wormhole Responsive
					Dashboard</a></span>

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


