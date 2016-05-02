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

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
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




</head>

<body>
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				</a> <a class="brand" href="fpindex.jsp"><span>Market Wormhole</span></a>

				<!-- start: Header Menu -->
				
					<ul class="nav pull-right">	
				<a href="login.jsp">						
						
						<button type="button" class="btn btn-success">Sign In / Register</button>
											
						
					</a>
					</ul>
				</div>
				<!-- end: Header Menu -->

			</div>
		</div>
		

    <!-- Page Content -->
     <div class="container">   
     <div class="row">
            <div class="col-md-6">
                <h1>About Market Wormhole</h1>
                <p>Buy Low, Sell High</p>
                <p><b><u>GAUGE REAL TIME SENTIMENT</u></b></p>

<p>Check the level of bullishness and bearishness around a stock before you make your next investment.</p>
                
                <p>Want to know stock prediction.? Click on button below</p>
                                <a href="login.jsp">
                <button type="button" class="btn btn-primary"
						>View Prediction</button></a>
            </div>
            <hr>
            <div class="col-md-6">
                <!-- TradingView Widget BEGIN -->
<div id="tv-miniwidget-eebe8"></div>
<script type="text/javascript" src="https://d33t3vvu2t2yu5.cloudfront.net/tv.js"></script>
<script type="text/javascript">
new TradingView.MiniWidget({
  "container_id": "tv-miniwidget-eebe8",
  "tabs": [
    "Equities",
    "Commodities",
    "Bonds",
    "Forex"
  ],
  "symbols": {
    "Equities": [
      [
        "S&P500",
        "SPX500"
      ],
      [
        "NQ100",
        "NAS100"
      ],
      [
        "Dow30",
        "DOWI"
      ],
      [
        "Nikkei225",
        "JPN225"
      ],
      [
        "Apple",
        "AAPL "
      ],
      [
        "Google",
        "GOOG"
      ]
    ],
    "Commodities": [
      [
        "Emini",
        "ES1!"
      ],
      [
        "Euro",
        "E61!"
      ],
      [
        "Gold",
        "GC1!"
      ],
      [
        "Oil",
        "CL1!"
      ],
      [
        "Gas",
        "NG1!"
      ],
      [
        "Corn",
        "ZC1!"
      ]
    ],
    "Bonds": [
      [
        "Eurodollar",
        "CME:GE1!"
      ],
      [
        "T-Bond",
        "CBOT:ZB1!"
      ],
      [
        "Ultra T-Bond",
        "CBOT:UD1!"
      ],
      [
        "Euro Bund",
        "FX:BUND"
      ],
      [
        "Euro BTP",
        "EUREX:II1!"
      ],
      [
        "Euro BOBL",
        "EUREX:HR1!"
      ]
    ],
    "Forex": [
      "FX:EURUSD",
      "FX:GBPUSD",
      "FX:USDJPY",
      "FX:USDCHF",
      "FX:AUDUSD",
      "FX:USDCAD"
    ]
  },
  "gridLineColor": "#E9E9EA",
  "fontColor": "#83888D",
  "underLineColor": "#dbeffb",
  "trendLineColor": "#4bafe9",
  "activeTickerBackgroundColor": "#EDF0F3",
  "large_chart_url": "https://www.tradingview.com/chart/",
  "noGraph": false,
  "width": "500px",
  "height": "400px",
  "locale": "en"
});
</script>
<!-- TradingView Widget END -->
                
                
            </div>
        </div>	
        
        
	</div>
	
	<footer class="footer navbar-fixed-bottom">

		<p>
			<span style="text-align: left; float: left">&copy; 2016 <a
				href="http://themifycloud.com/downloads/janux-free-responsive-admin-dashboard-template/"
				alt="Bootstrap_Metro_Dashboard">Market Wormhole Responsive
					Dashboard</a></span>

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
	<!-- end: JavaScript-->

</body>

</html>
