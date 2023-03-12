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
<link href="/Zspace/css/kim.css" rel="stylesheet">  
   
<title>::로그인::</title>
<style>
#log_id input{
	background-image:url("/Zspace/icon/id.png");
	background-position:1px center;
	background-size:16px;
	background-repeat:no-repeat;
}       
#log_pwd input{ 
	background-image:url("/Zspace/icon/pwd.png");
	background-position: 1px center;
	background-size:16px;
	background-repeat:no-repeat
}
</style>  
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
        
 <!-- 메인 -->      
 <div id="contents">  <!-- 전체 레이아웃을 감싸기 -->
  <div class="main"> 
    <form method="post" id="logfm" action="#">      
  	  <table id="login_tb" align="center">       
       <tr>
        <td colspan="2" align="center" height="180px">
         <img src="/Zspace/icon/login.png" width="70px" vspace="10"><p>
         <font size="4"><b>로그인</b></font>
        </td>
       </tr>  
       <tr id="log_id"> <!-- 아이디 -->
        <td height="35px" width="300px" align="right">
         <input type="text" id="mem_id" name="mem_id" placeholder="아이디">
        </td>
        <td rowspan="2" width="200px" align="left">
         <button id="logbtn">로그인</button>
        </td>
       </tr>
       <tr id="log_pwd"> <!-- 비밀번호 -->
        <td height="35px" width="300px" align="right">
         <input type="password" id="mem_pwd" name="mem_pwd" placeholder="비밀번호">
        </td>
       </tr>
       <tr id="find" >
        <td colspan="2" align="center" height="50px">
         <a id="login_a" href="id_find.jsp">아이디 찾기</a>&nbsp;&nbsp;|&nbsp;
         <a id="login_a" href="pwd_find.jsp">비밀번호 찾기</a>&nbsp;&nbsp;|&nbsp;
         <a id="login_a" href="mem_join.jsp">회원가입 </a>
        <td>
       </tr>
   	  </table>
     </form>
     </div><!-- 메인 --> 
     </div><!-- contents -->
     
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