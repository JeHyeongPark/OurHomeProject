<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 게시판</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/mine.css" rel="stylesheet">

</head>
<body>

<div id="leftbar">
  <div class=""><a href="#">쇼핑몰</a></div>
</div>  

<div id="contents">
  <div id="header">
    <h4 class="text-center">EVENT</h4><p>
	<h6 class="text-center">이벤트</h6>
	<hr>
  </div>


<div class="main">
  <table class="table">
			<thead>
				<tr>
					<td class="text-center">번호</td>
					<td class="text-center">제목</td>
					<td class="text-right">작성시간</td>
					<td class="text-left">작성자</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="text-center">3</td>
					<td class="text-center">게시판의 글제목3</td>
					<td class="text-right">15:30</td>
					<td>관리자</td>
				</tr>
				<tr>
					<td class="text-center">2</td>
					<td class="text-center">게시판의 글제목2</td>
					<td class="text-right">15:20</td>
					<td>관리자</td>
				</tr>
				<tr>
					<td class="text-center">1</td>
					<td class="text-center">게시판의 글제목1</td>
					<td class="text-right">14:20</td>
					<td>관리자</td>
				</tr>
			</tbody>
		</table>
</div>

<!-- 아래구역 번호 -->



<div class="paging">
  <ul>
    <li><a href="#"><</a></li> 
    <li><a href="#">1</a></li> 
    <li><a href="#">2</a></li>
    <li><a href="#">></a></li>     
  </ul>
</div>

<p>



<!-- 검색구역 -->
  <form id="boardSearchForm">
  <div class="bottomsearch">
        검색어 &nbsp;
        <select id="search_key" name="search_key">
          <option value="num">번호</option>
          <option value="subject">제목</option>
          <option value="content">내용</option>      
        </select>
        <input id="search" name="search" class="inputTypeText" type="text">
        <button>검색</button>     
  </div>
 </form>
 


</div><!-- contents -->





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