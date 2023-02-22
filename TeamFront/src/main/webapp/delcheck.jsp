<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="join.js?ver=1"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
 table{
 	margin-top:20px;
 }
 button{
 	margin-top:30px;
 }
 tr,td{
 	height:50px;
 }
</style>
<title>::회원 탈퇴 확인::</title>
</head>
<body>
<form name="mem_del" method="post" action="mem_del.html">
  <table align="center">
   <tr>  
    <td colspan="2">
     탈퇴를 원하시면 비밀번호를 입력해주세요. <p>
    </td>
   </tr>
   <tr>
    <td>비밀번호</td>
    <td><input type="password" name="pwdch">
   </tr><p><p>
   <tr align="center">
    <td colspan="2">
      <button id="mem_del" onclick="memdel()">탈퇴하기</button>
      <button id=cancel onclick="close()">취소</button>
    </td>
   </tr>
  </table>
 </form>
</body>
</html>