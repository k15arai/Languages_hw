<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<div class="form-group row justify-content-sm-right row-cols-auto">
		<form class="col col-form-label-sm" action="/languages/" method="GET">
			<input type="submit" value="Dashboard">
		</form>
	</div>
<div>
	<table class="table border">
		<tr>
			<td><c:out value="${language.name}" /></td>
		</tr>		
		<tr>
			<td><c:out value="${language.creator}" /></td>
		</tr>		
				<tr>
			<td><c:out value="${language.version}" /></td>
		</tr>		
	</table>
	<div class="form-group row">
		<form class="col-sm-2 col-form-label col-form-label-sm" action="/languages/${language.id}/edit" method="GET">
			<input type="submit" value="edit">
		</form>
		<form class="col-sm-2 col-form-label col-form-label-sm" action="/languages/${language.id}/" method="POST">
			<input type="hidden" name="_method" value="delete">
			<input type="submit" value="delete">
		</form>
	</div> 	
</div>
</div>
</body>
</html>
