package action;

//DB에 관련된 날짜, 시간
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//추가
import board.boardDAO;
import board.boardDTO;

public class WriteProAction implements CommandAction {

   @Override
   public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
      // TODO Auto-generated method stub
      
     request.setCharacterEncoding("utf-8");
     boardDTO article=new boardDTO();
     
     article.setPost_num(Integer.parseInt(request.getParameter("post_num")));
     article.setPost_type(Integer.parseInt(request.getParameter("post_type")));
     article.setItem_num(Integer.parseInt(request.getParameter("item_num")));
     article.setPost_view(Integer.parseInt(request.getParameter("post_view")));
     article.setCount(Integer.parseInt(request.getParameter("count")));
     article.setMem_id(request.getParameter("mem_id"));
     article.setAdmin_id(request.getParameter("admin_id"));
     article.setPost_title(request.getParameter("post_title"));
     article.setPost_cnt(request.getParameter("post_cnt")); //글내용
     article.setItem_img(request.getParameter("item_img")); 
     article.setRated(request.getParameter("rated")); 
     article.setPost_date(Timestamp.valueOf(request.getParameter("post_date")));
     //article.setPost_date(new Timestamp(System.currentTimeMillis()));
     
     article.setRef(Integer.parseInt(request.getParameter("ref"))); 
     article.setRe_step(Integer.parseInt(request.getParameter("Re_step"))); 
     article.setReply_num(Integer.parseInt(request.getParameter("reply_num"))); 
     article.setReply_cnt(request.getParameter("reply_cnt")); 
     article.setReply_date(Timestamp.valueOf(request.getParameter("reply_date")));

     
     
     //DTO저장 끝
     boardDAO dbPro=new boardDAO();
     dbPro.insertArticle(article);
      
     //response.sendRedirect("http://~/JspBoard2/list.do")
     return "/writePro.jsp";
   }

}