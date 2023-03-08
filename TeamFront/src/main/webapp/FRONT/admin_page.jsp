<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>   
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="/Zspace/css/bootstrap.min.css" rel="stylesheet">
<link href="/Zspace/css/asj.css" rel="stylesheet">
      
<title>::관리자 페이지::</title>
</head>
<script>
$(function(){
  //첫번째 탭을 제외한 나머지 탭의 내용은 안보이게 설정하기 = :not #tab1
  $("div.panel div:not("+$("ul.nav li a.selected").attr("href")+")").hide();
  $("ul.nav li a").click(function(){
	  $("ul.nav li a").removeClass("selected");
	  $(this).addClass("selected"); //$(this) : 클릭한 a 태그에 대한 이벤트를 발생시킴
	  $("div.panel div").hide(); //선택한 탭의 내용빼고 나머지 모든 탭의 내용은 숨김
	  //안쪽의 $(this):클릭한 tab의 a태그  ex)tab2
	  $($(this).attr("href")).show(); //$('#tab2').show() : id가 tab2인 태그
  })
}) 
 
<!-- 탭 클릭 시 스크롤 자동 이동을 방지-->
$(function(){
 $("a").click(function(e){
   e.preventDefault();
   e.stopPropagation();
 })
}) 

<!-- 체크박스 -->
$(document).ready(function() {
	$("#soldout_chk").click(function() { //클릭 자체에 대한 기능
		if($("#soldout_chk").is(":checked"))
			$("input[name=soldout]").prop("checked", true); 
		else $("input[name=soldout]").prop("checked", false); 
	});
	
	$("input[name=soldout]").click(function() { //개수비교
		var total = $("input[name=soldout]").length; 
		var checked = $("input[name=soldout]:checked").length;
		
		if(total!=checked)
		     $("#soldout_chk").prop("checked", false); 
		else $("#soldout_chk").prop("checked", true);
	});
});
  </script>
  <!-- 부트스트랩 -->
