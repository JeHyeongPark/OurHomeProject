<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/ssj.css" rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<script>
	$('.starRev span').click(function() {
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');
		return false;
	});
</script>
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
				<h2>상품리뷰</h2>
			</div>
			<hr>
			<h5>상품리뷰</h5>
			<div class="starRev">
				<span class="starR on"></span> <span class="starR on"></span> 
				<span class="starR on"></span> <span class="starR "></span> 
				<span class="starR "></span>
			</div>
			<a>상품을 구매하신 분들이 작성하신 리뷰입니다. 리뷰 작성시 아래 금액만큼 포인트가 적립됩니다.</a><br>
			 <a>텍스트리뷰:150원 | 포트/동영상 리뷰:350원</a><br>
		</div>
		<hr>
			<h5>포토&동영상 9건</h5>
			<div class="text-center ">
				<div>
					<ul class="itemReview_ul">
						<li class="itemReview_li"><a href="#" class="itemReview_imgline"><img class="itemReview_img" src="../img/cup1.avif"></a></li>
						<li class="itemReview_li"><a href="#" class="itemReview_imgline"><img class="itemReview_img" src="../img/cup1.avif"></a></li>
						<li class="itemReview_li"><a href="#" class="itemReview_imgline"><img class="itemReview_img" src="../img/cup1.avif"></a></li>
						<li class="itemReview_li"><a href="#" class="itemReview_imgline"><img class="itemReview_img" src="../img/cup1.avif"></a></li>
						<li class="itemReview_li"><a href="#" class="itemReview_imgline"><img class="itemReview_img" src="../img/cup1.avif"></a></li>
						<li class="itemReview_li"><a href="#" class="itemReview_imgline"><img class="itemReview_img" src="../img/cup1.avif"></a></li>
						<li class="itemReview_li"><a href="#" class="itemReview_imgline"><img class="itemReview_img" src="../img/cup1.avif"></a></li>
						<li class="itemReview_li"><a href="#" class="itemReview_imgline"><img class="itemReview_img" src="../img/cup1.avif"></a></li>
						<!-- onclick="location.href='' " => 해당경로페이지로 이동 | onclick = "window.open('새창으로 띄울 경로') => 새창으로 열기 | 
					onclick = "window.open('https://naver.com', 'window_name', 'width=430, height=500, location=no, status=no, scrollbars=yes');" => 팝업으로 열기-->
						<li class="itemReview_li"><button type="button" class="btn btn-default btn-block theView"
						onclick="window.open('./poto_review.jsp','window_name', 'width=430, height=400,top=300,left=700, location=no, status=no, scrollbars=yes');">
						더보기</button></li>
						<!--더보기 버튼 클릭시 팝업창에 전체 포토/동영상 리뷰 글 보기
						top,left로 팝업위치 조절  -->
					</ul>
				</div>
			</div>
		
		<p>
		<p>
		<hr>
		<!-- 게시글 영역 -->
		<button button class="btn btn-primary btn-sm" onclick="location.href='페이지경로' ">글쓰기</button><p>
		<!-- onclick="location.href='' " => 해당경로페이지로 이동 | onclick = "window.open('새창으로 띄울 경로') => 새창으로 열기 | 
					onclick = "window.open('https://naver.com', 'window_name', 'width=430, height=500, location=no, status=no, scrollbars=yes');" => 팝업으로 열기-->
			<div>
				<table class="table  table-hover ">
					<tr class="text-center something">
						<td class="col-md-2">글번호</td>
						<td class="col-md-6">내용</td>
						<td class="col-md-3">작성자</td>
						<td class="col-md-1">별점</td>
					</tr>
					<tr class="text-center">
						<td>1</td>
						<td>내용</td>
						<td>작성자</td>
						<td>별점</td>
					</tr>
					<tr class="text-center">
						<td>2</td>
						<td>내용</td>
						<td>작성자</td>
						<td>별점</td>
					</tr>
					<tr class="text-center">
						<td>3</td>
						<td>내용</td>
						<td>작성자</td>
						<td>별점</td>
					</tr>
					<tr class="text-center">
						<td>4</td>
						<td>내용</td>
						<td>작성자</td>
						<td>별점</td>
					</tr>
					<tr class="text-center">
						<td>5</td>
						<td>내용</td>
						<td>작성자</td>
						<td>별점</td>
					</tr>
					<tr class="text-center">
						<td>6</td>
						<td>내용</td>
						<td>작성자</td>
						<td>별점</td>
					</tr>
				</table>
			</div>

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