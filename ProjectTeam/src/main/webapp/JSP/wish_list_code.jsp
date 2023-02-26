<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>관심상품</title>
<!-- <link href="../css/bootstrap.min.css" rel="stylesheet"> -->
<link href="../css/wish_list_code.css" rel="stylesheet">
<meta charset="utf-8">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#cbx_chkAll").click(function() {
			if ($("#cbx_chkAll").is(":checked"))
				$("input[name=chk]").prop("checked", true);
			else
				$("input[name=chk]").prop("checked", false);
		});

		$("input[name=chk]").click(function() {
			var total = $("input[name=chk]").length;
			var checked = $("input[name=chk]:checked").length;

			if (total != checked)
				$("#cbx_chkAll").prop("checked", false);
			else
				$("#cbx_chkAll").prop("checked", true);
		});
	});
</script>
</head>
<body>
	<div class="wish_list_code_sangpum">
		<h2>관심상품</h2>
	</div>
	<div class="wish_list_code_leftbar">
		<ul class="nav">
			<li>회원가입</li>
			<li>회원로그인</li>
			<li>게시판</li>
			<li>설문조사</li>
		</ul>
	</div>
	<p></p>
	<div class="wish_list_code_main">
		<div
			class="xans-element- xans-myshop xans-myshop-wishlist ec-base-table typeList xans-record-">
			<table border="1" summary="">
				<colgroup>
					<col style="width: 40px;" />
					<col style="width: 130px" />
					<col style="width: 200px" />
					<col style="width: 125px" />
					<col style="width: 100px" />
					<col style="width: 130px" />
					<col style="width: 150px" />
					<col style="width: 300px" />
				</colgroup>
				<thead>
					<tr>
						<th><input type="checkbox" id="cbx_chkAll" /></th>
						<th scope="col">이미지</th>
						<th scope="col">상품정보</th>
						<th scope="col">판매가</th>
						<th scope="col">적립금</th>
						<th scope="col">배송구분</th>

						<th scope="col">합계</th>
						<th scope="col">선택</th>
					</tr>
				</thead>

				<tbody class="center"
					class="xans-element- xans-myshop xans-myshop-wishlistitem center">
					<tr class="xans-record-">
						<td><input type="checkbox" name="chk"></td>
						<td style="line-height: 0"><img src="../img/1.jpg"
							width="300" height="240" alt="#" /></td>
						<td class="left"><strong class="name"><a
								href="/shop/view.php?index_no=12206" class="ec-product-name"></a></strong>
							<li class="xans-record-">구름러그</li></td>
						<td class="price right"><strong class="">18,000원</strong></td>
						<td><span class="txtInfo"><img
								src="https://cdn-jull.bizhost.kr/jullweb20190218/web/upload/icon_201901291417266100.gif"
								class="icon_img" alt="적립금" />180</span></td>
						<td>
							<div class="txtInfo">기본배송</div>
						</td>
						<td class="price right"><strong class="">18,000원</strong></td>
						<td><input type="button" style="width: 80px; height: 25px"
							value="주문하기"> <input type="button"
							style="width: 80px; height: 25px" value="삭제하기"> <input
							type="button" style="width: 100px; height: 25px" value="장바구니담기">
					</tr>
					<tr class="xans-record-">
						<td><input type="checkbox" name="chk"></td>
						<td style="line-height: 0"><img src="../img/2.jpg"
							width="300" height="240" alt="#" /></td>
						<td class="left"><strong class="name"><a
								href="/shop/view.php?index_no=12206" class="ec-product-name"></a></strong>
							<li class="xans-record-">마름모 러그</li></td>
						<td class="price right"><strong class="">21,000원</strong></td>
						<td><span class="txtInfo"><img
								src="https://cdn-jull.bizhost.kr/jullweb20190218/web/upload/icon_201901291417266100.gif"
								class="icon_img" alt="적립금" />210</span></td>
						<td>
							<div class="txtInfo">기본배송</div>
						</td>

						<td class="price right"><strong class="">21,000원</strong></td>
						<td><input type="button" style="width: 80px; height: 25px"
							value="주문하기"> <input type="button"
							style="width: 80px; height: 25px" value="삭제하기"> <input
							type="button" style="width: 100px; height: 25px" value="장바구니담기">
					</tr>
					<tr class="xans-record-">
						<td><input type="checkbox" name="chk"></td>
						<td style="line-height: 0"><img src="../img/3.jpg"
							width="300" height="240" alt="#" /></td>
						<td class="left"><strong class="name"><a
								href="/shop/view.php?index_no=12169" class="ec-product-name">
							</a></strong>
							<li class="xans-record-">대리석테이블</li></td>
						<td class="price right"><strong class="">47,000원</strong></td>
						<td><span class="txtInfo"><img
								src="https://cdn-jull.bizhost.kr/jullweb20190218/web/upload/icon_201901291417266100.gif"
								class="icon_img" alt="적립금" />470</span></td>
						<td>
							<div class="txtInfo">기본배송</div>
						</td>

						<td class="price right"><strong class="">47,000원</strong></td>
						<td><input type="button" style="width: 80px; height: 25px"
							value="주문하기"> <input type="button"
							style="width: 80px; height: 25px" value="삭제하기"> <input
							type="button" style="width: 100px; height: 25px" value="장바구니담기">
					</tr>
				</tbody>
			</table>
			<h3>
				<div class="wish_list_code_contents">
					<input type="button" style="width: 80px; height: 25px" value="주문하기">
					<input type="button" style="width: 80px; height: 25px" value="삭제하기">
					<input type="button" style="width: 100px; height: 25px"
						value="장바구니담기">
			</h3>
		</div>
	</div>


	<!-- footer구역 -->
	<footer class="container-fluid navbar-fixed-bottom">
		<div class="footer">footer구역</div>
		<div class="wish_list_code_footer">
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