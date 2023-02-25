
	/*1.슬라이드부분 */
	$(document).ready(
			function() {
				$('.m_slide ul > li:last-child').insertBefore(
						$(".m_slide ul > li:first-child"));
				$('.m_slide ul').css('margin-left', '-100%');

				function moveLeft() {
					console.log("3초마다 함수 호출하기");
					$('.m_slide ul').animate(
							{
								'margin-left' : '-200%'
							},
							function() {
								$('.m_slide ul > li:first-child').insertAfter(
										$(".m_slide ul > li:last-child"));

								$('.m_slide ul').css('margin-left', '-100%');
							});
				}

				function moveRight() {
					$('.m_slide ul').animate(
							{
								'margin-left' : '0px'
							},
							function() {
								$('.m_slide ul > li:last-child').insertBefore(
										$(".m_slide ul > li:first-child"));

								$('.m_slide ul').css('margin-left', '-100%');
							});
				}
				var Timer = setInterval(moveLeft, 3000);

				function initSlider() {
					var btnPrev = document.getElementById('btnPrev');
					var btnNext = document.getElementById('btnNext');

					function prevSlide() {
						clearInterval(Timer);
						Timer = setInterval(moveLeft, 3000);
						moveRight();
					}

					function nextSlide() {
						clearInterval(Timer);
						Timer = setInterval(moveLeft, 3000);
						moveLeft();
					}

					btnPrev.addEventListener('click', prevSlide);
					btnNext.addEventListener('click', nextSlide);
				}
				initSlider();
		});