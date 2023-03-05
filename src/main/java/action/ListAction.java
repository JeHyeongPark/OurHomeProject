package action;

import controller.PostTypeController;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Hashtable;
//import lys.board.*;//BoardDAO
//List
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.boardDAO;

//요청명령어에 해당되는 명령어 처리클래스=액션클래스=컨트롤러클래스
public class ListAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		//1./list.do에서 search,searchtext도 매개변수로 처리
		String pageNum=request.getParameter("pageNum");
		//추가
		String search=request.getParameter("search");
		String searchtext=request.getParameter("searchtext");
		int post_type=Integer.parseInt(request.getParameter("post_type"));
		
		System.out.println("ListAction의 매개변수 확인");
		System.out.println("pageNum="+pageNum+",search="+search+",serachtext="+searchtext);

		int count=0;
		List articleList=null;
		
		boardDAO dbPro=new boardDAO();
		count=dbPro.getArticleSearchCount(search,searchtext,post_type);
		System.out.println("ListAction의 현재레코드 수count="+count);
		
		//1.화면에 출력할 페이지번호, 2.출력할 레코드갯수
		Hashtable<String,Integer>pgList=
				dbPro.pageList(pageNum,count);
		if(count > 0) {
			System.out.println(pgList.get("startRow")+","+pgList.get("endRow"));
			articleList=dbPro.getBoardArticles(pgList.get("startRow"), pgList.get("endRow"), search, searchtext, post_type);
			System.out.println("ListAction의 articleList="+articleList);
		}else { 
			articleList=Collections.EMPTY_LIST; // 비어있는 List객체반환
		}
	   //2.처리한 결과를 공유(서버메모리에 저장)->이동할 페이지에 공유해서 사용(request)
		request.setAttribute("search", search);//검색분야
		request.setAttribute("searchtext",searchtext);
		request.setAttribute("pgList", pgList);
		request.setAttribute("articleList", articleList);
		request.setAttribute("post_type", post_type);

		
		//3.공유해서 이동할 수있도록 페이지를 지정
		return "controller/PostTypeController.java";//컨트롤러가 이동시키면서 공유시켜준다.
	}

}