</head>
<body>

 <div id="leftbar">
  <div class=""><a href="#">쇼핑몰</a></div>
 </div>  

   <!-- 메인 -->      
 <div id="contents">  <!-- 전체 레이아웃을 감싸기 -->
  <div class="top">
    <h4>관리자 전용</h4>
    <hr>
    
	<ul class="nav nav-tabs nav-justified">
	 <li><a href="#1tab" class="selected">회원정보</a></li>
	 <li><a href="#2tab">회원주문관리</a></li>
	 <li><a href="#3tab">적립금 현황</a></li>
	 <li><a href="#4tab">상품관리</a></li>
	</ul>
  </div>
	 
	 
	<div class="panel">
	  <!-- 회원정보 -->
	  <div id="1tab">
	   <table id="tab1" border="1px solid black" >
	    <tr id="admin_page_tr" height="30px">
	     <th width="13%" class="text-center">이름</th>
	     <th width="15%" class="text-center">아이디</th>
	     <th width="30%" class="text-center">주소</th>
	     <th width="15%" class="text-center">전화번호</th>
	     <th width="15%" class="text-center">이메일</th>
	     <th width="7%" class="text-center">정보 수정</th>
	    </tr>
	    <tr height="40px">
	     <td class="text-center">${mem_name}</td>
	     <td class="text-center">${mem_id}</td>
	     <td style="padding-left:10px">${mem_addr}</td>
	     <td class="text-center">${mem_phone}</td>
	     <td class="text-center">${mem_email}</td>
	     <td><center><a href="admin_info.jsp"><button id="mem_up">수정</button></a></center></td>
	    </tr>
	   </table>
	   <form name="search" id="search" action="./admin_page.jsp">
        <select name="search">
         <option value="mem_name">이름</option>
      	 <option value="mem_id">아이디</option>
      	 <option value="mem_addr">주소</option>
      	 <option value="mem_phone">전화번호</option>
      	 <option value="mem_email">이메일</option>
   		</select>
  		<input type="text" size="15" name="searchtext">&nbsp;
   		<input type="submit" value="검색">
	   </form>
	  </div>
	
	  <!-- 회원주문관리 -->
	  <div id="2tab" >
	   <table id="tab2" border="1px solid black">
	    <tr id="admin_page_tr" height="30px">
	     <th width="10%" class="text-center">아이디</th>
	     <th width="10%" class="text-center">주문 날짜</th>
	     <th width="14%" class="text-center">주문 번호</th>
	     <th width="28%" class="text-center">상품명</th>
	     <th width="13%" class="text-center">상태 변경</th>
	     <th width="17%" class="text-center">주문처리상태</th>
	     <th width="8%" class="text-center">주문 결과</th>
	    </tr>
	    <tr height="40px" class="text-center">
	     <td height="40px">${mem_id}</td>
	     <td>${order_date}</td>
	     <td>${order_num}</td>
	     <td class="text-left" style="padding-left:10px">${item_name}</td>
	     <td>
	       <select name="search">
         	<option value="item_num">반품</option>
      	 	<option value="iten_name">취소</option>
      	 	<option value="mem_addr">교환</option>
   		   </select> &nbsp;
   		   <button id="tab2_btn">처리</button>
	     </td>
	     <td><center> 
	       <select name="search">
	        <option value="choose" selected>선택하세요</option>
         	<option value="payment_check">입금확인 중</option>
      	 	<option value="delivery_ready">배송준비 중</option>
      	 	<option value="delivery">배송중</option>
      	 	<option value="complete">배송완료</option>
   		   </select> &nbsp;
   		   <button id="tab2_btn">처리</button></center>
	     </td>
	     <td>${order_prcs}</td>
	    </tr>
	   </table>
	   <form name="search" id="search" action="/TeamFront/admin_page.do">
        <select name="search">        
      	 <option value="mem_addr">아이디</option>
         <option value="item_num">주문번호</option>
      	 <option value="iten_name">상품명</option>
      	 <option value="mem_phone">주문결과</option>
   		</select>
  		<input type="text" size="15" name="searchtext">&nbsp;
   		<input type="submit" value="검색">
	   </form>
	  </div>
	  
	  <!-- 적립금 -->
	  <div id="3tab">
	   <table id="tab3" border="1px solid black">
	    <tr id="admin_page_tr" height="30px">
	     <th width="13%" class="text-center">아이디</th>
	     <th width="13%" class="text-center">적립 날짜</th>
	     <th width="30%" class="text-center">적립 내역</th>
	     <th width="13%" class="text-center">적립</th>
	     <th width="13%" class="text-center">사용</th>
	     <th width="18%" class="text-center">총 적립금</th>
	    </tr>
	    <tr height="40px" class="text-center">
	     <td>${mem_id}</td>
	     <td>2023-02-25</td>
	     <td class="text-left" style="padding-left:10px" >로그인</td>
	     <td><font color="red">+100</font></td>
	     <td><font color="blue">0</font></td>
	     <td><b>100</b></td>
	    </tr>
	   </table>
	   <form name="search" id="search" action="/TeamFront/admin_page.do">
        <select name="search">
         <option value="mem_name">아이디</option>
   		</select>
  		<input type="text" size="15" name="searchtext">&nbsp;
   		<input type="submit" value="검색">
	   </form>
	  </div>
	  
	  <!-- 상품관리 -->
	  <div id="4tab">
	   <table id="tab4" border="1px solid black">
	    <tr id="admin_page_tr" height="30px" >
	     <th width="3%" class="text-center"><input type="checkbox" id="soldout_chk"></th>
	     <th colspan=2 width="59%" class="text-center">상품명</th>
	     <th width="9%" class="text-center">상품 수정</th>
	     <th width="9%" class="text-center">상품 삭제</th>
	     <th width="9%" class="text-center">상품 재고</th>
	     <th width="11%" class="text-center">품절 처리</th>
	    </tr>
	    <tr id="admin_page_tr2" class="text-center">
	     <td width=><input type="checkbox" name="soldout"></td>
	     <td width="15%" height="90px">상품사진</td>
	     <td width="45%"  class="text-left" style="padding-left:10px">알록달록 머쉬룸 조명</td>
	     <!-- 수정 : 클릭 시 페이지 이동
	      	  삭제 : alert창? 팝업창?
	      	  품절 : 버튼 클릭 시 해당 제품 품절 뜨도록 function??
	      -->
	     <td><center><a href="#"><button id="insert" width="10%">수정</button></a></center></td>
	     <td><center><button id="delete" width="10%" onclick="alert('정말 삭제하시겠습니까?')">삭제</button></center></td>
	     <td>30개</td>
	     <td valign="center"><center><button id="item_soldout_btn">품 절</button> <p><p>
	                 <button id="item_sale_btn">재판매</button></center>
	     </td>
	    </tr>
	    <tr id="admin_page_tr2" class="text-center">
	     <td width=><input type="checkbox" name="soldout"></td>
	     <td width="15%" height="90px">상품사진</td>
	     <td width="45%"  class="text-left" style="padding-left:10px">포근 구름 카페트</td>
	     <!-- 수정 : 클릭 시 페이지 이동
	      	  삭제 : alert창? 팝업창?
	      	  품절 : 버튼 클릭 시 해당 제품 품절 뜨도록 function??
	      -->
	     <td><center><a href="#"><button id="insert" width="10%">수정</button></a></center></td>
	     <td><center><button id="delete" width="10%" onclick="alert('정말 삭제하시겠습니까?')">삭제</button></center></td>
	     <td>10개</td>
	     <td valign="center"><center><button id="item_soldout_btn">품 절</button> <p><p>
	                 <button id="item_sale_btn">재판매</button></center>
	     </td>
	    </tr>
	    <tr id="admin_page_tr2" class="text-center">
	     <td width=><input type="checkbox" name="soldout"></td>
	     <td width="15%" height="90px">상품사진</td>
	     <td width="45%"  class="text-left" style="padding-left:10px">푸르른 숲</td>
	     <!-- 수정 : 클릭 시 페이지 이동
	      	  삭제 : alert창? 팝업창?
	      	  품절 : 버튼 클릭 시 해당 제품 품절 뜨도록 function??
	      -->
	     <td><center><a href="#"><button id="insert" width="10%">수정</button></a></center></td>
	     <td><center><button id="delete" width="10%" onclick="alert('정말 삭제하시겠습니까?')">삭제</button></center></td>
	     <td>15개</td>
	     <td valign="center"><center><button id="item_soldout_btn">품 절</button> <p><p>
	                 <button id="item_sale_btn">재판매</button></center>
	     </td>
	    </tr>
	   </table>
	   <!--  
	   		상품 추가 : 추가 페이지 이동
	   		품절 처리 : 버튼 클릭 시 해당 제품 품절 뜨도록 function??
	   -->
	   <a href="#"><button class="item_upload">상품 추가</button></a>
	   <a href="#"><button class="item_soldout">품절 처리</button></a>
	   <a href="#"><button class="item_sale">재 판매</button></a>
	  </div>
	</div> <!-- panel -->
   </div><!-- contents -->
	  
	  
	<!-- footer -->
    <footer >
      <div class="footer" ><!--   -->
         상호명 | 대표자 | 전화번호 | 주소 서울특별시 강남구<p>
            사업자번호 xxx-xx-xxxxx<p>
             이메일 | 교환,반품 주소지<p>
         
      </div>
   </footer>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="/Zspace/js/bootstrap.min.js"></script>

</body>
</html>