<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
<head> 
 <meta charset="UTF-8">
<script type="text/javascript" src="/Zspace/js/asj.js?ver=1"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="/Zspace/css/bootstrap.min.css" rel="stylesheet">
<link href="/Zspace/css/asj.css" rel="stylesheet">
<link href="/Zspace/css/kim.css" rel="stylesheet">  
<script> 
$(function(){
  $('#email_sel').change(function(){
	$("#email_sel option:selected").each(function(){
	  if($(this).val()=='1'){
		 $('#email2').val('');
	     $('#email2').attr("disabled",false); //#email2 활성화
	  }else{
		 $('#email2').val($(this).text()); //선택값 입력
		 $('#email2').attr("disabled",true); //#email2 비활성화
	  } 
	})     
  }) 
 })  
 /* 여기부터 기능 구현 시 수정 예정*/
  $(function(){
    $('#phbtn').click(function(){
	  alert('전화번호로 찾기 준비 중');
    })
  })
  $(function(){
    $('#embtn').click(function(){
	  alert('이메일로 찾기 준비 중');
    })
  }) 
  /* 여기까지 기능 구현 시 수정예정 */
  
</script>
</head>
<body>

  <div id="leftbar"> <!-- 전체 사이드바 구역 -->
	<div class="logo"> <!-- 로고 -->
	  <a href="/Zspace/mainpage/MainPage.jsp"><img src="C:\Users\asuj9\Desktop\project\rogo.png"></a>
	</div> <!-- 로고 -->
	<div class="menu_wrap"> <!-- 사이드 바 내용 -->
	  <table class="menu_group"> <!-- 로그인, 마이페이지 -->
	   <tr>				
		<th align="center">
		  <a href="/Zspace/FRONT/login.jsp">로그인</a>  | 
		  <a href="/Zspace/FRONT/mem_join.jsp">회원가입</a> 
		  <p>
		  <a href="#cart_num.do?type=">장바구니</a> | 
		  <a href="#.wish_list.do?type=">관심상품</a> | 
		  <a href="#.mypage.do?type=">마이페이지</a>
		</th>	
	   </tr>
	  </table><!-- 로그인, 마이페이지 -->
	  
	  <div class="side_list"> <!-- 사이드 내 영역 -->
	    <div class=" side_wrap"> <!-- 사이드바 내 좌측 카테고리 영역-->
		  <div class="menu_cell">
			<label for="ch1"><a href="#.DECORATION">데코</a></label>
			<ul class="sub_menu">
			  <li><a href="#Lamp">조명</a></li>
			  <li><a href="#Frame">액자</a></li>
			  <li><a href="#.Candle">캔들</a></li>
			  <li><a href="#.Flower">식물/조화</a></li>
			</ul>
		  </div>
		  <div class="menu_cell">
			<label for="ch2"><a href="#.Furniture">가구</a></label>
			<ul class="sub_menu">						
			  <li><a href="#.Chair">의자</a></li>
			  <li><a href="#.Table">테이블</a></li>
			  <li><a href="#.Dresser">서랍장</a></li>
			</ul>
		  </div>
		  <div class="menu_cell">
		    <label for="ch3"><a href="#.FABRIC"> 패브릭</a></label>
			<ul class="sub_menu">
			  <li><a href="#.rug">러그</a></li>
			  <li><a href="#.blind">블라인드</a></li>
			  <li><a href="#.blanket">이불</a></li>
			</ul>
		  </div>
  		  <div class="menu_cell">
			<label for="ch4"><a href="#.KITCHEN">주방</a></label>
			<ul class="sub_menu">
			  <li><a href="#.Pantry">팬트리</a></li>
			  <li><a href="#.Cooking">조리도구</a></li>
			  <li><a href="#.dishes">식기</a></li>
			</ul>
		  </div>
		</div> <!-- 사이드바 내 좌측 카테고리 영역-->
		
		<div class="side_wrap "><!-- 사이드바 내 우측 게시판 영역-->
		  <div class="menu_cell">
			<label for="ch6"><a href="#FAQ">공지사항</a></label>						
		  </div>
		  <div class="menu_cell">
			<label for="ch8"><a href="#.EVENT">이벤트</a></label>		
		  </div>
		  <div class="menu_cell">
			<label for="ch3"><a href="#.FABRIC">게시판</a></label>
			<ul class="sub_menu">
			  <li><a href="/Zspace/list.do">질문게시판</a></li>
			  <li><a href="#.REVIEW ">리뷰게시판</a></li>
			  <li><a href="#.CANCEL">취소게시판</a></li>
			  <li><a href="#.">커뮤니티</a></li>
			</ul>
		  </div>
		</div><!-- 사이드바 내 우측 카테고리-->
	  </div><!-- <div class="side_list"> 사이드 내 영역 -->
