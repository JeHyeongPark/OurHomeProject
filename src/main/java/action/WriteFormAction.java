package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteFormAction implements CommandAction {

   @Override
   public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
      // TODO Auto-generated method stub
      
     //1. writeForm.jsp에 수행했던 자바코드
     //list.jsp(글쓰기) : 신규글
     int post_num=0, post_type=0, ref=1, re_step=0;
     //content.jsp(글상세보기) : 답변글
     if(request.getParameter("post_num")!=null) { //0과 음수는 아님 : 양수 1이상
      post_num=Integer.parseInt(request.getParameter("post_num"));
      post_type=Integer.parseInt(request.getParameter("post_type"));
      ref=Integer.parseInt(request.getParameter("ref"));
      re_step=Integer.parseInt(request.getParameter("re_step"));
      System.out.println("content.jsp에서 넘어온 매개변수 확인");
      System.out.println("post_num"+post_num+", post_type"+post_type+", ref="+ref+", re_step"+re_step);
     }
     
     //2. 실행결과 -> 서버의 메모리에 저장 -> 이동
     request.setAttribute("post_num",post_num);//${num}
     request.setAttribute("post_type",post_type);
     request.setAttribute("ref",ref);
     request.setAttribute("re_step",re_step);

      return "/writeForm.jsp"; //경로/파일명 틀릴 시 404 에러
   }

}