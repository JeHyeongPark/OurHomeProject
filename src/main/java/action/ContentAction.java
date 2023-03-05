package action;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.boardDAO;
import board.boardDTO;

public class ContentAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		//1.content.jsp에서 처리한 자바코드
		//글 상세보기=> 게시판(상품의 정보를 자세히(SangDetail.jsp))		
		//list.jsp에서 링크->num,pageNum
		int post_num=Integer.parseInt(request.getParameter("post_num"));
		int post_type=Integer.parseInt(request.getParameter("post_type"));

		String pageNum=request.getParameter("pageNum");
		System.out.println("ContentAction의 pageNum="+pageNum+",num="+post_num);
		
		boardDAO dbPro=new boardDAO();
		boardDTO article=dbPro.getArticle(post_num,post_type);
		//링크문자열의 길이를 줄이기 위해서
		int ref=article.getRef();
		int re_step=article.getRe_step();
		System.out.println("content.do의 매개변수 확인");
		System.out.println("ref=>"+ref+"\n re_step=>"+re_step);
		
		//2.처리한 결과를 서버 메모리에 저장
		request.setAttribute("post_num",post_num);
		request.setAttribute("post_type",post_type);
		request.setAttribute("pageNum",pageNum);
		request.setAttribute("article",article);
		
		
		return "/postView.jsp";
	}

}
