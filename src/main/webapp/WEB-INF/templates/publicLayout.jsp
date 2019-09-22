<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title><tiles:insertAttribute name="title" /></title>

<link href="/pmhub/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/pmhub/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="/pmhub/build/css/custom.min.css" rel="stylesheet">

</head>
  <body class="nav-md">
	<tiles:insertAttribute name="body" />
	<script src="/pmhub/vendors/jquery/dist/jquery.min.js"></script>
</body>
</html>