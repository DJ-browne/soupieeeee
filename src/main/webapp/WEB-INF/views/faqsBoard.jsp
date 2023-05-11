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
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <title>Soupie - FAQs</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
	<link href="../resources/img/soupie.png" rel="icon">
  <link href="../resources/img/soupie.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="resources/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Arsha - v4.3.0
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

    <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="main">Soupie</a></h1>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="main">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li class="dropdown"><a class="nav-link scrollto" href="#announcements"><span>Announcements</span><i class="bi bi-chevron-down"></i></a>
           <ul>
              <li><a href="adminBoard.do">공지사항</a></li>
              <li><a href="faqsBoard">FAQs</a></li>
            </ul>
          </li>
<!--           <li><a class="nav-link   scrollto" href="#portfolio">Portfolio</a></li> -->
<!--           <li><a class="nav-link scrollto" href="#team">Team</a></li> -->
<!--           <li><a class="nav-link scrollto" href="#contact">Contact</a></li> -->
           <%
    	if (id == null) {
    	
    		%>
          <li class="dropdown"><a href="#"><span>Get online</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="login">로그인</a></li>
              <li><a href="join">회원가입</a></li>
            </ul>
          </li>
        <% } else {  if (name.equals("코코딩")) { %>
          <li class="dropdown"><a href="#"><span>Get online</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="badComment">신고글 관리페이지</a></li>
              <li><a href="logoutAction">로그아웃</a></li>
            </ul>
          </li>
          <% } else {// else안에 if %>
          <li class="dropdown"><a href="#"><span>Get online</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="myPage"><%=name%> 페이지</a></li>
              <li><a href="logoutAction">로그아웃</a></li>
            </ul>
          </li>
          <%} %>
          <%} %>
<!--           <li><a class="getstarted scrollto" href="#about">Get Started</a></li> -->
        </ul>
<!--         <i class="bi bi-list mobile-nav-toggle"></i> -->
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="main">Home</a></li>
          <li>Announcements</li>
        </ol>
        <h2>FAQs</h2>

      </div>
    </section><!-- End Breadcrumbs -->

	<div class="board_wrap">
		
		<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        Accordion Item #1
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Accordion Item #2
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        Accordion Item #3
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
</div>
	
	<div class="faqWrap">

	<div class="mtcTplTab">
		<ul class="tabItems">
			<li class="on"><a href="/help/faq/user?tab=1">회원가입∙정보</a></li>
			<li class=""><a href="/help/faq/user?tab=2">이력서 관리∙활용</a></li>
			<li class=""><a href="/help/faq/user?tab=3">입사지원</a></li>
			<li class=""><a href="/help/faq/user?tab=4">채용정보</a></li>
			<li class=""><a href="/help/faq/user?tab=5">기타</a></li>
		</ul>
	</div>

						<div class="tabSearchList">
							<ul>
										<li data-no="494">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[회원가입·로그인]</span>로그인 상태 유지란?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">편리하게 로그인 상태를 유지할 수 있는 기능입니다.
<br>‘로그인 상태 유지’를 체크한 후 로그인하면, 로그아웃하거나 브라우저의 쿠키를 삭제하기 전까지는 로그인 상태가 계속 유지됩니다.
<br>단, 1주 동안 동일 브라우저로 해당 기기(PC, 스마트폰 등)에서 잡코리아를 사용하지 않는다면 ‘로그인 상태 유지’는 해제될 수 있습니다.
<br>
<br>· 유의사항
<br>- 개인정보 보호를 위해 개인 기기(PC, 스마트폰 등)에서만 사용해 주세요. 
<br>- 이 기능을 이용함으로써 발생하는 보안 문제의 책임은 본인에게 있습니다.
<br>- 브라우저에서 제공하는 ‘개인정보보호 브라우징 (InPrivate 브라우징)’ 상태로 이용할 경우 쿠키가 저장되지 않아 ‘로그인 상태 유지’ 기능을 사용할 수 없습니다.
<br>
<br>· 해제방법
<br>- 방법1. 로그아웃하면 ‘로그인 상태 유지’가 바로 해제됩니다.
<br>- 방법2. 브라우저 캐시 및 쿠키를 삭제하면 ‘로그인 상태 유지’가 해제됩니다.</div>
										</li>
										<li data-no="101">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[보안 서비스]</span>IP 보안 사용방법이 어떻게 되나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">1. 로그인 박스에 기본적으로 IP보안 ON으로 세팅되어 있어 로그인만 하시면 IP보안이 동작됩니다.
