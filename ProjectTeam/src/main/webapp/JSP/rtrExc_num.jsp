<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>교환내역</title>
<!-- <link href="../css/bootstrap.min.css" rel="stylesheet"> -->
<link href="../css/rtrExc_num.css" rel="stylesheet">
</head>
<body>
	<div class="rtrExc_num_leftbar">
		<ul class="nav">
			<li>회원가입</li>
			<li>회원로그인</li>
			<li>게시판</li>
			<li>설문조사</li>
		</ul>
	</div>
	<div class="rtrExc_num_title">
		<h2>교환내역</h2>
	</div>
	<form name="searchdays" id="searchdays" action="orderlist.php"
		method="post">

		<div class="xans-element- xans-myshop xans-myshop-orderhistoryhead ">
			<fieldset class="rtrExc_num_ec-base-box">
				<legend>검색기간설정</legend>
				<label for="date"> <input type="date" id="date"
					max="2080-12-22" min="2008-11-02" value="">
				</label> -<label for="date"> <input type="date" id="date"
					max="2080-12-22" min="2008-11-02" value="">
				</label> <button class="button">조회</button>
				
				<br>
			</fieldset>
		</div>
	</form>
	<div class="rtrExc_num_typeList">

		<table border="1" summary="">
			<colgroup>
				<col style="width: 135px;" />
				<col style="width: 100px;" />
				<col style="width: 140px" />
				<col style="width: 130px;" />
				<col style="width: 130px;" />
				<col style="width: 130px;" />
				<col style="width: 130px;" />
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
							<a href="#" class="line">[20230217-1438197]</a>
						</p>
					<td style="line-height: 0"><img src="../img/1.jpg"width="300" height="240" alt="#" /></td>
					<td class="product left top">구름 러그<strong class="name"><a
							href="/shop/view.php?index_no=12332" class="ec-product-name">
						</a></strong>
						<div class="option "></div></td>
					<td>
						<center>1</center>
					</td>
					<td class="right">
						<center>
							<strong>18,000원</strong>
						</center>
						<div class="displaynone"></div>
					</td>
					<td class="state" />
					<p class="txtEm" />
					<h4>교환</h4>
					<td>
						<h4>교환완료</h4>
					</td>
				</tr>

			</tbody>
		</table>
	</div>
	<!-- footer구역 -->
	<footer class="container-fluid navbar-fixed-bottom">
		<div class="footer">footer구역</div>
		<div class="rtrExc_num_footer">
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