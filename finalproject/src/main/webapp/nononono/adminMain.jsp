<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>



  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>회원 정보 관리</title>



  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
  <!-- FK chk  -->
  <script src="nononono/chkchk.js"></script>
  
  <!-- Custom fonts for this template-->
  <link href="nononono/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="nononono/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="nononono/css/sb-admin.css" rel="stylesheet">

</head>

<body id="page-top">

  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="adminMain.do">관리자 전용 페이지</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      <i class="fas fa-bars"></i>
    </button>

    

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
     
      
    </ul>

  </nav>

  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="adminMain.do">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>회원 정보 관리</span>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>항공편 및 예약 관리</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <h6 class="dropdown-header">항공편 및 예약 관리</h6>
          <a class="dropdown-item" href="airTables.do">항공편 관리</a>
          <a class="dropdown-item" href="resTable.do">예약 정보 관리</a>
          <!-- <div class="dropdown-divider"></div>
          <h6 class="dropdown-header">Other Pages:</h6>
          <a class="dropdown-item" href="404.jsp">404 Page</a>
          <a class="dropdown-item" href="blank.jsp">Blank Page</a> -->
        </div>
      </li>
    
      
    </ul>

	  <!-- Sidebar end -->

    <div id="content-wrapper">

      <div class="container-fluid">

       


       

        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            회원 정보 관리</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                
                  <tr>
                    <th>아이디</th>
                    <th>비밀번호</th>
                    <th>이름</th>
                    <th>전화번호</th>
                    <th>이메일</th>
                    <th>포인트</th>
                    <th>성별</th>
                    <th>생년월일</th> 
                    <th>수정 및 삭제</th> 
                    
                  </tr>
                  
                </thead>
               
                <tbody>
                 
                  <c:forEach var="dto" items="${aList}" varStatus="status"> 
                  	 <tr>
                		
                  		<th>${dto.id}</th>
                  		<th>${dto.pass}</th>
                  		<th>${dto.name}</th> 
                  		<th>${dto.phonenum}</th>
                  		<th>${dto.email}</th>
                  		<th>${dto.point}</th>
                  		<th>${dto.gender}</th>
                  		<th>${dto.birth}</th>
                  		
                  		
                  		
                  		<th>
                  		
                  		
                  		
                  		<a class="btn btn-secondary" id="clientUpdateBtn">수정</a>
                  		<input type="hidden" value="${dto.id}" id="client_id"/>
                		<a href="#" class="btn btn-danger" id="clientBtn">삭제</a></th>
                  	</tr> 
                  	
                  
                  
                   </c:forEach> 





                </tbody>
              </table>
            </div>
          </div>
        </div>

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © KH Airplane 2019</span>
          </div>
        </div>
      </footer>

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a> 

  


  <!-- Bootstrap core JavaScript-->
  <script src="nononono/vendor/jquery/jquery.min.js"></script>
  <script src="nononono/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="nononono/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="nononono/vendor/chart.js/Chart.min.js"></script>
  <script src="nononono/vendor/datatables/jquery.dataTables.js"></script>
  <script src="nononono/vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="nononono/js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="nononono/js/demo/datatables-demo.js"></script>
  

</body>

</html>