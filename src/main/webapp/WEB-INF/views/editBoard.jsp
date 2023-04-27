<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style type="text/css">

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

.board_insert {
	border-top: 2px solid #000;
}

.board_insert .title,
.board_insert .info {
	padding: 15px;
}

.board_insert .info {
	border-top: 1px dashed #ddd;
	border-bottom: 1px solid #000;
	font-size: 0;
}

.board_insert .title dl {
	font-size: 0;
}

.board_insert .info dl {
	display: inline-block;
	width: 50%;
	vertical-align: middle; 
}

.board_insert .title dt,
.board_insert .title dd,
.board_insert .info dt,
.board_insert .info dd {
	display: inline-block;
	vertical-align: middle;
	font-size: 1.4rem;
}

.board_insert .title dt,
.board_insert .info dt {
	width: 100%;
}

.board_insert .title dd {
	width: calc(100% - 100px);
}

.board_insert .title input[type="text"],
.board_insert .info input[type="text"],
.board_insert .info input[type="password"] {
	padding: 10px;
	box-sizing: border-box;
}

.board_insert .title input[type="text"] {
	width: 80%;
}
	
.board_insert .cont {
	border-bottom: 1px solid #000;
	
}

.board_insert .cont textarea {
	display: block;
	width: 100%;
	height: 300px;
	padding: 15px;
	box-sizing: border-box;
	border: 0;
	resize: vertical;
	
}

	
</style>
</head>
<body>

	<div class="board_wrap">
		<div class="board_title">
			<strong>공지사항</strong>
			<p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
		</div>
		<div class="board_insert_wrap">
			<div class="board_insert">
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dd><input type="text" value="원래 글제목 아니면 제목도 수정하게"></dd>
					</dl>
				</div>				
				<div class="info">
					<dl>
						<dt>글쓴이</dt>
						<dd><input type="text" value="Admin" readonly></dd>
					</dl>
					<dl>
						<dt>비밀번호</dt>
						<dd><input type="password" placeholder="비밀번호 입력"></dd>
					</dl>
					
				</div>				
				<div class="cont">
					<textarea placeholder="내용 입력">
					고칠 글내용
					</textarea>
				</div>				
			</div>
		</div>
	
		<div class="by_wrap">
			<a href="#" class="on">수정</a> 
			<a href="adminpost" class="">취소</a>
		</div>
	</div>





</body>
</html>