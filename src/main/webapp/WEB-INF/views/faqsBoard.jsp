<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.io.PrintWriter"%>
    <%@page import="com.human.soup.*"%>
<%--     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
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

      <h1 class="logo me-auto"><a href="main.do">Soupie</a></h1>

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

	<div class=board_accordion>
		
		<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
        [서비스오류] Soupie 서비스 이용 중 오류가 발생해요.
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <strong>인프런은 구글 크롬 브라우저에 최적화되어 있어요.</strong><br> 
        	강의 시청, 결제 등 서비스 이용 중 오류가 발생할 경우 크롬 브라우저에서 다시 진행해 주세요.<br><br>
			※ 혹시 크롬 브라우저에서도 오류가 발생한다면 아래 안내사항을 체크해보세요.<br><br>
			<strong>🕐 크롬 시크릿 모드에서 재실행합니다.</strong><br> 
			시크릿 모드에서 정상 작동한다면, 확장 프로그램의 문제일 가능성이 높습니다.<br>		
			※  시크릿 모드 경로 : 크롬 브라우저 오른쪽 상단 더보기 ( : )클릭 - 새 시크릿 창<br><br>
			<strong>🕑 강력 새로고침 후 재실행합니다.</strong><br>
			새로운 기능 배포 및 버전 업데이트로 인한 일시적 오류일 수 있습니다.<br>
			※ 강력 새로고침 단축키 : [윈도우 Ctrl + Shift + R] / [맥 Cmd + Shift + R]
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

// function insertBoard() {
// 	 window.location.href = 'adminBoardInsert'
// }

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