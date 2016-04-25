<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Market Wormhole</title>

<!-- Bootstrap Core CSS -->
<link href="css/fpbootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/full-width-pics.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Market Wormhole</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->

			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Full Width Image Header with Logo -->
	<!-- Image backgrounds are set within the full-width-pics.css file. -->
	<header class="image-bg-fixed-height">
		<img class="img-responsive" src="" alt="">
	</header>

	<!-- Content Section -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<h1 class="section-heading">Market Wormhole</h1>
					<p class="lead section-lead">Buy High and Sell Low</p>
					<p class="section-paragraph">Predict Market Uncertainity</p>
					<button type="button" class="btn btn-primary"
						onclick="window.open('login.jsp')">View Prediction</button>

				</div>

				<div class="col-lg-6">
					<img
						src="https://www.google.com/finance/getchart?q=AAPL&p=20Y&i=86400" />
				</div>
			</div>
		</div>
	</section>


	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<!-- TradingView Widget BEGIN -->
					<div id="tv-medium-widget-d4ecc"></div>
					<script type="text/javascript"
						src="https://d33t3vvu2t2yu5.cloudfront.net/tv.js"></script>
					<script type="text/javascript">
new TradingView.MediumWidget({
  "container_id": "tv-medium-widget-d4ecc",
  "symbols": [
    [
      "Apple",
      "AAPL "
    ],
    [
      "Google",
      "GOOGL"
    ],
    [
      "Yahoo!",
      "YHOO"
    ]
  ],
  "gridLineColor": "#E9E9EA",
  "fontColor": "#83888D",
  "underLineColor": "#dbeffb",
  "trendLineColor": "#4bafe9",
  "width": "1000px",
  "height": "350px",
  "tradeItWidget": false,
  "locale": "en"
});
</script>
					<!-- TradingView Widget END -->


				</div>


			</div>
		</div>
	</section>


	<!-- Footer -->
	<footer>
		<div class="navbar navbar-default navbar-fixed-bottom">
			<div class="container">
				<p class="navbar-text pull-left">Copyright @ Market Wormhole
					2016.</p>
			</div>
		</div>
	</footer>

	<!-- jQuery -->
	<script src="js/fpjquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/fpbootstrap.min.js"></script>

</body>

</html>