<br>
<br>2. 만약 IP보안을 원하지 않고 이전과 동일한 서비스를 이용하고 싶으신 회원님께서는 IP보안을 OFF 한 상태에서 로그인하시면 됩니다.
<br>
<br>3. 만약 한번 IP보안을 OFF한 컴퓨터에서는 30일간 OFF상태가 지속되어 이용하실 수 있습니다.
<br>(단, 다른 컴퓨터를 이용하거나, 쿠키를 삭제할 경우에는 다시 IP보안은 ON상태로 변경됩니다.)
<br>
<br>4. IP보안이 동작중일 경우에는 회원님의 PC와 네트워크 환경에 따라 지속적으로 자동 로그아웃 될 수 있으며, 로그인이 불편하실 경우에는 로그인시 IP보안을 OFF한 후 이용하시면 됩니다. 단, IP보안 서비스는 받으실 수 없습니다.
<br></div>
										</li>
										<li data-no="100">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[보안 서비스]</span>IP 보안이란?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">사용자의 IP를 체크하여 멀리 떨어진 장소에서 부정한 방법으로 로그인 권한을 이용하는 것을 차단할 수 있는 서비스 입니다.</div>
										</li>
										<li data-no="96">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[회원가입·로그인]</span>잡코리아를 탈퇴하면 패밀리사이트도 이용할 수 없나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">잡코리아 패밀리사이트는 한 개의 아이디로 통합되어 운영되므로, 잡코리아, 알바몬, 캠퍼스몬 사이트에서 모두 탈퇴 처리가 됩니다. 
<br>
<br>이 점 유의하셔서 탈퇴하시기 전에 신중히 고려하시기 바랍니다.</div>
										</li>
										<li data-no="95">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[회원가입·로그인]</span>자동 로그아웃 현상이 자주 반복됩니다. 어떻게 하나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">개인 정보 보안을 위하여 100분 이상 사이트 이용이 없는 경우 자동 로그아웃이 설정되어 있습니다. 이력서 등록/수정 중에는 이 점 유의해 주시기 바랍니다. 
<br>
<br>또한 IE 6.0의 버그로 인하여 본의아닌 피해를 보고 계실수 있으므로 다음과 같이 조치 해 보시기 바랍니다.
<br> 
<br>1. 다른 응용프로그램을 모두 닫으신 후 한 개의 익스플로러만 열어주세요. 
<br>2. 도구 &gt;인터넷옵션&gt; 일반 에서 가운데 임시 인터넷 파일 부분의 [설정]을 클릭하셔서 저장된 페이지의 새버전확인을 [자동으로 ==&gt; 페이지 열때마다]로 변경해 주세요. 
<br>3. 도구 -&gt; 인터넷 옵션 -&gt; 보안설정에서 [기본 수준] 으로 선택하신 후 인터넷 옵션 -&gt; 개인정보&gt; 편집 -&gt; jobkorea.co.kr 입력 -&gt; 허용 버튼 클릭해 주세요.
<br>4. 임시 인터넷 파일의 [파일삭제]버튼을 클릭하셔서 캐쉬에 남은 페이지들을 모두 삭제해 주세요.
<br>
<br>또한 PC에 보안프로그램이나 방화벽이 설치되어 있는지 확인(사내 시스템관리자가 알고 있음) 해주시기 바랍니다. 
<br>
<br>회사나 학교 PC는 방화벽이 설치되어 있을경우 일부기능을 이용하지 못하거나 접속이 어려울 수 있습니다. 
<br>
<br></div>
										</li>
										<li data-no="94">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[회원가입·로그인]</span>회원탈퇴는 어떻게 하나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">잡코리아 회원탈퇴는 아래 절차에 따라 진행하실 수 있습니다.
<br>
<br>1단계. 회원 로그인 후 고객센터 <strong><font color="orange">[회원탈퇴 신청]</font></strong>을 클릭해 주세요.
<br>
<br>2단계. 탈퇴 전 유의 사항을 반드시 확인 하신 후 탈퇴 신청폼을 작성해 주세요.
<br>
<br>3단계. 탈퇴 신청이 완료되면 고객센터에서 확인 후 결과 처리를 통보해 드립니다.
<br>
<br>※ 통합아이디 활용으로 회원 탈퇴 시 잡코리아, 알바몬, 캠퍼스몬의 회원 정보도 삭제되므로 신중히 고려하시기 접수해 주시기 바랍니다.</div>
										</li>
										<li data-no="92">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[회원가입·로그인]</span>로그인이 안돼요. 어떻게 하나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">로그인이 되지 않을 경우 회원님의 PC 설정상태를 확인해 주시기 바랍니다. 
