<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 보기</title>

 <link href="../css/bootstrap.min.css" rel="stylesheet">
 <link href="../css/mine.css" rel="stylesheet">

</head>
<body>

<div id="leftbar">
  <div class=""><a href="#">쇼핑몰</a></div>
</div>  

<div id="contents">

  <div id="header">
    <h4 class="text-center">FAQ</h4><p>     <!-- 게시판마다 이름 바껴야됨  -->
	<h6 class="text-center">자주묻는질문</h6>
	<hr>
  </div>
  

<div class="buttonarea">
 <button><a href="#">삭제</a></button>
 <button><a href="#">수정</a></button>
 <button><a href="#">글 목록</a></button>
</div>

<div>
  <table class="posttable">
   <tr>
    <th>제목</th>
    <td  colspan="2">게시글의 제목</td>
   </tr>
   <tr>
    <th>작성자</th>
    <td>작성자의 이름</td>
   </tr>
   <tr>
     <th colspan="2">
		게시글
     </th>
   </tr>
  </table>
</div>



<p>

<div class="movetablearea">
<table class="movetable">
  <tr>
      <th>이전</th>
      <td>이전 글 제목</td>
    </tr>
    <tr>
      <th>다음</th>
      <td>다음 글 제목</td>
    </tr>
</table>
</div>




<!-- footer구역 -->
	<footer class="container-fluid navbar-fixed-bottom">
		<div class="footer">footer구역</div>
	</footer>
	

<!-- -------------------------------------------------------------------------------------------------------------------------------------------------------- -->




	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="../js/bootstrap.min.js"></script>
 </div>	
</body>
</html>