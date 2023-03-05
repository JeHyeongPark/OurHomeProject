<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/mine.css" rel="stylesheet">

</head>
<body>

<div id="leftbar">
  <div class=""><a href="#">쇼핑몰</a></div>
</div>  

<div id="myPage_contents">
  <div id="myPage_header">
    <h4 class="text-center">MY PAGE</h4><p>
	<hr>
  </div>


<div class="myPage_main">
 <ul class="myPage_pointarea">
  <li>가용적립금
  <span class="myPage_main_won">원</span>
  </li>
  <li>사용적립금  
  <span class="myPage_main_won">원</span>
  </li>
 </ul>
</div>


<div class="myPage_check">
	<div class="myPage_order">
	<a href="#">
	  <h4>
	    <strong>ORDER</strong>
	  </h4>
	  주문하신 상품의 주문내역을 확인하실 수 있습니다.
	</a>
	</div>
	
	<div class="myPage_profile">
	<a href="#">
	  <h4>
	    <strong>PROFILE</strong>
	  </h4>
	  회원이신 고객님의 개인정보를 관리하는 공간입니다.
	</a>
	</div>
	
    <div class="myPage_cart">
	<a href="#">
	  <h4>
	    <strong>CART</strong>
	  </h4>
	  장바구니에 들어있는 상품의 목록을 보여드립니다. 
	</a>
	</div>
	
	<div class="myPage_wishlist">
	<a href="#">
	  <h4>
	    <strong>WISHLIST</strong>
	  </h4>
	  관심상품으로 등록하신 상품의 목록을 보여드립니다.
	</a>
	</div>
	
	<div class="myPage_point">
	<a href="#">
	  <h4>
	    <strong>적립금</strong>
	  </h4>
	  적립금은 상품 구매시 사용하실 수 있습니다.
	</a>
	</div>
	
	<div class="myPage_post">
	<a href="#">
	  <h4>
	    <strong>POST</strong>
	  </h4>
	  고객님께서 작성하신 게시물을 관리하는 공간입니다.
	</a>
	</div>
</div>


</div><!-- contents -->


<!-- footer구역 -->
	<footer class="footer">
		<div class="footerdiv" >
			상호명 | 대표자 | 전화번호 | 주소 서울특별시 강남구<p>
				사업자번호 xxx-xx-xxxxx<p>
 				이메일 | 교환,반품 주소지<p>			
		</div>
	</footer>

<!-- -------------------------------------------------------------------------------------------------------------------------------------------------------- -->




	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="../js/bootstrap.min.js"></script>

</body>
</html>