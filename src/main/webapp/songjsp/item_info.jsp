<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>카테고리상품페이지</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/ssj.css" rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<% int Book_count=0; %>
</head>
<body>
<div id="leftbar">
		사이드바
		<!-- 사이드바 -->
		<ul class="nav">
			<li>회원가입</li>
			<li>회원로그인</li>
			<li>게시판</li>
			<li>설문조사</li>
		</ul>
	</div>

	<div id="contents">
		<!-- 메인 -->
		<div>
			<div class="post_header">
				<h2>러그 | 잡화</h2>
					<div class="color">
						<a href="#" class="btn btn-default btn-xs" role="button">무료배송</a>
						<a href="#" class="btn btn-default btn-xs" role="button">배송유형</a>
						<a href="#" class="btn btn-default btn-xs" role="button">가격대</a>
					</div>
				</div>
			</div>
			<hr>
			<!-- 게시글 영역 -->
			<!-- <div class="row"> -->
				<div>
					<div>
						<a href="#">정확도순</a> | <a href="#">낮은가격순</a> | <a href="#">평점높은순</a>
					</div>
					<p>
					<div>
					 <% if(Book_count ==0) {%> 
						<ul class="itmeinfo_ul">
							<li class="iteminfo_imgline"><a class="iteminfo_info" href="#">
									<div>
										<img class="itmeinfo_img" alt="" src="../img/fork.avif">
									</div>
									<div>
										<strong>19,900 원</strong> <!-- 상품제목글 -->
									</div>
									<div>
										<strong>고아 골든 디저트포크</strong> <!-- 상품제목글 -->
										<p>블랙 / 핑크 외 8가지 중 선택 1 <font color="red"><%="일시품절"%></font> </p>
         								
									</div> <!-- 상품설명글 -->
							</a></li>
							<li class="iteminfo_imgline"><a class="iteminfo_info" href="#">
									<div>
										<img class="itmeinfo_img" alt="" src="../img/cup1.avif">
									</div>
									<div>
										<strong>가격</strong> <!-- 상품제목글 -->
									</div>
									<p>"귀여운 고양이"</p> <!-- 상품설명글 -->
							</a></li>
							<li class="iteminfo_imgline"><a class="iteminfo_info" href="#">
									<div>
										<img class="itmeinfo_img" alt="" src="../img/fryingpan.avif">
									</div>
									<div>
										<strong>가격</strong> <!-- 상품제목글 -->
									</div>
									<p>"귀여운 고양이"</p> <!-- 상품설명글 -->
							</a></li>
							<li class="iteminfo_imgline"><a class="iteminfo_info" href="#">
									<div>
										<img class="itmeinfo_img" alt="" src="../img/cookware.webp">
									</div>
									<div>
										<strong>가격</strong> <!-- 상품제목글 -->
									</div>
									<p>"귀여운 고양이"</p> <!-- 상품설명글 -->
							</a></li>
							<li class="iteminfo_imgline"><a class="iteminfo_info" href="#">
									<div>
										<img class="itmeinfo_img" alt="" src="../img/knife.jpeg">
									</div>
									<div>
										<strong>가격</strong> <!-- 상품제목글 -->
									</div>
									<p>"귀여운 고양이"</p> <!-- 상품설명글 -->
							</a></li>
							<li class="iteminfo_imgline"><a class="iteminfo_info" href="#">
									<div>
										<img class="itmeinfo_img" alt="" src="../img/pot.jpeg">
									</div>
									<div>
										<strong>가격</strong> <!-- 상품제목글 -->
									</div>
									<p>"귀여운 고양이"</p> <!-- 상품설명글 -->
							</a></li>
							<li class="iteminfo_imgline"><a class="iteminfo_info" href="#">
									<div>
										<img class="itmeinfo_img" alt="" src="../img/spoon.webp">
									</div>
									<div>
										<strong>가격</strong> <!-- 상품제목글 -->
									</div>
									<p>"귀여운 고양이"</p> <!-- 상품설명글 -->
							</a></li>
							<li class="iteminfo_imgline"><a class="iteminfo_info" href="#">
									<div>
										<img class="itmeinfo_img" alt="" src="../img/steamer.webp">
									</div>
									<div>
										<strong>가격</strong> <!-- 상품제목글 -->
									</div>
									<p>"귀여운 고양이"</p> <!-- 상품설명글 -->
							</a></li>
						</ul>
					</div>
					<%} %>
				</div>
				<div class="page" >
					<a href="#" aria-hidden="true" role="button">이전</a>
					<a href="#" aria-current="true" role="menuitem">1</a>
					<a href="#" aria-hidden="true" role="button">다음</a>
				</div>
			<!-- </div> -->

			<footer class="container-fluid navbar-fixed-bottom post_footer">
				<div>footer구역</div>
			</footer>


		</div>
		<!-- 전체컨테이너 -->

		<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
		<script src="../js/bootstrap.min.js"></script>
</body>
</html>