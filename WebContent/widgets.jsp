<%@ page import="com.mysql.*" %>
<%@ page import="java.sql.*" %>
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
<%@ page import="java.sql.ResultSet" %>
<%-- <jsp:include page="logincheck.jsp" /> --%>

<%@ page import ="java.sql.*" %>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
 

	<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>

</head>

<body>
	<%@ include file="navBar.jsp" %>
<script>
$.ajax({  
 		    type: "GET",  
 		    url: "fetchHighChartsDataServlet",  
 		    success: function(data){
 		    	console.log('hola',data);

$(document).ready(function() { 
	alert(data)
   var chart = {
      type: 'spline'      
   }; 
   var title = {
      text: 'Snow depth at Vikjafjellet, Norway'   
   };
   var subtitle = {
      text: 'Irregular time data in Highcharts JS'
   };
   var xAxis = {
      title: {
         text: 'Date'
      }
   };
   var yAxis = {
      title: {
         text: 'Snow depth (m)'
      },
      min: 0
   };
   var tooltip = {
      headerFormat: '<b>{series.name}</b><br>',
      pointFormat: '{point.x:%e. %b}: {point.y:.2f} m'
   };
   var plotOptions = {
      spline: {
         marker: {
            enabled: true
         }
      }
   };
   var series= [{
         name: 'Winter 2007-2008',
            // Define the data points. All series have a dummy year
            // of 1970/71 in order to be compared on the same x axis. Note
            // that in JavaScript, months start at 0 for January, 1 for February etc.
         data: [data[0],data[1]]
      }
   ];     
      
   var json = {};
   json.chart = chart;
   json.title = title;
   json.subtitle = subtitle;
   json.tooltip = tooltip;
   json.xAxis = xAxis;
   json.yAxis = yAxis;  
   json.series = series;
   json.plotOptions = plotOptions;
   $('#container').highcharts(json);
  
});
 		    }
});

</script>     
	
<%--  	<% response.setIntHeader("Refresh", 2); %> --%>
	
	<div class="container-fluid-full">
		<div class="row-fluid">
<hr>
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						
 						<li><a href="index.jsp"><i class="icon-eye-open"></i><span 
 								class="hidden-tablet">Dashboard</span></a></li>
						<li><a href="widgets.jsp"><i class="icon-dashboard"></i><span
								class="hidden-tablet"> Scores</span></a></li>
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
						<li><a href="chart.jsp"><i class="icon-list-alt"></i><span
								class="hidden-tablet"> Charts</span></a></li>

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
					<li><i class="icon-home"></i> <a href="index.jsp">Home</a> <i
						class="icon-angle-right"></i></li>
					<li><a href="#">Scores</a></li>
				</ul>
				
				 <div class="col-md-2">
        <div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Select Symbol
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="#">AAPL</a></li>
    <li><a href="#">CSCO</a></li>
    <li><a href="#">DIS</a></li>
    <li><a href="#">EBAY</a></li>
    <li><a href="#">GOOG</a></li>
    <li><a href="#">INTC</a></li>
    <li><a href="#">LNKD</a></li>
    <li><a href="#">RHT</a></li>
    <li><a href="#">TSLA</a></li>
    <li><a href="#">TWTR</a></li>
  </ul>
</div>  	</div>
				

			<div id="container" style="height: 400px; min-width: 310px"></div>	

					<hr>
					<hr>
					<hr>
					<hr>
						<div class="box-content">
					<p><b>Displaying table contents: </b></p>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Symbol</th>
                <th>Sentiment</th>
                <th>Source</th>
                
            </tr>
        </thead>
        <tbody>


            <%
            	//String symbol = request.getParameter("symbol");    
            	//String sentiment = request.getParameter("sentiment");            
              	Statement stmt = null;
              	Connection conn = null;
              	
              
              	Class.forName("com.mysql.jdbc.Driver");
                
                conn = DriverManager.getConnection("jdbc:mysql://stocktwits.c0nhenmgg8th.us-west-2.rds.amazonaws.com:3306/?useSSL=false", "cmpe295b", "cmpe295b");
                
                stmt = conn.createStatement();
                String query = "select symbol,sentiment from messages.sentiment";
                ResultSet rs = null;
                rs = stmt.executeQuery(query);
                
               try{ 
                while(rs.next()){
            %>
            <tr>
                <%
                String symbol = rs.getString("symbol");    
                float sentiment = rs.getFloat("sentiment");
                    
                    
                %>
                <td><%=symbol %></td>
                <td><%=sentiment %></td>
                <td>NYT, Twitter, Stocktwits</td>
                            </tr>               
	<%} %>
            <%      
                }finally{
                	
                	try{
                        
                        if(conn != null)  {conn.close();}
                }catch(SQLException e){System.out.println("SQL error : " + e);}

                }      	
                   
            %>
            
            

        </tbody>
    </table>
    
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
</html>