<br>
<br>
<br><strong>1. 쿠키 등 검색 기록을 삭제해 주세요. </strong>
<br>(1) 브라우저 실행 &gt; 도구 &gt; 인터넷 옵션 &gt; 일반 &gt; 검색 기록 &gt; [삭제] 클릭해 주세요.
<br>(2) 맨 위 [즐겨찾기 웹 사이트 데이터 보존]을 제외하고 모든 항목에 체크한 후 아래 [삭제] 버튼 클릭해 주세요. 
<br>(3) 검색 기록 삭제가 완료되면 인터넷 옵션 창의 [확인] 버튼을 클릭하세요. 
<br>(4) 띄워놓았던 인터넷 브라우저를 모두 닫고 새로 인터넷 브라우저를 열어 잡코리아 로그인을 해주세요. 
<br>
<br><strong> 2. 보안 수정 재설정</strong>
<br>(1) 브라우저 실행 &gt; 도구 &gt; 인터넷 옵션 &gt; 보안 &gt; 인터넷 메뉴를 클릭하고, 보안 수준을 [기본 수준] 클릭해 주세요. 
<br>(2) 신뢰할 수 있는 사이트 &gt; 사이트 버튼 클릭 후  [*.jobkorea.co.kr]을 추가하여 등록해 주세요. 
<br>(3) 인터넷 옵션 창의 [확인] 버튼을 클릭하세요. 
<br>(4) 띄워놓았던 인터넷 브라우저를 모두 닫고 새로 인터넷 브라우저를 열어 잡코리아 로그인을 해주세요. 
<br>
<br><strong> 3. 제한된 사이트에서 해지 </strong>
<br>(1) 브라우저 실행 &gt; 도구 &gt; 인터넷 옵션 &gt; 보안 &gt; 제한된 사이트 클릭하고 [사이트] 버튼을 클릭해 주세요. 
<br>(2) 제한된 사이트로 잡코리아가 등록되어 있다면, 선택하신 후 우측의 [제거] 버튼을 클릭해 주세요. 
<br>(3) 인터넷 옵션 창의 [확인] 버튼을 클릭하세요. 
<br>(4) 띄워놓았던 인터넷 브라우저를 모두 닫고 새로 인터넷 브라우저를 열어 잡코리아 로그인을 해주세요. 
<br>
<br>
<br>위 항목에 해당하지 않는 경우 잡코리아 고객센터로 문의주시면 확인 후 안내 드리도록 하겠습니다. 
<br>
<br><strong>[잡코리아 고객센터] </strong>
<br>· ☎: 1588-9350
<br> · E-mail: helpdesk@jobkorea.co.kr 전화를 주시거나 메일로 내용을 보내주시기 바랍니다. </div>
										</li>
										<li data-no="63">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[회원가입·로그인]</span>발급받은 아이핀 ID와 비밀번호를 분실했어요. 어떻게 하나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">발급받으신 본인확인기관 아이핀 팝업창에서 "아이핀 아이디/비밀번호 찾기" 메뉴를 통해 확인할 수 있습니다. 
<br>
<br>임시비밀번호는 이메일, 신용카드, 공인인증서, 휴대폰 인증 방법을 통해 재설정 하실 수 있습니다.</div>
										</li>
										<li data-no="62">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[회원가입·로그인]</span>하나의 아이핀 발급으로 다른 웹사이트에서도 아이핀 서비스 이용이 가능한가요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">발급하신 아이핀으로 잡코리아뿐만 아니라 타 사이트에서도 동일하게 인증 수단으로 사용하실 수 있습니다.</div>
										</li>
										<li data-no="61">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[회원가입·로그인]</span>아이핀을 발급받으려면 이용자가 별도의 비용을 부담해야 하나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">아이핀을 이용하시려는 회원님께서는 별도의 비용부담 없이 아이핀의 가입, 발급, 인증 등의 절차를 수행하실 수 있습니다.</div>
										</li>
										<li data-no="60">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[회원가입·로그인]</span>아이핀(I-Pin)이란 무엇인가요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">아이핀(i-PIN)이란?
