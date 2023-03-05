package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//추가
import board.boardDAO;
import board.boardDTO;

public class DeleteProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		//추가(삭제된 게시물로 페이지를 이동시키기 위해
		String pageNum=request.getParameter("pageNum");
	
		int post_num=Integer.parseInt(request.getParameter("post_num"));
		int post_type=Integer.parseInt(request.getParameter("post_type"));
		System.out.println("DeleteProAction에서의 pageNum="+pageNum+",num="+post_num+",post_type="+post_type);
       
		boardDAO dbPro=new boardDAO();
		int check=dbPro.deleteArticle(post_num,post_type);
	

	
		//2개의 공유값이 필요
		request.setAttribute("pageNum",pageNum);
		request.setAttribute("check", check);
		return "/deletePro.jsp";
	}

}
