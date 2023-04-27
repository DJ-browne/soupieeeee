<%@page import="com.human.soup.*"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.human.web.*" %>
<%@page import="java.util.List" %>
    <!-- 배열과 같이 사용하는 반복문 활용 : JSTL -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<style type="text/css">

/* 여기 부터 */
* {
	margin: 0;
	padding: 0;
}

html {
	font-size: 10px;
}

ul, li {
	list-style: none;
}

a {
	text-decoration: none;
	color: inherit;
}

.board_wrap {
	width: 1000px;
	margin: 100px auto;
}

.board_title {
	margin-bottom: 30px;
}

.board_title strong {
	font-size: 3rem;
}

.board_title p {
	margin-top: 5px;
	font-size: 1.4rem;
}

.bt_wrap {
	margin-top: 30px;
}

.bt_wrap a {
	display: inline-block;
	min-width: 80px;
	margin-left: 10px;
	padding: 10px;
	border: 1px solid #000;
	border-radius: 2px;
	font-size: 1.4rem;
}

.bt_wrap a:first-child {
	margin-left: 0;
}

.bt_wrap a.on {
	background: #000;
	color: #fff;
}

.board_list {
	width: 100%;
	border-top: 2px solid #000;
}

.board_list>div {
	border-bottom: 1px solid #ddd;
	font-size: 0;
}

.board_list>div.top {
	border-bottom: 1px solid #999;
}

.board_list>div:last-child {
	border-bottom: 1px solid #000;
}

.board_list>div>div {
	display: inline-block;
	text-align: center;
	font-size: 1.4rem;
}

.board_list>div.top>div {
	font-weight: 600;
}

.board_list .num {
	witdh: 10%;
}

.board_list .title {
	witdh: 10%;
	text-align: left;
}

.board_list .top .title {
	text-align: center;
}

.board_list .writer {
	witdh: 10%;
}

.board_list .date {
	witdh: 10%;
}

.board_list .count {
	witdh: 10%;
}

.board_page {
	margin-top: 30px;
	text-align: center;
	font-size: 0;
}

.board_page a {
	display: inline-block;
	width: 32px;
	height: 32px;
	box-sizing: border-box;
	vertical-align: middle;
	border: 1px solid #ddd;
	border-left: 0;
	line-height: 100%;
}

.board_page a.bt {
	padding-top: 10px;
	font-size: 1.2rem;
	letter-spacing: -1px;
}

.board_page a.num {
	padding-top: 9px;
	font-size: 1.4rem;
}

.board_page a.num.on {
	border-color: #000;
	background: #000;
	color: #fff;
}

.board_page a:first-child {
	border-left: 1px solid #ddd;
}
</style>
</head>
<body>

	<div class="board_wrap">
		<div class="board_title">
			<strong>공지사항</strong>
			<p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
		</div>
<!-- 			<div class="board_list_wrap"> -->
				<div class="table-responsive" id="tableH" style="">

					<table class="table table-striped table-sm text-center"
						id="tableid">
						<thead>
							<tr id="tableid">
								<th scope="col">글번호</th>
								<th scope="col">제목</th>
								<th scope="col">글쓴이</th>
								<th scope="col">작성일</th>
								<th scope="col">조회</th>
							</tr>
						</thead>
					</table>
				</div>
				<div class="table-responsive" id="tableH" style="">

					<table class="table table-striped table-sm text-center"
						id="tableid">
						<tbody>
							<tr id="tableid">
								<td scope="col">1</td>
								<td scope="col">공지사항</td>
								<td scope="col">ADMIN</td>
								<td scope="col">2023.04.26</td>
								<td scope="col">0</td>
							</tr>
						</tbody>
					</table>
				</div>
			
				
<!-- 		</div> -->
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
			<a href="insertBoard" class="on">글쓰기</a>
		</div>
	</div>





</body>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
	integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
	integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</html>