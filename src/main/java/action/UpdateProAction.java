package action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//추가
import  board.boardDAO;
import  board.boardDTO;

public class UpdateProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		//추가(수정된 게시물로 페이지를 이동시키기 위해
		String pageNum=request.getParameter("pageNum");
		int post_type=Integer.parseInt(request.getParameter("post_type"));
		System.out.println("UpdateProAction에서의 pageNum="+pageNum);
        boardDTO article=new boardDTO();
	
       

		
		
		article.setPost_num(Integer.parseInt(request.getParameter("post_num")));
		article.setPost_type(Integer.parseInt(request.getParameter("post_type")));
		article.setItem_num(Integer.parseInt(request.getParameter("item_num")));
		article.setPost_view(Integer.parseInt(request.getParameter("post_view")));
		article.setCount(Integer.parseInt(request.getParameter("count")));
		article.setMem_id(request.getParameter("Mem_id"));
		article.setAdmin_id(request.getParameter("admin_id"));
		article.setPost_title(request.getParameter("post_title"));
		article.setPost_cnt(request.getParameter("post_cnt"));
		article.setItem_img(request.getParameter("item_img"));
		article.setRated(request.getParameter("rated"));
		article.setPost_date(Timestamp.valueOf(request.getParameter("post_date"))); 
		article.setRef(Integer.parseInt(request.getParameter("ref")));
		article.setRe_step(Integer.parseInt(request.getParameter("re_step")));
		article.setReply_num(Integer.parseInt(request.getParameter("reply_num")));
		article.setReply_cnt(request.getParameter("reply_cnt"));
		article.setReply_date(Timestamp.valueOf(request.getParameter("reply_date")));
	    

		boardDAO dbPro=new boardDAO();
		int check=dbPro.updateArticle(article);
		
	
		//2개의 공유값이 필요
		request.setAttribute("pageNum",pageNum);
		request.setAttribute("check", check);
		request.setAttribute("post_type", post_type);
	
		return "/updatePro.jsp";
	}

}
