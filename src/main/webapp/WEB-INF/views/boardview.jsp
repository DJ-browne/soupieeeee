<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style type="text/css">


@media (max-width: 100px) {
	.board_wrap {
		width: 100%;
		min-height: 320px;
		padding: 0 30px;
		box-sizing: border-box;
	}
	
	.board_list .num,
	.board_list .writer,
	.board_list .count {
		display: none;
	}
	
	.board_list .date {
		width: 40%;
	}
	
	.board_list .title {
		text-indent: 10px;
	}
	
	.board_list .top .title {
		text-indent: 0;
	}
	
	.board_page a {
		width: 26px;
		height: 26px;
	}
	
	.board_page a.bt {
		padding-top: 7px; 
	}
	
	.board_page a.num {
		padding-top: 6px; 
	}
	
	.board_view .info dl {
		width: 50%;
		padding: 0;
	}
	
	.board_view .info dl:nth-child(-n+2) {
		margin-bottom: 5px;
	}
	
	.board_view .info dl::before {
		display: none;
	}
	
	.board_view .info dl dt,
	.board_view .info dl dd {
		font-size: 1.2rem;
	}
	
}



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

.board_list > div {
	border-bottom: 1px solid #ddd;
	font-size: 0;
}

.board_list > div.top {
	border-bottom: 1px solid #999;
}

.board_list > div:last-child {
	border-bottom: 1px solid #000;
}

.board_list > div > div {
	display: inline-block;
	text-align: center;
	font-size: 1.4rem;
}

.board_list > div.top > div {
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

.board_page{
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

.board_view {
	width: 100%;
	border-top: 2px solid #000;
}	

.board_view .title {
	padding: 20px 15px;
	border-bottom: 1px dashed #ddd;
	font-size: 2rem;
}

.board_view .info {
	padding: 15px;
	border-bottom: 1px solid #ddd;
 	font-size: 0;
}

.board_view .info dl {
	position: relative;
	display: inline-block;
	padding: 0 20px;
}

.board_view .info dl:first-child {
	padding-left: 0;
}

.board_view .info dl::before {
	content: "";
	position: absolute;
	top: 1px;
	left: 0;
	display: block;
	width: 1px;
	height: 13px;
	background: #ddd;
}

.board_view .info dl:first-child::before {
	display: none;
}

.board_view .info dl dt,
.board_view .info dl dd {
	display: inline-block;
	font-size: 1.4rem;
}

.board_view .info dl dt {
}

.board_view .info dl dd {
	margin-left: 10px;
	color: #777;
}

.board_view .cont {
	padding: 15px;
	border-bottom: 1px solid #000;
	line-height: 160%;
	font-size: 1.4rem;
}	
</style>
</head>
<body>

	<div class="board_wrap">
		<div class="board_title">
			<strong>공지사항</strong>
			<p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
		</div>
		<div class="board_view_wrap">
			<div class="board_view">
				<div class="title">
					글 제목이 들어간다
				</div>
				<div class="info">
					<dl>
						<dt>번호</dt>
						<dd>1</dd>
					</dl>
					<dl>
						<dt>글쓴이</dt>
						<dd>Admin</dd>
					</dl>
					<dl>
						<dt>작성일</dt>
						<dd>2023.00.00</dd>
					</dl>
					<dl>
						<dt>조회</dt>
						<dd>11</dd>
					</dl>
				</div>
				<div class="cont">
					글내용<br>
					글내용<br>
					글내용<br>
					글내용<br>
					글내용<br>
					글내용<br>
				</div>
				
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
		<div class="by_wrap">
			<a href="adminpost" class="on">목록</a> 
			<a href="editBoard" class="">수정</a>
		</div>
	</div>





</body>
</html>