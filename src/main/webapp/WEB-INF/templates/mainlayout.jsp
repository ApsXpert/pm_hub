<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title><tiles:insertAttribute name="title" /></title>


<link href="/oms/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">


<link href="/oms/vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">
<!-- bootstrap-datetimepicker -->
<link
	href="/oms/vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css"
	rel="stylesheet">

<!-- iCheck -->
<link href="/oms/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
<!-- bootstrap-wysiwyg -->
<link href="/oms/vendors/google-code-prettify/bin/prettify.min.css"
	rel="stylesheet">
<!-- Custom Theme Style -->
<link href="/oms/build/css/custom.css" rel="stylesheet">

</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="index.html" class="site_title"><i class="fa fa-paw"></i>
							<span>Organization MS</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="/oms/images/profile.jpg" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome,</span>
							<h2>Atif Shahzad</h2>
						</div>
					</div>

					<br />

					<!-- sidebar menu -->
					<tiles:insertAttribute name="sidebar" />
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
							href="login.html"> <span class="glyphicon glyphicon-off"
							aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<tiles:insertAttribute name="topbar" />
			<!-- /top navigation -->

			<!-- page content -->
			<tiles:insertAttribute name="body" />
			<!-- /page content -->

			<!-- footer content -->
			<tiles:insertAttribute name="footer" />
			<!-- /footer content -->
		</div>
	</div>
	<script src="/oms/vendors/jquery/dist/jquery.min.js"></script>
	<script src="/oms/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="/oms/vendors/iCheck/icheck.min.js"></script>
	<script src="/oms/vendors/google-code-prettify/src/prettify.js"></script>
	<script src="/oms/vendors/moment/min/moment.min.js"></script>
	<script src="/oms/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- bootstrap-datetimepicker -->
	<script
		src="/oms/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
	<script src="/oms/vendors/DateJS/build/date.js"></script>
	<script src="/oms/vendors/fastclick/lib/fastclick.js"></script>
	<script src="/oms/build/js/custom.js"></script>
	<script
		src="https://cdn.ckeditor.com/ckeditor5/11.2.0/classic/ckeditor.js"></script>

	<script>
		$('#closingDate').datetimepicker({
			format : 'YYYY-MM-DD'
		});
		
		var jobEditor;
        ClassicEditor
            .create( document.querySelector( '#editor' ) )
            .then( editor => {
            	console.log( 'Editor was initialized', editor );
            	jobEditor = editor;
       		 } )
            .catch( error => {
                console.error( error );
            } );
	</script>

</body>
</html>