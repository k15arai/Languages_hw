<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${language.name}</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container w-50">
	<div class="form-group row justify-content-md-right row-cols-auto">
		<form class="col col-form-label-sm" action="/languages/${language.id}/" method="POST">
			<input type="hidden" name="_method" value="Delete">
			<input type="submit" value="Delete">
		</form>
		<form class="col col-form-label-sm" action="/languages/" method="GET">
			<input type="submit" value="Dashboard">
		</form>
	</div>
<div>
	<form:form method="POST" action="/languages/${language.id}" modelAttribute="language">
	<input type="hidden" name="_method" value="put">
			<p>
			<form:label path="name">NAME</form:label>
			<form:input path="name" />
			<form:errors path="name"/>
		</p>
		<p>
			<form:label path="creator">Creator</form:label> 
			<form:input path="creator" />
			<form:errors path="creator"/>
		</p>
		<p>
			<form:label path="version">Version</form:label>
			<form:input path="version" />
			<form:errors path="version"/>
		</p>
		<input type="submit" value="Update" />
	</form:form>
</div>
</div>
</body>
</html>
