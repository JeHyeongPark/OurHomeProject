<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>상품문의게시판</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/ssj.css" rel="stylesheet"> 
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
				<h2>상품문의</h2>
			</div>
			<hr>
			<h5>문의</h5>
			<a>구매하시려는 상품에 대해 궁금한 점이 있으신 경우 문의해주세요.</a>
		</div>
		<hr>
		<!-- 게시글 영역 -->
		<div class="row">
			<div>
				<div>
					<button button class="btn btn-primary btn-sm" onclick="location.href='페이지경로' " >상품Q&A작성하기</button>
					<!-- onclick="location.href='' " => 해당경로페이지로 이동 | onclick = "window.open('새창으로 띄울 경로') => 새창으로 열기 | 
					onclick = "window.open('https://naver.com', 'window_name', 'width=430, height=500, location=no, status=no, scrollbars=yes');" => 팝업으로 열기-->
				</div>
			<p>
			<hr>
				<table class="table  table-hover ">
					<thead>
					<tr class="text-center something">
						<td class="col-md-2">답변상태</td>
						<td class="col-md-6">제목</td>
						<td class="col-md-3">작성자</td>
						<td class="col-md-1">작성일</td>
					</tr>
					</thead>
					<tbody>
					<tr class="text-center">
						<td>답변대기</td>
						<td>사진과 동일한가요?</td>
						<td>작성자</td>
						<td>2023.02.10</td>
					</tr>
					<tr class="text-center">
						<td>답변완료</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
					</tr>
					<tr class="text-center">
						<td>답변완료</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="page" >
					<a href="#" aria-hidden="true" role="button">이전</a>
					<a href="#" aria-current="true" role="menuitem">1</a>
					<a href="#" aria-hidden="true" role="button">다음</a>
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