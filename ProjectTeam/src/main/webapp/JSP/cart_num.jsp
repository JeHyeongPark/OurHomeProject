<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>장바구니</title>

<!-- 부트스트랩 -->
<!-- <link href="../css/bootstrap.min.css" rel="stylesheet"> -->
<link href="../css/cart_num.css" rel="stylesheet">
<meta charset="utf-8">
<title>체크박스 연습</title>
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
	<div class="cart_num_leftbar">
		<ul class="nav">
			<li>회원가입</li>
			<li>회원로그인</li>
			<li>게시판</li>
			<li>설문조사</li>
		</ul>
	</div>
	<div class="cart_num_sangpum">
		<h2>장바구니</h2>
		<p></p>
	</div>
	<!-- //gtm -->
	<div
		class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember ">
		<p class="cart_num_right_displaynone">
			<b>장바구니에 담긴 상품은 7일 동안 보관됩니다.</b>
		<div class="cart_num_typeList">
			<p>(일반상품)</p>
			<div class="xans-element- xans-order xans-order-normtitle title ">
				<p></p>
			</div>
		</div>
	</div>
	</div>

	<div class="cart_num_main">
		<div
			class="xans-element- xans-myshop xans-myshop-wishlist ec-base-table typeList xans-record-">
			<table border="1" summary="">
				<colgroup>
					<col style="width: 30px;" />
					<col style="width: 130px" />
					<col style="width: 140px" />
					<col style="width: 110px" />
					<col style="width: 120px" />
					<col style="width: 120px" />
					<col style="width: 150px" />
					<col style="width: 150px" />
					<col style="width: 200px" />
				</colgroup>
				<thead>
					<tr>
						<th><input type="checkbox" id="cbx_chkAll" /></th>
						<th scope="col">이미지</th>
						<th scope="col">상품정보</th>
						<th scope="col">판매가</th>
						<th scope="col">수량</th>
						<th scope="col" class="mileage">적립금</th>
						<th scope="col">배송구분</th>
						<th scope="col">합계</th>
						<th scope="col">선택</th>
					</tr>
				</thead>
				<tfoot class="cart_num_right">

					<tr>
						<td colspan="9"><span class="">[기본배송]</span> 상품구매금액 <strong>18,000원
								<span class="displaynone"></span>
						</strong><span class="displaynone"></span><span class="displaynone">
								<span class="displaynone"></span>
						</span> + 배송비 0 = 합계 : <strong class="txtEm"><span class="txt18">18,000원</span></strong><span
							class="displaynone"></span></td>
					</tr>
				</tfoot>
				<tbody class="center"
					class="xans-element- xans-myshop xans-myshop-wishlistitem center">
					<tr class="xans-record-">
						<td><input type="checkbox" name="chk"></td>
						<td style="line-height: 0"><img src="../img/1.jpg"
							width="300" height="240" alt="#" /></td>
						<td class="left gClearLine"><strong class="name"><a
								href="/shop/view.php?index_no=12286" class="ec-product-name">
							</a></strong>

							<li class="xans-record-">구름러그<strong class="displaynone">
							</strong> <span class="displaynone"></span><br /> <span class=""></span></li>
						</td>
						<td class="cart_num_right">
							<center>
								<strong>18,000원</strong>
							</center>
							<div class="displaynone"></div>
						</td>

						<td><span class=""> <span class="ec-base-qty">
									<input id="ea7199613" name="ea" size="2" value="1" type="text"
									class="eainput" /> <input id="limit7199613" name="limit"
									value="24" type="hidden" /> <a href="javascript:;"
									onclick="javascript:changeea_not('up',this);"> <img
										src="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base/common/btn_quantity_up.gif"
										alt="수량증가" class="up" />
								</a> <a href="javascript:;"
									onclick="javascript:changeea_not('down',this);"><img
										src="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base/common/btn_quantity_down.gif"
										alt="수량감소" class="down" />
							</span> <a href="javascript:changeeanew(7199613, 'cha');"
								class="btnNormal gBlank5"></a>
						</span> <span class="displaynone"><center></span>
							</center></td>
						<td><span class="txtInfo"><img
								src="https://cdn-jull.bizhost.kr/jullweb20190218/web/upload/icon_201901291417266100.gif" />
								180원</span></td>
						<td>
							<div class="txtInfo">
								기본배송<br />
							</div>
						</td>

						<td class="cart_num_right">
							<center>
								<strong>18,000원</strong>
							</center>
							<div class="cart_num_displaynone"></div>
						</td>
						<td><input type="button" style="width: 80px; height: 25px"
							value="주문하기"> <input type="button"
							style="width: 80px; height: 25px" value="삭제하기">
					</tr>
				</tbody>
			</table>
		</div>
		<p></p>
		<div class="cart_num_ec-base-button ">
			<td><input type="button" style="width:125px;height:30px"value="전체상품주문하기"></td>
		</div>

		<!--CSS .gBorder	 -->
		<div class="cart_num_gBorder">
			<table border="1" summary="">
				<caption>총 주문금액</caption>
				<colgroup>
					<col style="width: 300px;" />
					<col style="width: 300px;" class="displaynone" />
					<col style="width: 300px;" />
				</colgroup>
				<thead>

					<tr>
						<th scope="col"><strong>총 상품금액</strong></th>
						<th scope="col"><strong>총 배송비</strong></th>
						<th scope="col"><strong>결제예정금액</strong></th>

					</tr>
				</thead>
				<tbody class="center">
					<tr>
						<td>
							<div class="box txt16">
								<strong><span class="txt23">18,000</span></strong><span
									class="txt14 displaynone"></span>
							</div>
						</td>
						<td>
							<div class="box shipping txt16">
								<strong class="txt23">+ </strong><strong><span
									class="txt23">0</span></strong><span class="txt14 displaynone"></span>
							</div>
						</td>
						<td>
							<div class="box txtEm txt16">
								<strong class="txt23">= </strong><strong><span
									class="txt23">18,000원</span></strong><span class="txt14 displaynone"></span>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<a href="#none" class="close"
				onclick="OrderLayer.offDiv('order_layer_benefit');"><img
				src="https://cdn-jull.bizhost.kr/jullweb20190218/skin/base/common/btn_close.gif"
				alt="닫기" /></a>
		</div>

	</div>
	<!-- footer구역 -->
	<footer class="container-fluid navbar-fixed-bottom">
		<div class="footer">footer구역</div>
		<div class="cart_num_footer">
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