<br> 
<br>주민등록번호를 대신하여 본인임을 확인할 수 있는 사이버 신원확인 번호입니다.
<br>
<br>아이핀을 이용하여 잡코리아에 회원가입을 하시려면 아이핀을 발급하는 기관을 통해 아이핀을 발급하신 후 회원가입을 할 수 있습니다. 
<br>
<br>아이핀은 아래 아이핀 발급기관을 통해 자유롭게 발급받을 수 있습니다.
<br>
<br>1. 서울신용평가정보 siren24.com / 1577-1006
<br>2. 나이스신용평가정보 idcheck.co.kr / 1588-2486
<br>3. 코리아크레딧뷰로 ok-name.co.kr / 02)708-1000
<br>4. 공공아이핀센터 gpin.go.kr / 02)818-3050</div>
										</li>
										<li data-no="57">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[회원가입·로그인]</span>개명이 되었는데 이름을 어떻게 변경하나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">성함을 개명하시어 회원정보에서 이름을 변경하고 싶으신 경우 회원 로그인 후 인증절차를 거친 후에 개명 절차를 진행하시면 됩니다. 
<br>
<br><strong>1. 휴대폰 명의로 변경하기</strong>
<br>
<br>1단계. 회원 로그인 후 [회원정보 관리] 클릭해 주세요.
<br>2단계. 회원정보 수정 페이지에서<font color="orange"><strong> [개명으로 이름이 변경된 경우] </strong></font>클릭해 주세요.
<br>3단계. 휴대폰 인증을 선택하고, 인증이 성공되면 이름 변경 절차가 완료됩니다.
<br>
<br><strong>2. 아이핀으로 변경하기</strong>
<br>
<br>1단계. 회원 로그인 후 [회원정보 관리] 클릭해 주세요.
<br>2단계. 회원정보 수정 페이지에서<font color="orange"><strong> [개명으로 이름이 변경된 경우] </strong></font>클릭해 주세요.
<br>3단계. 아이핀 인증을 선택하고, 인증이 성공되면 이름 변경 절차가 완료됩니다.
<br>
<br><strong>3. 고객센터로 문의하기</strong>
<br>위의 두 가지 방법으로 변경이 힘든 경우 고객센터로 문의해 주시기 바랍니다.
<br>
<br><strong>[잡코리아 고객센터] </strong>
<br>· ☎: 1588-9350
<br>· E-mail: helpdesk@jobkorea.co.kr </div>
										</li>
										<li data-no="53">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[회원가입·로그인]</span>회원정보 중에 생년월일과 성별이 잘못 기입되었습니다. 어떻게 하나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">등록된 생년월일과 성별을 수정하실 수 없을 경우, 고객센터로 문의 주시면 간단한 본인 확인 후 안내해 드리도록 하겠습니다.
<br>
<br><strong>[잡코리아 고객센터] </strong>
<br>· ☎: 1588-9350
<br>· E-mail: helpdesk@jobkorea.co.kr </div>
										</li>
										<li data-no="44">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[회원가입·로그인]</span>페이스북 로그인으로 잡코리아를 이용하고 있는데 탈퇴하면 어떻게 되나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">잡코리아 탈퇴 시, 해당 페이스북 아이디로 잡코리아를 이용하셨던 이력서, 지원내역 등 모든 정보가 삭제 됩니다. 
<br>
<br>같은 페이스북 아이디로 다시 잡코리아를 이용하실 수 있지만 이전에 저장하셨던 정보들을 더이상 확인하실 수 없습니다.
<br></div>
										</li>
										<li data-no="43">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[회원가입·로그인]</span>페이스북 로그인으로 잡코리아를 이용하고 있는데 페이스북을 탈퇴하면 어떻게 되나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">페이스북 로그인은 회원님의 아이디 정보가 정확한지 페이스북 사이트에 확인 한 후, 해당 아이디로 잡코리아 서비스를 이용하실 수 있도록 되어 있습니다. 
<br>
<br>그렇기 때문에 페이스북을 탈퇴하시면 더이상 잡코리아를 이용하실 수 없습니다. 
<br>또한, 페이스북 로그인으로 이용하시는 모든 서비스 이용에 제한을 받으실 수 있습니다.
<br></div>
										</li>
										<li data-no="42">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[보안 서비스]</span>보안 프로그램 수동 설치는 어떻게 하나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">[보안 프로그램 수동 설치하기]를 클릭하여 보안 프로그램을 다운로드 한 후 ‘BeSafeWebManualSetup.exe’’을 실행하면 보안 프로그램이 자동으로 설치됩니다.
