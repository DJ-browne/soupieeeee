<%@page import="com.human.soup.*"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>

     
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
<title>공지사항</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
 <link href="resources/css/admin.css" rel="stylesheet">
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
  <button class="btn btn-success dropdown-toggle" id="dropD" type="button" data-bs-toggle="dropdown" aria-expanded="false" s  color: #1dc078;>
    접속하기
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="login">로그인</a></li>
    <li><a class="dropdown-item" href="join">회원가입</a></li>
  </ul>
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
<%} // else%>

<%} // else%>
    
  </div>
</nav>
	<div class="board_wrap">
		<section class="board_header">
			<div class="board_title">
				<h2>공지사항</h2>
				<p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
			</div>
		</section>
		<form action="saveBoard" method="post" id="frm">
		<div class="board_insert_wrap">
			<div class="board_insert">
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dd><input type="text" name="postTitle" placeholder="제목 입력" ></dd>
					</dl>
				</div>				
				<div class="info">
					<dl>
						<dt>글쓴이</dt>
						<dd><input type="text" value="관리자" readonly></dd>
					</dl>
					<dl>
						<dt>비밀번호</dt>
						<dd><input type="password" name="postPass" placeholder="비밀번호 입력" ></dd>
					</dl>
					
				</div>				
				<div class="cont">
					<textarea name="postContent"  placeholder="내용 입력"></textarea>
				</div>				
			</div>
		</div>
				
		
		</form>
		
		
		
			
		<div class="bt_wrap">
			<button type="button" class="btn btn-success" id="insertBtn" >등록</a></button>
			<button type="button" class="btn btn-success" id="cancelBtn" ><a href="adminpost">취소</a></button>
		</div>
	</div>


</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">

$(function () {
	$('#insertBtn').click(function() {
		$('#frm').submit();
	})
})



</script>


</html>