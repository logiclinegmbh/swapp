<%@ include file="_jspheader.jsp"%>
<!doctype html>
<%-- <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>

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


<link href="https://heroku.github.com/template-app-bootstrap/heroku.css"
	rel="stylesheet">
<!-- <link href="/static/css/logicline.css" rel="stylesheet"> -->
<link href="<c:url value="/static/css/logicline.css"/>" rel="stylesheet">

</head>

<body>

	<!-- Start: Header -->
	<div id="Header">
		<header>
			<%@ include file="_header.jsp"%>
		</header>
	</div>
	<!-- End: Header -->

	<div class="container" id="Fullpage">
		<div class="row">
			<div class="span8 offset2">
				<div class="page-header">
					<h4>Simple Page</h4>
				</div>
				<form:form method="post" action="add" commandName="person"
					class="form-vertical">

					<table class="table unstriped">
						<tbody>
							<tr>
								<td><form:label path="firstName">First Name</form:label> <form:input
										path="firstName" /></td>
							</tr>
							<tr>
								<td><form:label path="lastName">Last Name</form:label> <form:input
										path="lastName" /></td>
								<td><form action="delete/${person.id}" method="post">
										<input type="submit" value="Add Person" class="btn" />
									</form></td>
							</tr>

						</tbody>
					</table>
				</form:form>


				<c:if test="${!empty peopleList}">
					<h3>People</h3>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Name</th>
								<th>&nbsp;</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${peopleList}" var="person">
								<tr>
									<td>${person.lastName},${person.firstName}</td>
									<td><form action="delete/${person.id}" method="post">
											<input type="submit" class="btn btn-danger btn-mini"
												value="Delete" />
										</form></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
			</div>
		</div>
	</div>
	<footer>
		<%@ include file="_footer.jsp"%>
	</footer>
</body>
</html>