<br>
<br><center><a href="/WebSecuritySetup/BeSafeWebManualSetup.exe"><b>[보안 프로그램 수동 설치하기]</b></a></center>
<br></div>
										</li>
										<li data-no="41">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[보안 서비스]</span>수동 설치를 통하여 보안 프로그램을 설치했는데, 삭제는 어떻게 하나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">수동 설치를 통하여 보안 프로그램을 설치한 경우 제어판의 ‘프로그램 추가/제거’에 BeSafeWebManualSetup 항목이 추가되어 있는 것을 확인할 수 있습니다. 해당 프로그램을 삭제하시려면, 제거 버튼을 클릭하여 삭제하시면 됩니다.
<br>또한 수동 제거툴을 이용하여 보안 프로그램을 삭제하셔도 됩니다.
<br>
<br><center><a href="/WebSecuritySetup/Manualuninstaller.exe"><b>[보안 프로그램 수동제거툴 다운로드]</b></a></center>
<br></div>
										</li>
										<li data-no="40">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[보안 서비스]</span>웹페이지를 통해서 자동으로 보안 프로그램이 설치되었는데, 삭제는 어떻게 하나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">기본적으로 보안 프로그램은 해당 보안이 적용되어 있는 페이지에 접속하지 않는 이상 시스템에 아무런 영향을 미치지 않으므로 삭제하지 않으셔도 됩니다. 굳이 삭제를 해야 하는 경우라면 ‘수동 제거툴’을 이용하여 삭제하시면 됩니다. ‘수동 제거툴’을 이용하여 보안 프로그램을 제거할 경우 열려져 있는 모든 보안페이지가 자동으로 닫히므로, 작업을 완료한 후에 제거를 하셔야 합니다.
<br>
<br><center><a href="/WebSecuritySetup/Manualuninstaller.exe"><b>[보안 프로그램 수동제거툴 다운로드]</b></a></center>
<br></div>
										</li>
										<li data-no="39">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[보안 서비스]</span>보안 프로그램을 설치하지 않고, 잡코리아 사이트를 이용할 수는 없나요?</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">잡코리아의 대부분은 보안 프로그램을 설치하지 않고 이용하실 수 있으나 보안이 반드시 필요한 일부 페이지는 반드시 보안 프로그램 (WebProtector) 을 설치하셔야 정상적으로 이용하실 수 있습니다. 
<br></div>
										</li>
										<li data-no="38">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem"><span class="tabSearchListTitleWrap"><span class="cl3399ff">[보안 서비스]</span>보안프로그램이 정상적으로 설치된 것 같은데, 특정 페이지에 접속을 하면 ‘보안 프로그램을 설치할 수 없습니다’라고 나옵니다.</span></button><!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData">해당 현상이 발생되는 경우 회원님의 PC상태가 아래와 같은 경우에 해당되는 지 확인해 보시기 바랍니다. 
<br>
<br>1. 보안프로그램 설치는 Internet Explorer 를 권장하며, 구글/크롬과 같은 다른 브라우저에서도 지원은 가능하나 일부페이지에서는 적용이 되지 않을 수 있습니다. 
<br>
<br>2. 웹페이지 저장 툴 등을 이용해서 페이지를 저장하려고 한 경우
<br>→ 보안 웹페이지는 브라우저 내부에서만 동작을 합니다. 웹페이지를 통째로 저장하는 툴과 같은 프로그램으로 열려고 할 때는 오류 메시지가 노출됩니다.
<br>
<br>3. 해당 사항이 없는데도 불구하고 오류 메시지가 노출되는 경우 고객센터로 문의하여 주시기 바랍니다. 
<br>
<br><strong>[잡코리아 고객센터] </strong>
<br>· ☎: 1588-9350
<br>· E-mail: helpdesk@jobkorea.co.kr </div>
										</li>
							</ul>
						</div>
						<input type="hidden" id="SelectedFAQNo" name="SelectedFAQNo" value="0">
							<div class="listBtmArea">
								<div class="tplPagination">
									            <div class="tplPagination">


                <ul>

                                <li><span class="now">1</span></li>
                                <li><a href="/help/faq/user?tab=1&amp;Page=2" data-page="2">2</a></li>

                </ul>

            </div>

								</div>
							</div>
					<div class="questBtnArea">
						<p class="txtQuest">원하시는 답변을 찾지 못하셨다면, 고객센터에 문의해주세요.</p>
						<a class="btnQuest" href="#" target="_self">문의하기</a>
					</div>
				</div>
	
	</div>	
		
 	   

    
	<form action="updateCnt" method="post" id="frm">   
	 
		<input type="hidden" name="postId" id="hiddenPostId" value="">
		<input type="hidden" name="postTitle" id="hiddenPostTitle" value="">
		<input type="hidden" name="postDate" id="hiddenPostDate" value="">
		<input type="hidden" name="postCnt" id="hiddenPostICnt" value="">

	</form>
		
		
		
		
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
<!--   <footer id="footer"> -->

