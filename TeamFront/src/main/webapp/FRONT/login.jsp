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
 <div id="leftbar"> <!-- 사이드바 -->
  <div class=""><a href="#">쇼핑몰</a></div>
 </div>  
        
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
     
   	<!-- footer -->
    <footer>
      <div class="footer">
         상호명 | 대표자 | 전화번호 | 주소 서울특별시 강남구<p>
            사업자번호 xxx-xx-xxxxx<p>
             이메일 | 교환,반품 주소지<p>
      </div>
   </footer>
     
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   <script src="/Zspace/js/bootstrap.min.js"></script>

</body>
</html>