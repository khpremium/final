<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Simple Sidebar - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="mypage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="mypage/css/simple-sidebar.css" rel="stylesheet">

	<link rel="stylesheet" href="css/reservation.css">

	<!-- 제이쿼리 -->
   <script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>

</head>



<script type="text/javascript">




</script>

<body>

	<!-- 옆 각 메뉴 태그 -->
 	 <div class="d-flex" id="wrapper">
    <!-- Sidebar -->
   	 <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">Start Airline </div>
      <div class="list-group list-group-flush">
        <a href="#" class="list-group-item list-group-item-action bg-light">My Reservation</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">My Board</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">My Milage</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">Profile</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">Passport</a> 
        <hr/>       
      </div>
    </div>
    <!-- /#sidebar-wrapper -->
    </div>
	<!-- 옆 각 메뉴 태그 끝 -->
	
  
     <div id="page-content-wrapper">
		<!--  하얀색 헤더 -->
       <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn btn-primary" id="menu-toggle">Total screen</button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Notice</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Board</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Priview</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">My Page</a>
            </li>            
          </ul>
        </div>
      </nav>      
      
      <!--하얀색 헤더 끝-->

	<!-- 페이지 내용 시작 -->          
     
    <p>2019 03 15 ~ 2019 04 01</p>

				
				<h1>출국 항공기 예약 내용</h1>				
				<!-- 출발비행기 -->
				<div id="dept">
					<table>
						<tr>
							<th>항공사</th>
							<th>편명</th>
							<th>출발시간</th>
							<th>도착시간</th>
							<th>성함</th>
							<th>예약번호</th>
							<th>결제여부</th>
							<th>선택 취소</th>
						</tr>
						
							<tr>
							
								<td>${myres[1].airline}</td>
								<td>${myres[1].airinfo_flight}</td>
								<td>${myres[1].d_time}</td>
								<td>${myres[1].a_time}</td>
								<td>${myres[1].name}</td>
								<td>${myres[1].rv_code}</td>
								<c:choose>
								<c:when test="${myres[1].payment_chk!=0}">
								<td>결제완료</td>
								</c:when>
								<c:otherwise>
								<td>결제대기</td>
								</c:otherwise>								
								</c:choose>
							  <td><input type="radio" name="cancel"/></td>							  						
							</tr>						
					</table>
					
				</div>
				
				<br/>
				<br/>
				
				<h1>귀국 항공기 예약 내역</h1>				
				<!-- 도착비행기 -->
				<div id="arrv">
					<table>
						<tr>
							<th>항공사</th>
							<th>편명</th>
							<th>출발시간</th>
							<th>도착시간</th>
							<th>성함</th>
							<th>예약번호</th>
							<th>결제여부</th>
							<th>선택 취소</th>
						</tr>
						
							<tr>
							
								<td>${myres[0].airline}</td>
								<td>${myres[0].airinfo_flight}</td>
								<td>${myres[0].d_time}</td>
								<td>${myres[0].a_time}</td>
								<td>${myres[0].name}</td>
								<td>${myres[0].rv_code}</td>
								<c:choose>
								<c:when test="${myres[0].payment_chk!=0}">
								<td>결제완료</td>
								</c:when>
								<c:otherwise>
								<td>결제대기</td>
								</c:otherwise>								
								</c:choose>
							  <td><input type="radio" name="cancel"/></td>
							  						
							</tr>
						
					</table>
				</div>
    
       
    <!-- /#page-content-wrapper -->
	<!-- 페이지 내용 끝 -->
	
  </div>
  <!-- /#wrapper -->
	
	
	
	
  <!-- Bootstrap core JavaScript -->
  <script src="mypage/vendor/jquery/jquery.min.js"></script>
  <script src="mypage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>

</body>

</html>
