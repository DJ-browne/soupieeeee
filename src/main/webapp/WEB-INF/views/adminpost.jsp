<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.io.PrintWriter"%>
    <%@page import="com.human.soup.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    String id = null;
    String name = null;
    if(session.getAttribute("userid") != null) {
  	  id = (String) session.getAttribute("userid"); 
  	name = (String) session.getAttribute("username"); 
    }

    %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <title>Soupieeeee</title>
  <link href="resources/css/admin.css" rel="stylesheet"/>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-body-tertiary" style="padding: 0 15px; margin: 30px 20px;">
  <div class="container-fluid">
    <a class="navbar-brand" style="color: #1dc078; font-weight: bold; font-size: 22px;" href="main"><img src="resources/img/soupie.png">Soupieeeee</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" style=" color: #4a4a4a; font-size: 16px;" aria-current="page" href="main">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" style=" color: #4a4a4a; font-size: 14px; margin-top: 2px;" href="adminpost">공지사항</a>
        </li>
       </ul>
    </div>
    <%
    	if (id == null) {
    	
    %>
    <div class="dropdown">
  <button class="btn btn-success dropdown-toggle" id="dropD" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="#1dc078;" >
    접속하기
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="login">로그인</a></li>
    <li><a class="dropdown-item" href="join">회원가입</a></li>
  </ul>
</div>
</div>
</nav>
<div class="board_wrap">
		<section class="board_header">
			<div class="board_title">
				<h2>공지사항</h2>
				<p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
			</div>
		</section>
			<div class="board_list_wrap">
			  	<div class="table-responsive" id="tableH" >
        <table class="table table-striped table-sm text-center" id="tableid">
          <thead>
            <tr id="tabletr">
              <th scope="col">글번호</th>
              <th scope="col">제목</th>
              <th scope="col">글쓴이</th>
              <th scope="col">작성일</th>
              <th scope="col">조회</th>
              
            </tr>
          </thead>         	
        		
                      
        	  
           </table>
     	 </div>
			
				
		</div>
		<div class="board_page">
			<a href="#" class="bt first"><<</a> 
			<a href="#" class="bt prev"><</a>
			<a href="#" class="num on">1</a> 
			<a href="#" class="num">2</a> 
			<a href="#" class="num">3</a> 
			<a href="#" class="num">4</a> 
			<a href="#" class="num">5</a> 
			<a href="#" class="bt next">></a> 
			<a href="#" class="bt last">>></a>
		</div>
		
<% } else { if(name.equals("코코딩")) {%>
    	<div class="dropdown">
  <button class="btn btn-success dropdown-toggle" id="dropD" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    마이페이지관리
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="myPage"><%=name%> 페이지</a></li>
    <li><a class="dropdown-item" href="myBooking">예약관리페이지</a></li>
    <li><a class="dropdown-item" href="logoutAction">로그아웃</a></li>
  </ul>
</div>
</div>
</nav>
<div class="board_wrap">
		<section class="board_header">
			<div class="board_title">
				<h2>공지사항</h2>
				<p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
			</div>
		</section>
			<div class="board_list_wrap">
			  	<div class="table-responsive" id="tableH" >
         <table class="table table-striped table-sm text-center" id="tableid">
          <thead>
            <tr id="tabletr">
              <th scope="col">글번호</th>
              <th scope="col">제목</th>
              <th scope="col">글쓴이</th>
              <th scope="col">작성일</th>
              <th scope="col">조회</th>
              
            </tr>
          </thead>         	
         
                          	  
           </table>
     	 </div>
			
				
		</div>
		<div class="board_page">
			<a href="#" class="bt first"><<</a> 
			<a href="#" class="bt prev"><</a>
			<a href="#" class="num on">1</a> 
			<a href="#" class="num">2</a> 
			<a href="#" class="num">3</a> 
			<a href="#" class="num">4</a> 
			<a href="#" class="num">5</a> 
			<a href="#" class="bt next">></a> 
			<a href="#" class="bt last">>></a>
		</div>
		
		<div class="bt_wrap">
			<button type="button" class="btn btn-success" id="insertBtn" ><a href="insertBoard">글쓰기</a></button>
		</div>
	</div>	
	
<%} else {// else안에 if %>
    	<div class="dropdown">
  <button class="btn btn-success dropdown-toggle" id="dropD" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    마이페이지관리
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="myPage"><%=name%> 페이지</a></li>
    <li><a class="dropdown-item" href="logoutAction">로그아웃</a></li>
  </ul>
</div>	
  </div>
</nav>
<div class="board_wrap">
		<section class="board_header">
			<div class="board_title">
				<h2>공지사항</h2>
				<p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
			</div>
		</section>
			<div class="board_list_wrap">
			  	<div class="table-responsive" id="tableH" >
         <table class="table table-striped table-sm text-center" id="tableid">
          <thead>
            <tr id="tabletr">
              <th scope="col">글번호</th>
              <th scope="col">제목</th>
              <th scope="col">글쓴이</th>
              <th scope="col">작성일</th>
              <th scope="col">조회</th>
              
            </tr>
          </thead>         	

        	  
           </table>
     	 </div>
			
				
		</div>
		<div class="board_page">
			<a href="#" class="bt first"><<</a> 
			<a href="#" class="bt prev"><</a>
			<a href="#" class="num on">1</a> 
			<a href="#" class="num">2</a> 
			<a href="#" class="num">3</a> 
			<a href="#" class="num">4</a> 
			<a href="#" class="num">5</a> 
			<a href="#" class="bt next">></a> 
			<a href="#" class="bt last">>></a>
		</div>

    
    <%} // else%>
    
<%} // else%>






 	
 
 
 
 
 
 

</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	$.ajax({
		url: "getBoardList",
		type : "get",
		dataType: "json",
		success : function(data){
			
			var adminList = data.adminList;

				let htmlTag ='';
				
				for( let idx in adminList) {
					
					htmlTag +='<tr id="tabletr">' +
		              '<td scope="col">'+adminList[idx].postId+'</td>' +
		              '<td scope="col">'+adminList[idx].postTitle+'</td>' +
		              '<td scope="col">관리자</td>' +
		              '<th scope="col">'+adminList[idx].postDate+'</th>'+
		              '<th scope="col">'+adminList[idx].postCnt+'</th>'
		                
		       }
								
								
				// thead 다음을 지우고
	            $('#tableid > thead').next().remove();
				// 지운후 thead 다음에 넣는다
	            $('#tableid > thead').after( "<tbody>" +htmlTag +"</tbody>");
	            
					
			
		},
		error : function(err){
			console.log(err);
		}				
		
	}) //ajax
})


$(function() {
	
	

	
})


</script>
</html>