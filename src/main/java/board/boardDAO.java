package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

public class boardDAO {

	private DBConnectionMgr pool=null; //DBConnectionMgr 접근
	private Connection con=null;
	private PreparedStatement pstmt=null;//sql 실행
	private ResultSet rs=null; //select
	private String sql=""; //실행시킬 sql문 저장
	
	
	
	//생성자 통해 연결
	public boardDAO() {
		try {
			pool=DBConnectionMgr.getInstance();
		}catch(Exception e) {
			System.out.println("DB접속오류="+e);
		}
	}
	
	//1.페이징 처리 전체 레코드 수 구하기(10개씩 끊어오기)
	public int getArticleCount(int post_type) {
		int x=0; //총 레코드 갯수
		try {
			con=pool.getConnection(); //이미 만들어진 연결객체(Connection)를 얻어오는 것
			System.out.println("con="+con); //DBConnection에서 확인
			sql="select count(*) from post where post_type=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,  post_type);
			rs=pstmt.executeQuery();
			  if(rs.next()) {
				  x=rs.getInt(1);
			  }
		}catch(Exception e) {
			System.out.println("getArticleCount()에러="+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return x;
	}
	public int getArticleCount() {//회원리스트getMemberCount()->MemberDAO
		int x=0;
		try {
			con=pool.getConnection();
			System.out.println("con=>"+con);//DBConnectionMgr
			sql="select count(*) from board";//select count(*) from member;
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {//보여주는 결과가 있다면
				x=rs.getInt(1);//변수명=rs.get자료형(필드명 또는 인덱스명) 
										//--> count(*)은 필드명이 아니기 때문에 index 번호로 불러와야 함.
			}
		}catch(Exception e) {
			System.out.println("getArticleCount() 에러발생=>"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return x;
	}
	
	//검색어의 총레코드수를 구하는 메소드(검색분야,검색어)
	public int getArticleSearchCount(String search,String searchtext,int post_type) {//회원리스트getMemberSearchCount()->MemberDAO
		int x=0;
		try {
			con=pool.getConnection();
			System.out.println("con=>"+con);//DBConnectionMgr
			//------------------------------------------
			if(search==null || search=="") {//검색분야 선택X
				sql="select count(*) from post where post_type=?";//select count(*) from member;
			}else { //검색분야(제목,작성자,제목+본문)
				if(search.equals("post_title_post_cnt")) { //제목+본문
					sql="select count(*) from post where post_title like '%"+
							searchtext+"%' or post_cnt like '%"+searchtext+"%' and post_type=?";
				}else {//제목,작성자->필드명->매개변수를 이용해서 sql통합
					sql="select count(*) from post where "+search+" like'%"+
							searchtext+"%'";
				}
				System.out.println("getArticleSearchCount 검색sql="+sql);
			}
			//------------------------------------------
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, post_type);
			rs=pstmt.executeQuery();
			if(rs.next()) {//보여주는 결과가 있다면
				x=rs.getInt(1);//변수명=rs.get자료형(필드명 또는 인덱스명) 
										//--> count(*)은 필드명이 아니기 때문에 index 번호로 불러와야 함.
			}
		}catch(Exception e) {
			System.out.println("getArticleSearchCount() 에러발생=>"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return x;
	}
	
	
	//2. 글목록 답글
	public List getArticles(int start, int end, int post_type) {
		List articleList=null;
		try {
			con=pool.getConnection();
			sql="select * from post where post_type='?' order by ref desc, re_step limit ?,?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,  post_type);
			pstmt.setInt(2, start);
			pstmt.setInt(3,  end);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				articleList=new ArrayList(end);
				do {
					boardDTO article=new boardDTO();
					article=makeArticleFromResult();
					articleList.add(article);//생략하면 데이터가 저장되지 않음
				}while(rs.next());
			}
		}catch(Exception e) {
			System.out.println("getArticle()에러="+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return articleList;
	}
	
	
	
	//(3)페이징 처리 계산을 정리해주는 메소드(ListAction에서 소스가져옴)
	//Hashtable ->페이징 처리에 관련된 처리결과를 저장할 변수들을 하나의
	//				객체에 담아서 변환(key,value)
	public Hashtable pageList(String pageNum,int count) {

// 0.페이징 처리 결과를 저장할 Hashtable객체선언
		Hashtable<String,Integer> pgList=new Hashtable<String,Integer>();
// 1.ListAction에서 소스코드를 복사,편집
		
	    int pageSize=10;//numPerPage->페이지당 보여주는 게시물수(=레코드수) 10
	    int blockSize=5;//pagePerBlock->블럭당 보여주는 페이지수 10
	    

	 //게시판을 맨 처음 실행시키면 무조건 1페이지 부터  출력->가장 최근의 글이 나오기때문에 
	 
	 if(pageNum==null){
		 pageNum="1";//default(무조건 1페이지는 선택하지 않아도 보여줘야 되기때문에)
	 }
	 int currentPage=Integer.parseInt(pageNum);//"1"->1 (=nowPage(현재페이지))
	 //                    (1-1)*10+1=1,(2-1)*10+1=11,(3-1)*10+1=21
	 int startRow=(currentPage-1)*pageSize+1;//시작 레코드 번호
	 int endRow=currentPage*pageSize;//1*10=10,2*10=20,3*10=30(마지막 레코드번호)
	 int number=0;//beginPerPage->페이지별로  시작하는 맨 처음에 나오는 게시물번호
	 
	 System.out.println("현재 레코드수(count)=>"+count);
	 
	  number=count-(currentPage-1)*pageSize;
	  System.out.println("페이지별 number=>"+number);
	
	//------------모델1에서의 list.jsp에서 소스코드 복사,편집---------------
	   //                    122/10=12.2+1.0=13.2=13,(122%10)=1
	   int pageCount=count/pageSize+(count%pageSize==0?0:1);
	   //2.시작페이지
	   int startPage=0;
	   if(currentPage%blockSize!=0){//1~9,11~19,21~29
	      startPage=currentPage/blockSize*blockSize+1;
	   }else{//10%10=0,(10,20,30,40~)
			             //((10/10)-1)*10+1=1, 20=>11
		  startPage=((currentPage/blockSize)-1)*blockSize+1; 
	   }
	   //종료페이지
	   int endPage=startPage+blockSize-1;//1+10-1=10,11+10-1=20
	   System.out.println
	    ("startPage=>"+startPage+",endPage="+endPage);
	   //블럭별로 구분해서 링크걸어서 출력
	   //     11     >          10      //마지막페이지=총페이지수
	   if(endPage > pageCount)  endPage=pageCount;
	   //페이징 처리에 대한 계산결과 Hashtable에 저장->ListAction전달
	   //메모리에 저장 공유 list.jsp에서 불러 사용
	   pgList.put("pageSize",pageSize); //pgList.get(키명)
	   pgList.put("blockSize",blockSize);
	   pgList.put("currentPage",currentPage);
	   pgList.put("startRow",startRow);
	   pgList.put("endRow",endRow);
	   pgList.put("count",count);
	   pgList.put("number",number);
	   pgList.put("startPage",startPage);
	   pgList.put("endPage",endPage);
	   pgList.put("pageCount",pageCount);
	  
	   
	   return pgList;
	}	
	
	//게시판에 글쓰기 및 답글쓰기
	public void insertArticle (boardDTO article) {
		//신규글인지 답변글인지 확인
		int post_num=article.getPost_num();
		int post_type=article.getPost_type();
		int ref=article.getRef();
		int re_step=article.getRe_step();
	
		
		int n=0; //데이터 저장을 위한 게시물 번호
		System.out.println("insertArticle 메서드 내부 post_num="+post_num+",post_type="+post_type);
		System.out.println("ref="+ref+", re_step="+re_step);
		
		try {
			con=pool.getConnection();
			sql="select max(num) from post and post_type=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,  post_type);
			rs=pstmt.executeQuery();
		
			//신규글 일때
			if (rs.next()) { //기존 데이터가 있으면
				n=rs.getInt(1)+1;
			}else { //데이터가 없는 경우:0
				n=1;
			}
			//답변글 일때
			if(post_num!=0) {
				sql="update post set re_step=re_step+1 where ref=? and post_type=?";
				//그룹번호가 같은 사람에게 step을 1 증가시킴(step최대1)
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, ref);
			pstmt.setInt(2,  post_type);
			int update=pstmt.executeUpdate();
			System.out.println("댓글 업로드 유무(update)="+update);
			
			//답변글
			re_step=re_step+1;
		}else {//신규글이라면
			ref=n;
			re_step=0;
		}
	     sql="insert into post(post_num, post_type, item_num, post_view, count,";
	     sql+="mem_id, admin_id, post_title, post_cnt, item_img, rated, post_date,";
	     sql+="ref, re_step, reply_num, reply_cnt, reply_date,";
	     sql+="values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	     pstmt=con.prepareStatement(sql);
	     pstmt.setInt(1, article.getPost_num());
	     pstmt.setInt(2, article.getPost_type());
	     pstmt.setInt(3, article.getItem_num());
	     pstmt.setInt(4, article.getPost_view());
	     pstmt.setInt(5, article.getCount());
	     pstmt.setString(6, article.getMem_id());
	     pstmt.setString(7, article.getAdmin_id());
	     pstmt.setString(8, article.getPost_title());
	     pstmt.setString(9, article.getPost_cnt());
	     pstmt.setString(10, article.getItem_img());
	     pstmt.setString(11, article.getRated());
	     pstmt.setTimestamp(12, article.getPost_date());
	     pstmt.setInt(13, article.getRef());
	     pstmt.setInt(14, article.getRe_step());
	     pstmt.setInt(15, article.getReply_num());
	     pstmt.setString(16, article.getReply_cnt());
	     pstmt.setTimestamp(17, article.getReply_date());
	     
	     
	     int insert=pstmt.executeUpdate();
	     System.out.println("게시판글쓰기 성공유무="+insert);
	    
	}catch(Exception e) {
		System.out.println("insertArticle()에러="+e);
	}finally {
		pool.freeConnection(con, pstmt, rs);
	}
  }
	
	//글 상세보기
	public boardDTO getArticle (int post_num, int post_type) {
		boardDTO article=null;
		try {
			con=pool.getConnection();
			sql="update post set post_view=post_view+1 where post_num=? and post_type";//조회수 증가
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, post_num);
			pstmt.setInt(2,  post_type);
			int update=pstmt.executeUpdate();
			System.out.println("조회수증가(update)="+update);
			
			sql="select * from post where post_num=? and post_type";//글 찾기
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, post_num);
			pstmt.setInt(2,  post_type);
			rs=pstmt.executeQuery();
			 if(rs.next()) {
				 article=makeArticleFromResult();
			 }
		}catch(Exception e) {
			System.out.println("getArticle()에러="+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
			
		}
		return article;
	}
	
	//중복된 코드를 담을수있는 메소드
	private boardDTO makeArticleFromResult() throws Exception{
		boardDTO article=new boardDTO();
		
		article.setPost_num(rs.getInt("post_num"));
		article.setPost_type(rs.getInt("post_type"));
		article.setItem_num(rs.getInt("item_num"));
		article.setPost_view(rs.getInt("post_view"));
		article.setCount(rs.getInt("count"));
		article.setMem_id(rs.getString("mem_id"));
		article.setAdmin_id(rs.getString("admin_id"));
		article.setPost_title(rs.getString("post_title"));
		article.setPost_cnt(rs.getString("post_cnt"));
		article.setItem_img(rs.getString("item_img"));
		article.setRated(rs.getString("rated"));
		article.setPost_date(rs.getTimestamp("post_date"));
		article.setRef(rs.getInt("ref"));
		article.setRe_step(rs.getInt("re_step"));
		article.setReply_num(rs.getInt("reply_num"));
		article.setReply_cnt(rs.getString("reply_cnt"));
		article.setReply_date(rs.getTimestamp("reply_date"));
		
		
		return article;
	}
	//글 수정하기
	public boardDTO updateGetArticle(int post_num, int post_type) {
		boardDTO article=null;
		try {
			con=pool.getConnection();
			sql="select * from post where post_num=? and post_type=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,  post_num);
			pstmt.setInt(2,  post_type);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				article=makeArticleFromResult();
			}
		}catch(Exception e) {
			System.out.println("updateGetArticle()에러="+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return article;
	}
	
	

	//수정할 메서드 작성
	public int updateArticle (boardDTO article) {
		int x=-1; //게시글 성공유무체크
		try {
		   con=pool.getConnection();
		   sql="update post set post_title=?, post_cnt=?, item_img=?, rated=?, post_num=? where post_type=?";
		   pstmt=con.prepareStatement(sql);
		   pstmt.setString(1, article.getPost_title());
		   pstmt.setString(2, article.getPost_cnt());
		   pstmt.setString(3, article.getItem_img());
		   pstmt.setString(4, article.getRated());
		   pstmt.setInt(5, article.getPost_num());
		   pstmt.setInt(6,  article.getPost_type());
		   int update=pstmt.executeUpdate();
		   System.out.println("게시판의 글수정 성공확인(update)="+update);
		   x=1;
		}catch(Exception e) {
			System.out.println("updateArticle() 메소드 에러="+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return x;
	}
	
	
	//글 삭제하기
	public int deleteArticle(int post_num, int post_type) {
		int x=-1;
		try {
			con=pool.getConnection();
			sql="delete from post where post_num=? and post_type=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,  post_num);
			pstmt.setInt(2,  post_type);
			int delete=pstmt.executeUpdate();
			
			System.out.println("게시판 글 삭제 성광확인="+delete);
			
		}catch(Exception e) {
			System.out.println("deleteArticle()에러확인="+e);
		}finally {
			pool.freeConnection(con,pstmt);
		}
		return x;
	}
	
	//글 검색하기
	   public List getBoardArticles(int start,int end, String search, String searchtext, int post_type) {
	     List articleList=null; //ArrayList<BoardDTO> articleList=null (o)
	     try {
	      con=pool.getConnection();
	      //------------------------------------------------------------------------------
	      if(search==null||search=="") { //검색분야
	        sql="select * from post where post_type=? order by ref desc, re_step limit ?,?";//?,? => A and B //그룹번호=게시물번호역할도 하기 떄문에 가능
	      }else { //제목+본문
	      if(search.equals("post_title_post_cnt")) { //제목+본문
	        sql="select * from post where post_title like '%"+searchtext+"%' or post_cnt like '%"+
	              searchtext+"%' and post_type=? order by ref desc,re_step limit ?,?";
	      }else { //제목,작성자-> 필드명 -> 매개변수를 이용해서 하나의 sql통합
	        sql="select * from post where "+search+" like '%"+
	            searchtext+"%' and post_type=? order by ref desc,re_step limit ?,?";
	      }
	     }
	       System.out.println("getBoardArticles()의 sql="+sql);
	         
	       pstmt=con.prepareStatement(sql);
	       pstmt.setInt(1, post_type);
	       pstmt.setInt(2, start-1);//mysql은 레코드 번호 순번이 내부적으로 0부터 시작하기 때문에
	       pstmt.setInt(3, end); //몇 개까지 불러와서 담을 건가? default(10)
	       rs=pstmt.executeQuery();
	         //기존에 데이터가 있으면 누적해서 쌓아 올려야한다.
	       if(rs.next()) {//화면에 보여줄 데이터가 있으면
	         articleList=new ArrayList(end); //end갯수만큼 공간을 생성해라
	         do {
	          boardDTO article=new boardDTO(); //회원리스트면 MemberDTO
	          article=makeArticleFromResult();
	          //필드별로 setter메서드를 통해 각각 넣어준다. like 분리수거
	          //추가
	          articleList.add(article);//생략하면 데이터 저장X => for문X(Null)
	         }while(rs.next());//더 있으면 계속
	       }
	      }catch(Exception e) {
	         System.out.println("getArticles() 에러발생=>"+e);
	      }finally {
	         pool.freeConnection(con, pstmt, rs);
	      }
	      return articleList;
	}
	   
	
	
	
}

