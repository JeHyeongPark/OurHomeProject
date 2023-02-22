<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>주문취소내역</title>


<!-- 부트스트랩 -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<style>
@font-face {
     font-family: 'S-CoreDream-3Light';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
body{
    font-family:'S-CoreDream-3Light';
}
#leftbar {
	width: 310px;
	position: fixed;
	left: 0;
	top: 0;
	padding: 30px;
	box-sizing: border-box;
	z-index: 98;
	letter-spacing: 0.5px;
	background-color:#f4efe1;
	height: 100%;
}
.footer {
    bottom: 0;   
   background-color: #f4efe1;
   text-align:center;
   width:100%;
   padding-left:90px;
   margin: 0 auto; 
   position: absolute;
}
#contents {
	margin-left: 750px;
}

.ec-base-box {
	width: 1080px;
	height: 60px;
	font-size: 20px;
	margin-left:460px;
}

.title {
	margin-left: 460px;
}

.typeList {
	margin-left: 450px;
	padding: 10px;
	text-align: center;
}
</style>
<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div id="leftbar">
		<ul class="nav">
			<li>회원가입</li>
			<li>회원로그인</li>
			<li>게시판</li>
			<li>설문조사</li>
		</ul>
	</div>
		<div class="title">
			<h2>주문취소내역</h2>
	</div>
	<form name="searchdays" id="searchdays" action="orderlist.php"
		method="post">
		<div class="xans-element- xans-myshop xans-myshop-orderhistoryhead ">
			<fieldset class="ec-base-box">
				<legend>검색기간설정</legend>
				<span class="period"> <a href="orderlist.php?basicdays=00"
					class="btnNormal" days="00"><img
						src="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date1.gif"
						offimage="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date1.gif"
						onimage="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date1_on.gif"
						alt="오늘" /></a> <a href="orderlist.php?basicdays=7" class="btnNormal"
					days="07"><img
						src="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date2.gif"
						offimage="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date2.gif"
						onimage="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date2_on.gif"
						alt="1주일" /></a> <a href="orderlist.php?basicdays=30"
					class="btnNormal" days="30"><img
						src="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date3.gif"
						offimage="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date3.gif"
						onimage="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date3_on.gif"
						alt="1개월" /></a> <a href="orderlist.php?basicdays=90"
					class="btnNormal" days="90"><img
						src="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date4.gif"
						offimage="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date4.gif"
						onimage="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date4_on.gif"
						alt="3개월" /></a> <a href="orderlist.php?basicdays=180"
					class="btnNormal" days="180"><img
						src="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date5.gif"
						offimage="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date5.gif"
						onimage="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base_ko_KR/myshop/btn_date5_on.gif"
						alt="6개월" /></a>
				</span> <input id="history_start_date" name="sdate" class="fText"
					readonly="readonly" size="10" value="2022-12-22" type="text" /> ~
				<input id="history_end_date" name="edate" class="fText"
					readonly="readonly" size="10" value="2023-02-17" type="text" /> <input
					alt="조회" id="order_search_btn" type="image"
					src="https://cdn-jull.bizhost.kr/jullweb20190218/skin/admin_ko_KR/myshop/btn_search.gif" /> 
					<br>
			</fieldset>
		</div>
	
	</form>
	<div
		class="xans-element- xans-myshop xans-myshop-orderhistorylistitem ec-base-table typeList">
	
		<table border="1" summary="">
			<colgroup>
				<col style="width: 135px;" />
				<col style="width: 100px;" />
				<col style="width: 140px" />
				<col style="width: 130px;" />
				<col style="width: 130px;" />
				<col style="width: 130px;" />
				<col style="width:130px;"/>
			</colgroup>
			<thead>
			</div>
				<tr>
					<th scope="col">주문일자<br />[주문번호]
					</th>
					<th scope="col">이미지</th>
					<th scope="col">상품정보</th>
					<th scope="col">수량</th>
					<th scope="col">상품구매금액</th>
					<th scope="col">취소/교환/반품</th>
					<th scope="col">주문처리상태</th>
				</tr>
			</thead>
			<tbody class="center ">
				<tr class="xans-record-">
					<td class="number ">2023-2-17
						<p>
							<a href="orderview.php?index_no=1438197" class="line">[20230217-1438197]</a>
						</p>
					<td class="thumb"><a href="/shop/view.php?index_no=12332"><img
							src="./img/5.jpg"width="300" height="240" alt="" /></a>
					<td class="product left top"> 루시 테이블<strong class="name"><a
							href="/shop/view.php?index_no=12332" class="ec-product-name">
						</a></strong>
						<div class="option "></div></td>
					<td>
						<strong>1</strong>
					</td>
					<td class="right">
						<center>
							<strong>23,000원</strong>
						</center>
						<div class="displaynone"></div>
					</td>
					<td class="state" />
					<p class="txtEm" />
					<h4>주문취소</h4>
					<td>
			       <h4>주문취소완료</h4>
		</td>
				</tr>
			
			</tbody>
		</table>
	</div>
<!-- footer구역 -->
	<footer class="container-fluid navbar-fixed-bottom">
		<div class="footer">footer구역</div>
		<div class="footer">
			<!--   -->
			상호명 | 대표자 | 전화번호 | 주소 서울특별시 강남구
			<p>사업자번호 xxx-xx-xxxxx
			<p>이메일 | 교환,반품 주소지
			<p>
		</div>
	</footer>

	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="../js/bootstrap.min.js"></script>
</body>
</html>