<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link href="Son_cus/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<h5 class="card-header">Title Search</h5>
	<div class="card-body">
		<div class="input-group">
			<form action="blogSearch.do" method="get" style="width:100%;">
				<input name="searchWord" type="text" class="form-control" placeholder="Search for..." style="float:left; width:75%;">
				<span class="input-group-btn">
					<button class="btn btn-secondary" type="submit" id="searchBtn" style="float:right; width:25%;">Go!</button>
				</span> 
			</form>
		</div>
	</div>
</body>
</html>