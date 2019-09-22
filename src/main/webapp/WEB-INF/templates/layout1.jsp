<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title><tiles:insertAttribute name="title" /></title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="apple-touch-icon.png">
<!-- Place favicon.ico in the root directory -->

<link rel="stylesheet" href="/oms/custom/app.css">
<link rel="stylesheet" href="/oms/custom/vendor.css">
<link rel="stylesheet" href="/oms/custom/custom.css">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<link href="/oms/vendors/nprogress/nprogress.css" rel="stylesheet">
<link href="/oms/vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">
<link
	href="/oms/vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css"
	rel="stylesheet">
</head>
<body>
	<div class="main-wrapper">
		<div class="app" id="app">

			<tiles:insertAttribute name="header" />
			<tiles:insertAttribute name="sidebar" />
			<article class="content item-editor-page">
				<tiles:insertAttribute name="body" />
			</article>

		</div>
	</div>

	<div class="ref" id="ref">
		<div class="color-primary"></div>
		<div class="chart">
			<div class="color-primary"></div>
			<div class="color-secondary"></div>
		</div>
	</div>
	
	<script src="/oms/custom/vendor.js"></script>
	<script src="/oms/custom/app.js"></script>

	<script src="/oms/vendors/moment/min/moment.min.js"></script>
	<script src="/oms/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script
		src="/oms/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
		<script src="/oms/custom/oms.js"></script>
</body>
</html>