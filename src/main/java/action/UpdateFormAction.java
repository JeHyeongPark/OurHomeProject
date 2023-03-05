package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.boardDAO;
import board.boardDTO;

public class UpdateFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
	
		
		//1.
		//content.jsp=>글수정버튼 클릭=>updateForm.jsp?num=3&page=1
		int post_num = Integer.parseInt(request.getParameter("post_num"));
		String pageNum = request.getParameter("pageNum");
		int post_type=Integer.parseInt(request.getParameter("post_type"));
		System.out.println("updateFormAction.jsp의 post_num=>"+post_num+", pageNum=>"+pageNum+", post_type=>"+post_type);
		
		boardDAO bdPro = new boardDAO(); //메서드 호출목적
		boardDTO article = bdPro.getArticle(post_num,post_type);//조회수 증가x
		
		
		//2.서버 메모리 저장
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("article", article);
		request.setAttribute("post_type", post_type);
		
		
		
		return "/updateForm.jsp";
	}

}