<!--     <div class="footer-top"> -->
<!--       <div class="container"> -->
<!--         <div class="row"> -->

<!--           <div class="col-lg-3 col-md-6 footer-contact"> -->
<!--             <h3>Arsha</h3> -->
<!--             <p> -->
<!--               A108 Adam Street <br> -->
<!--               New York, NY 535022<br> -->
<!--               United States <br><br> -->
<!--               <strong>Phone:</strong> +1 5589 55488 55<br> -->
<!--               <strong>Email:</strong> info@example.com<br> -->
<!--             </p> -->
<!--           </div> -->

<!--           <div class="col-lg-3 col-md-6 footer-links"> -->
<!--             <h4>Useful Links</h4> -->
<!--             <ul> -->
<!--               <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li> -->
<!--               <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li> -->
<!--               <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li> -->
<!--               <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li> -->
<!--               <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li> -->
<!--             </ul> -->
<!--           </div> -->

<!--           <div class="col-lg-3 col-md-6 footer-links"> -->
<!--             <h4>Our Services</h4> -->
<!--             <ul> -->
<!--               <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li> -->
<!--               <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li> -->
<!--               <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li> -->
<!--               <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li> -->
<!--               <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li> -->
<!--             </ul> -->
<!--           </div> -->

<!--           <div class="col-lg-3 col-md-6 footer-links"> -->
<!--             <h4>Our Social Networks</h4> -->
<!--             <p>Cras fermentum odio eu feugiat lide par naso tierra videa magna derita valies</p> -->
<!--             <div class="social-links mt-3"> -->
<!--               <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> -->
<!--               <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a> -->
<!--               <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a> -->
<!--               <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a> -->
<!--               <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a> -->
<!--             </div> -->
<!--           </div> -->

<!--         </div> -->
<!--       </div> -->
<!--     </div> -->

<!--     <div class="container footer-bottom clearfix"> -->
<!--       <div class="copyright"> -->
<!--         &copy; Copyright <strong><span>Arsha</span></strong>. All Rights Reserved -->
<!--       </div> -->
<!--       <div class="credits"> -->
<!--         All the links in the footer should remain intact. -->
<!--         You can delete the links only if you purchased the pro version. -->
<!--         Licensing information: https://bootstrapmade.com/license/ -->
<!--         Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
<!--         Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> -->
<!--       </div> -->

<!--     </div> -->
<!--   </footer>End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="resources/assets/vendor/aos/aos.js"></script>
  <script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="resources/assets/vendor/php-email-form/validate.js"></script>
  <script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="resources/assets/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/assets/js/main.js"></script>

</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">

function insertBoard() {
	 window.location.href = 'adminBoardInsert'
}

// function comment() {
// 	document.getElementById('frm').submit();
// }

$(function () {
 
		$('#tableH').on('click','.postView', function(){
		
			console.log($(this).parent().parent().find('td')[0].innerHTML );
			console.log($(this).parent().parent().find('td')[1].innerHTML );
			console.log($(this).parent().parent().find('td')[3].innerHTML );
			console.log($(this).parent().parent().find('td')[4].innerHTML );
			
			$('#hiddenPostId').val($(this).parent().parent().find('td')[0].innerHTML)
			$('#hiddenPostTitle').val($(this).parent().parent().find('td')[1].innerHTML)
			$('#hiddenPostDate').val($(this).parent().parent().find('td')[3].innerHTML)
			$('#hiddenPostICnt').val($(this).parent().parent().find('td')[4].innerHTML)
		
			$('#frm').submit();
	
		})
})


</script>
</html>