<div class="slid_footer" style="white-space:pre"> <!-- 사이드 내 하단 -->
<b>TEL</b> | 012-345-6789
<b>영업시간</b> | AM 10:00 - PM 17:00 
		공휴일.토.일 휴무
<span>
<b>BANK INFO</b>
<b>예금주</b> | (주)공간의집<br>
<b>농협</b> | 111-0303-0333-33
<b>신한</b> | 144-144-333333
<b>국민</b> | 555555-44-445555
<b>하나</b> | 281-919999-99999
</span>
	  </div> <!-- 사이드 내 하단 -->
	</div> <!--<div class="menu_wrap"> 사이드 바 내용 -->		
  </div><!-- 전체 사이드바 구역 -->  
  
  
 <div id="contents"> <!-- 사이드 제외 전체구역 -->
  <div class="main">  
   <div class="top">
     <img src="/Zspace/icon/find_id.png" id="id_find_img" width="50px"> 
     <div id="id_find"><font size="4"><b>아이디 찾기</b></font><br>
            아이디를 찾기 위한 방법을 선택해 주세요. <p>
     </div>
    <hr>
   </div>
      
   <div class="middle" align="center">
     <form method="post" id="idfm" action="#">
       <table id="findtb">
         <tr align="left" height="40">
           <td colspan="3" id="find_phone_td" valign="middle">
             <input type="radio" name="find"> <b>전화번호로 찾기</b>
           </td>
         </tr>
         <tr height="20">
           <td id="id1">이름</td>
           <td width="160"><input type="text" name="mem_name" size="21px"></td>
           <td width="100"><button id="phbtn">인증하기</button></td>
         </tr>
         <tr height="40">
           <td id="id1">휴대전화</td>
           <td colspan="2" width="160"><input type="text" name="mem_phone" size="21px"></td>
         </tr>
       </table>
       
       <!-- 이메일로 찾기-->
       <table id="findtb2">
         <tr align="left" height="40">
           <td colspan="3" id="find_email_td" valign="middle">
             <input type="radio" name="find"> <b>이메일로 찾기</b>
           </td>
         </tr>
         <tr height="20">
           <td id="id1">이름</td>
           <td width="160"><input type="text" name="mem_name" size="21px"></td>
           <td width="100"><button id="embtn">인증하기</button></td>
         </tr>
         <tr height="40">
           <td id="id1">이메일</td>
           <td colspan="2">
             <input type="text" name="mem_email" id="mem_email"size="13"> @
             <input type="text" name="mem_email2" id="email2" size="13">
             <select name="mem_email_sel" id="email_sel">
               <option value="" selected>선택하세요</option>
               <option value="1">직접 입력</option>
               <option value="daum.net">daum.net</option>
               <option value="google.com">google.com</option>
               <option value="naver.com">naver.com</option>
               <option value="nate.com">nate.com</option>
               <option value="empas.com">empas.com</option>
             </select>
           </td>
         </tr>
       </table>
     </form>
   </div><!-- middle -->
  </div> <!-- 메인 -->
 </div><!-- content -->   

  <footer class="footer"> <!-- footer구역 -->
	<div class="footerdiv" >
	  공간의 집 | KIC | 012-345-6789 | 주소 : 서울특별시 강남구<p>
	  사업자번호 011-22-345678 | ourhome@aaa.com <p>			
	</div>
  </footer>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   <script src="/Zspace/js/bootstrap.min.js"></script>

</body>
</html>