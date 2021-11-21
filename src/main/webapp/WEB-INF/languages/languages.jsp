<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Languages</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/date.js"></script>

</head>
<body>
<div class="container pt-2 w-75">
	<table class="table table-sm table-striped table-bordered table-hover">
	  <thead class="thead-dark">
	    <tr>
	      <th scope="col">Name</th>
	      <th scope="col">Creator</th>
	      <th scope="col">Version</th>
	      <th scope="col">Actions</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach var="language" items="${languages}">
	  		<tr>
	      <th class="font-weight-bold"><a href="/languages/${language.id}">${language.name}</a></th>
	      <td>${language.creator}</td>
	      <td>${language.version}</td>
	      <td>
	      	<div class="form-group row">
		      	<form class="col-sm-2 col-form-label col-form-label-sm" action="/languages/${language.id}/" method="POST">
					<input type="hidden" name="_method" value="delete">
					<input type="submit" value="delete">
				</form>
				<form class="col-sm-2 col-form-label col-form-label-sm" action="/languages/${language.id}/edit" method="GET">
					<input type="submit" value="edit">
				</form> 
			</div>
		</td>
	    </tr>	
	  	</c:forEach>
	  </tbody>
	</table>
</div>
<div class="container w-50">
   	<form:form action="/languages" method="POST" modelAttribute="language">
			<form:input type="hidden" path="id"/>
		<p>
			<form:label path="name">Name: </form:label>
			<form:input path="name" />
			<form:errors path="name" />
			
		</p>
		<p>
			<form:label path="creator">Creator: </form:label>
			<form:input path="creator" />
			<form:errors path="creator" />
			
		</p>
		<p>
			<form:label path="version">Version: </form:label>
			<form:input path="version" />
			<form:errors path="version" />
		</p>
		<input type="submit" value="Submit" />
	</form:form>
</div>
</body>
</html>
