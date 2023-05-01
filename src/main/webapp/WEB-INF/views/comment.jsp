<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.io.PrintWriter"%>
    <%@page import="com.human.soup.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    String postId = request.getParameter("postId");
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
    	if (id == null) {  // >>>> 로그인 안한상태
    	
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
<h1>
    <span>L</span><span>o</span><span>g</span><span>i</span><span style="margin-right: 20px;">n</span><span>n</span><span>e</span><span>e</span><span>d</span><span>e</span><span>d</span><span>✍</span>
  </h1>
		
<% } else { if(name.equals("코코딩")) {  // >>>>> 관리자로 로그인 %>
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
		<div class="board_view_wrap">
			<div class="board_view">
					<c:forEach items="${list}" var="post">
				<div class="title">
					${post.postTitle}
				</div>
				<div class="info">
					<dl>
						<dt>번호</dt>
						<dd>${post.postId}</dd>
					</dl>
					<dl>
						<dt>글쓴이</dt>
						<dd>관리자</dd>
					</dl>
					<dl>
						<dt>작성일</dt>
						<dd>${post.postDate}</dd>
					</dl>
					<dl>
						<dt>조회</dt>
						<dd>${post.postCnt}</dd>
					</dl>
				</div>
				<div class="cont">
					${post.postContent}
				</div>
				 </c:forEach>
				
			</div>
		</div>
			
			<div>

	<form method="post" action="/reply/write">
	
		<p>
			<label>댓글 작성자</label> <input type="text" name="writer">
		</p>
		<p>
			<textarea rows="5" cols="50" name="content"></textarea>
		</p>
		<p>
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	
</div>
		<div class="bt_wrap">
			<button type="button" class="btn btn-success"><a href="adminpost">목록</a></button>
			<button type="button" class="btn btn-success" id="editBtn" ><a href="replyAction?parentId=<%= postId %>">수정</a></button>
			<button type="button" class="btn btn-success" id="deleteBtn" ><a href="deleteAction?postId=<%= postId %>">삭제</a></button>
		</div>
		
	</div>

	
<%} else {// else안에 if >>>> 회원이여서 로그인 한후 %> 
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
		<div class="board_view_wrap">
			<div class="board_view">
					<c:forEach items="${list}" var="post">
				<div class="title">
					${post.postTitle}
				</div>
				<div class="info">
					<dl>
						<dt>번호</dt>
						<dd>${post.postId}</dd>
					</dl>
					<dl>
						<dt>글쓴이</dt>
						<dd>관리자</dd>
					</dl>
					<dl>
						<dt>작성일</dt>
						<dd>${post.postDate}</dd>
					</dl>
					<dl>
						<dt>조회</dt>
						<dd>${post.postCnt}</dd>
					</dl>
				</div>
				<div class="cont">
					${post.postContent}
				</div>
				 </c:forEach>
				
			</div>
		</div>
	
		<div>
	<!-- Comments Form -->
	<div class="card my-4">
		<h5 class="card-header">댓글을 남겨주세요 :</h5>
		<div class="card-body">
			<form name="comment-form" action="commentAction" method="post" autocomplete="off">
				<div class="form-group">
					<input type="hidden" name="idx" th:value="*{idx}" />
					<textarea name="content" class="form-control" rows="3"></textarea>
				</div>
				<button type="submit" class="btn btn-success">등록</button>
			</form>
		</div>
	</div>
	
	<form method="post" action="commentAction" id="comment">
	
		<p>
			<label>댓글 작성자</label> <input type="text" name="writer">
		</p>
		<p>
			<textarea rows="5" cols="50" name="content"></textarea>
		</p>
		<p>
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	
</div>
		<div class="bt_wrap">
			<button type="button" class="btn btn-success" id="insertBtn" ><a href="adminpost">목록</a></button>
			<button type="button" class="btn btn-success" id="replyBtn" ><a href="BoardReplyAction?parentId=<%= postId %>">댓글쓰기</a></button>
		</div>
	</div>


    
    <%} // else%>
    
<%} // else%>



</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</html>