<%@page contentType="text/html;charset=UTF-8"
		pageEncoding="UTF-8"%>
<!--  
2023.02.25 작성자 : 김인아

-->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>공간의 집 메인페이지</title>

<!-- 부트스트랩 -->
<link href="../css/bootstrap.min.css" rel="stylesheet">


<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="./js/slidekim.js"></script>


<!-- <link type="text/css" rel="stylesheet" href="./css/kim.css">-->
<link type="text/css" rel="stylesheet" href="./css/side.css">
<link type="text/css" rel="stylesheet" href="./css/reset.css">
<link type="text/css" rel="stylesheet" href="./css/body.css"> 

<script>
</script>
<style>
</style>
</head>

<body>

	<div id="container">
		<div class="sidebar">
			<!-- 사이드바 내용시작부분 -->
			<div class="logo">
				<a href="mainpage.html"><img src="../poto/rogo.png"></a>
			</div>

			<div class="menu_wrap">
				<table class="menu_group" ><tr>				
					<th align="center">
						<a href="#.login">로그인</a> 
						<a href="#">회원가입</a> 
						<p>
						<a href="#">장바구니</a>
						<a href="#">찜</a> 
						<a href="#">마이페이지</a>
					</th>	
				</tr></table>		
		
				
				<div class="side_list">
				<!-- 좌측 -->
				<div class=" side_wrap col-md-6 ">
					<div class="menu_cell">
						<label for="ch1"><a href="#.DECORATION">DECORATION</a></label>
						<ul class="sub_menu">
							<li><a href="#">Lamp</a></li>
							<li><a href="#">Frame</a></li>
							<li><a href="#">Candle</a></li>
						</ul>
					</div>

					<div class="menu_cell">
						<label for="ch2"><a href="#.PLANTS">PLANTS</a></label>
						<ul class="sub_menu">
							<li><a href="#">Flower</a></li>
							<li><a href="#">Furniture</a></li>
							<li><a href="#">Chair</a></li>
							<li><a href="#">Table</a></li>
							<li><a href="#">Dresser</a></li>
						</ul>
					</div>

					<div class="menu_cell">
						<label for="ch3"><a href="#.FABRIC">FABRIC</a></label>
						<ul class="sub_menu">
							<li><a href="#">rug</a></li>
							<li><a href="#">mat</a></li>
							<li><a href="#">curtain/blind</a></li>
						</ul>
					</div>

					<div class="menu_cell">
						<label for="ch4"><a href="#.KITCHEN">KITCHEN</a></label>
						<ul class="sub_menu">
							<li><a href="#">Pantry</a></li>
							<li><a href="#">Cooking</a></li>
							<li><a href="#">dishes</a></li>
						</ul>
					</div>
				</div>

				<!-- 우측 -->
				<div class="side_wrap  col-md-6 ">
					<div class="menu_cell">
						<label for="ch6"><a href="#">NOTICE</a></label>						
					</div>
					<div class="menu_cell">
						<label for="ch7"><a href="#">Q&A</a></label>

					</div>
						<div class="menu_cell">
							<label for="ch8"><a href="#">REVIEW</a></label>
				
						</div>
						<div class="menu_cell">
						<label for="ch9"><a href="#">CANCEL</a></label>

					</div>
				</div><!-- <div class="side_wrap  col-md-6 "> -->
				
				
				</div><!--<div class="side_list">  -->
				<div class="slid_footer">
					TEL 02-xxxx-xxxx
					<p>
					<p>영업시간 AM10:00 - PM 17:00
					<p>공휴일.토.일 휴무
					BANK INFO<p>
					농협 301-0303-7779-81<p>
					신한 140-012-970030<p>
					국민 093401-04-251919<p>
					하나 281-910025-99804<p>
					(주)톰어패럴<p>
				</div>
			
			</div><!--menu_wrap  -->
			
		</div><!-- sidebar -->
		<!-- ========본문시작===========-->
		<div class="conent">
		  <div class="slideshow-container">
			<article class="m_slide ">
				<ul><!-- 1500*644 -->					
					<li><a href="#" title=""><img src="../poto/cont_mt/vis1.jpg" alt=""></a></li>
					<li><a href="#" title=""><img src="../poto/cont_mt/vis4.jpg" alt=""></a></li>
					<li><a href="#" title=""><img src="../poto/cont_mt/vis3.jpg" alt=""></a></li>
					<li><a href="#" title=""><img src="../poto/cont_mt/vis2.jpg" alt=""></a></li>
				</ul>
				<!-- 좌우버튼 클릭시 해당방향이동  -->
				<div class="slide-btns"> <!--  버튼 큰범위-->				
					<div class="btn_wrap">
						<button id="btnPrev">
							<i class="fas fa-angle-left"></i>
						</button>
						<button id="btnNext">
							<i class="fas fa-angle-right"></i>
						</button>
					</div>
				</div>				
			  </article>
		  </div> <!-- slideshow-container-->
		


			<!-- 제품목록 -->
			<div class="conent_list " align="center">
				<div class="list_imgs">

			
						<div class=" col-md-4 warp">
							<div class="text">
								편안한의자</p>가격:135000</p>추천
							</div>
							<img src="../poto/의자/chair01_3.jpg" class="img-overlay img " width="100%">
						</div>
						
						<div class="col-md-4 warp">
							<div class="text">
								편안한의자</p>가격:270000</p>추천
							</div>
							<img src="../poto/의자/chair04_3.jpg" class="img" width="100%">
						</div>
						
						<div class="col-md-4 warp">
							<div class="text">
								파란의자</p>가격:850000</p>
							</div>
							<img src="../poto/의자/chair01_1.jpg" class="img" width="100%">

						</div>					
				
						<div class=" col-md-4 warp">
							<div class="text">
								편안한의자</p>가격:135000</p>추천
							</div>
							<img src="../poto/의자/chair01_4.jpg" class="img" width="100%">
						</div>
						
						<div class="col-md-4 warp">
							<div class="text">
								편안한의자</p>가격:270000</p>추천
							</div>
							<img src="../poto/의자/chair03_3.jpg" class="img" width="100%">
						</div>
						
						<div class="col-md-4 warp">
							<div class="text">
								파란의자</p>가격:850000</p>
							</div>
							<img src="../poto/의자/chair02_1.jpg" class="img" width="100%">

						</div>					


						<div class=" col-md-4 warp">
							<div class="text">
								편안한의자</p>가격:135000</p>추천
							</div>
							<img src="../poto/의자/chair05_3.jpg" class="img" width="100%">
						</div>
						
						<div class="col-md-4 warp">
							<div class="text">
								편안한의자</p>가격:270000</p>추천
							</div>
							<img src="../poto/의자/chair02_3.jpg" class="img" width="100%">
						</div>
						
						<div class="col-md-4 warp">
							<div class="text">
								파란의자</p>가격:850000</p>
							</div>
							<img src="../poto/의자/chair03_1.jpg" class="img" width="100%">
						</div>					
					</div>
			</div>
		</div>

			<!-- class="container-fluid navbar-bottom" 이렇게 넣어도 되는거 같음 양옆여백이조금있음-->
			<footer class="ftk">
				<div class="footer">
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
		</div>
</body>
</html>