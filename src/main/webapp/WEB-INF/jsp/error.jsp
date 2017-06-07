<%@ include file="/WEB-INF/jsp/_jspheader.jsp"%>
<!doctype html>
<%@ page isErrorPage="true" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="utf-8">
<title>Spring MVC and Hibernate Template</title>

<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="<c:url value="/static/img/favicon.ico"/>"
	type="image/x-icon; charset=binary" />
<link
	href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<link href="//cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.css"
	rel="stylesheet">

<!--
  IMPORTANT:
  This is Heroku specific styling. Remove to customize.
  -->
<link href="https://heroku.github.com/template-app-bootstrap/heroku.css"
	rel="stylesheet">
<!-- <link href="/static/css/logicline.css" rel="stylesheet"> -->
<link href="<c:url value="/static/css/logicline.css"/>" rel="stylesheet">

<script src="//code.jquery.com/jquery-1.9.1.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.js"></script>
</head>

<body onload="prettyPrint();">

	<div id="MainContainer">
		<!-- Start: Header -->
		<header>
			<%@ include file="_header.jsp"%>
		</header>
		<!-- End: Header -->
		
		<div id="Fullpage">
			<div class="row">
				<div class="span8 offset2">

					<div style="margin-top: 20px">
						<h2>Ooops, an unexpected Error occoured!</h2>
						Status Code:   <c:out value="${requestScope['javax.servlet.error.status_code']}"/><p>
						Message:       <c:out value="${requestScope['javax.servlet.error.message']}"/><p>
					</div>

					<div class="tab-content"></div>
				</div>
			</div>
		</div>
		
		<!-- Start: Footer -->
		<footer>
			<%@ include file="_footer.jsp"%>
		</footer>
		<!-- End: Footer -->
	</div>
</body>
</html>
