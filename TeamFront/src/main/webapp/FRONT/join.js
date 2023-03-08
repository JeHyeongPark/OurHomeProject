
//회원가입 버튼 클릭 시 
function joinpop(){
	var url="join.html"
	var name=""
	var option="width=400 height=250 top=70 left=500"
	window.open(url, name, option)	
}

function close(){
   window.open.close();
    window.location.href = "login.jsp";
}
 
//회원정보 수정
function update(){  
	alert ('회원정보 수정이 완료되었습니다.');
	 window.location.href = "login.jsp";
}     
 
//회원 탈퇴하기 클릭 시
function delpop(){
	var url="delcheck.html"
	var name=""
	var option="width=500 height=400 top=70 left=500"
	window.open(url, name, option);
	windo.opener.close();
}

//비밀번호 입력 후 
function memdel(){
	alert ('회원 탈퇴가 완료되었습니다.');
	 window.location.href = "login.jsp";
}
  
//관리자가 회원 탈퇴하기 클릭 시
function anmin_delpop(){
	var url="admin_delcheck.html"
	var name=""
	var option="width=500 height=200 top=70 left=500"
	window.open(url, name, option);
	windo.opener.close();
}