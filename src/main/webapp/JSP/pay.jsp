<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제페이지</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/mine.css" rel="stylesheet">


</head>
<body>


<div id="leftbar">
  <div class=""><a href="#">쇼핑몰</a></div>
</div>  

<div id="pay_contents">
  <div id="pay_header">
    <h4 class="text-center">ORDER</h4><p>
	<hr>
  </div>


<div class="pay_ordermenu" >
<table class="pay_ordertable">
   <thead class="pay_ordertalbehead">
	<tr>
	  <th><input type="checkbox" onclick="" /></th>	 
	  <th>이미지</th>
	  <th>상품정보</th>
	  <th>판매가</th>
	  <th>수량</th>
	  <th>적립금</th>
	  <th>배송구분</th>
	  <th>배송비</th>
	  <th>합계</th>
	 </tr>
	</thead>
	<tbody class="pay_ordertalbebody">
	  <tr>
	    <td><input type="checkbox" onclick="" /></td>
	    <td><a href="#">이미지</a></td>
	    <td>상품이름,상품 옵션</td>
	    <td>22,900원</td>
	    <td>1</td>
	    <td>120원</td>
	    <td>기본배송</td>
	    <td>배송비</td>
	    <td>합계</td>
	  </tr>
	</tbody >
	<tfoot class="pay_ordertalbefoot">
	  <tr>
	    <td></td>
	    <td colspan="8">
	    <span>[기본배송]</span>
	    <div class="pay_right">
	     상품구매금액
	     <strong>
	      22,900
	     </strong>
	     <span></span>
	     +배송비
	     <span>3,500</span>
	     <span>상품할인금액 0</span>
	     = 합계 : 
	     <strong>
	       <span>26,400</span>
	     원
	     </strong>
	     </div>
	     </td>
	  </tr>
	</tfoot>
</table>
</div>

<div class="pay_delete">
선택상품
<button>삭제하기</button>
<button class="pay_prev">이전페이지</button>
</div>

<div class="pay_tobody"><hr></div>
배송 정보
<div class="pay_bodytable">
  <table class="pay_bodytable0">
  <tbody class="pay_bodytable1">
   <tr>
     <th>배송지 선택</th>
     <td>
       <div class="pay_bodytable1area">
         <input type="radio"><label>회원 정보와 동일</label>
         <input type="radio"><label>새로운 배송지</label>
         <span>
           최근배송지
           <input type="radio"><label>홍길동</label>
         </span>
     </div>
    </td>
   </tr>
   
   </tbody>
   <tbody class="pay_bodytable2">
    <tr>
      <th>
      받으시는 분
      </th>
      <td>
      <div class="pay_bodytable2area">
      <input type="text" placeholder size="15">
      </div>
      </td>
    </tr>
    </tbody>
    <tbody class="pay_bodytable3">
    <tr>
     <th>
     주소
	</th>   
	<td>
	<div class="pay_bodytable3area">
	  <input placeholder size="6" maxlength="6" type="text">
	  <span>
	    <a href="#">우편번호</a>
	  </span>
	  <br>
	  <input placeholder size="40" readonly="1" value type="text">
	  <span class="grid">기본주소</span>
	  <br>
	  <input placeholder size="40" value type="type">
	  <span class="grid">나머지주소</span>
	 </div>
	</td>
  </tr>
  </tbody>
  <tbody class="pay_bodytable4">
   <tr>
    <th>
    일반전화
    </th>
    <td>
    <div class="pay_bodytable4area">
   <select>
     <option>02</option>
     <option>031</option>
     <option>055</option>
   </select>
   -
   <input size="4" type="text">
   -
   <input size="4" type="text">
   </div>
   </td>
   </tr>
   </tbody>
   <tbody class="pay_bodytable5">
      <tr>
    <th>
    휴대전화
    </th>
    <td>
    <div class="pay_bodytable5area">
   <select>
     <option>010</option>
     <option>011</option>
     <option>016</option>
   </select>
   -
   <input size="4" type="text">
   -
   <input size="4" type="text">
   </div>
   </td>
   </tr>
   </tbody>
   <tbody class="pay_bodytable6">
   <tr>
    <th>
    배송메세지
    </th>
    <td>
    <div class="pay_bodytable6area">
    <textarea maxlength="255" cols="70"></textarea>
    </div>
    </td>
   </tr>
   </tbody>
 </table>
</div>




<div class="pay_totalpayleft">
결제 예정 금액
</div>

<div class="pay_totalpayright">
결제 수단
</div>


<div class="pay_bottomleft">
  <div class="1">총 주문 금액<p>
  26000원
  </div>
  
  <div class="2">
  총 할인<p>
  -3000원
  </div>
  
  <div class="3">
  총 결제예정 금액<p>
  =23000원
  </div>
 
</div>

<div class="pay_bottomright">
 <div>
  <input type="radio">카드 결제&nbsp;|&nbsp;
  <input type="radio">휴대폰 결제&nbsp;|&nbsp;
  <input type="radio">무통장 입금&nbsp;| &nbsp;
  <input type="radio">삼성 페이<p>
</div>
  <div class="pay_last">
 결제 총 금액<p>
 23000원<p>
 <button>결제하기</button>
</div>
 </div>
</div>



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