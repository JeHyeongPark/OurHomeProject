package action;

//기능은 다르지만 요청을 받아서 처리해주는 메서드를 공통의 메서드로
//작성하기위해서 만든 인터페이스

import javax.servlet.http.*;//HttpServletRequest,~Response

public interface CommandAction {//ListAction,Write~

//이동할 페이지의 경로와 페이지명이 필요=>반환값(String)->스프링(ModelAndView)
	public String requestPro(HttpServletRequest request,
			                           HttpServletResponse response)
	                                  throws Throwable;
}
