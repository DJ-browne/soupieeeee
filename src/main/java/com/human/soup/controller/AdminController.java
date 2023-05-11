package com.human.soup.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonAlias;
import com.human.soup.dao.AdminDao;
import com.human.soup.dao.AdminDaoImpl;
import com.human.soup.domain.*;
import com.human.soup.service.AdminService;
import com.human.soup.service.AdminServiceImpl;

// java를 효율적이로 코딩하기 위해 필요한 구조가 mvc 디자인 패턴
// M odel : 자바를 이용해서 db에 연결하는 과정에 대한 파일들, 로직
// V iew : jsp, html, cssm js등 화면에 출력하고자 하는 파일, 페이지
// C ontroller : 화면과 로직에 대해서 연결해주는 파일, 연결점
@Controller
public class AdminController {
	
	// @Autowired : 스프링의 빈 컨테이너 안에 있는 객체를 탐색해주는 키워드
	// 빈 컨테이너 : servlet-context.xml 에서 만든 객체들에서 UserDao객체명을 가진 bean을 가져와서 쓴다
	@Autowired
	private AdminService adminService;
	// 우리가 매번 new를 통한 인스턴스 생성 혹은 싱글톤패턴을 만들 필요가 없어짐
	
	// controller : 화면과 로직에 대해서 연결해주는 파일
	// getBookList : 화면에서 요청할 이름, 키워드, 호출이름
	// return : 요청이 들어오면 보여줄 파일, 화면, 페이지
	
	// 로직없이 단순 화면 변경을 담당하는 맵핑 메소드
	@RequestMapping("/{url}")
	public String viewPage(@PathVariable String url) {

		return url;
	}

	
	// 화면에서 요청할 이름은 getBookList 이다
	@RequestMapping("getBookList")
	public String getBookList(Model model, AdminVO vo) {

		// 1. 검색어들을 위한 변수를 만들어도되고
		// 2. vo라는 변수를 이용해도되고
		
		// 1. 사용자가 검색어를 아예 안썼을때 >> ""
		// 2. 사용자가 검색어를 올바르게 썼을때 >> 
		// 3. 페이지에 처음 들어왔을때 >> null
		
		
		if (vo.getBookSearch() == null && vo.getTopSelect() == null) {
			// 처음 로딩했을때 db갈필요없음
			return "searchBook";
		} else {
			
			// 필요하다면 model에 대해 구현 (로직, java를 이용해서 db에 연결하는 과정)
			// Service도 만들고 DAO도 만드는것이 가장 좋다
			// 각각의 파일들에게 코드를 분업화
			List<AdminVO> bList = adminService.getBookList(vo);
			model.addAttribute("list", bList);
			
			// getBookList 요청이 들어오면 보여줄 페이지이름
			return "searchBook"; // WEB-INF/views/test.jsp
			// 추후에는 보여줄 페이지를 searchBook으로 변경
			
			// 위와 같은 경로가 만들어지는 이유 : servlet-context.xml에 설정되어잇음
			// - org.springframework.web.servlet.view.InternalResourceViewResolver
		}
		
	}
	
	
	
	
	
	
	@RequestMapping("ajax")
					// 1. 원래는 페이지로 리턴하는데 ajax을 써서 페이지로 보이지않고 데이터로 보여주겠다를 하려고
	@ResponseBody   // 2. responsebody annotaion 을 붙인다
	public HashMap<String, List<AdminVO>> ajax(AdminVO vo) {
		
		List<AdminVO> bList = adminService.getBookList(vo);
		// List 형태
//		System.out.println("리스트형태 : " + bList);
		// JSON 형태
//		{bookid : 1, booktitle : ...}
		
		// {
		//  0 : {bookid : 1, booktitle : ...},
		//  1: {bookid : 1, booktitle : ...}
		
		// }
		
		// HashMap<String, List<UserVO>> map = new HashMap<String, List<UserVO>>();
		// map.put("jsonList", bList);
		
//		return "ajax데이터"; public String일때 문자열로 받을때
		
//		return bList;  // 이 코드가 정상적으로 진행되도록 구현(*) List형태가 자바스크립에서 문제가 없어야함
		// [{} {} ] : 리턴이 list인 경우 다음과 같은 형태로 전달
		
		// 가장 올바른 방법 : json > java에서 hashMap의 형태로 구현이 된다
		// hashMap의 형태로 리턴하여 json으로 변환
		
		 //            0번째에 있는 list가 들어가야하니까 값을 vo list로 줌(더 큰 Object로 줘도됨)
		 HashMap<String, List<AdminVO>> map = new HashMap<String, List<AdminVO>>();
		 map.put("jsonList", bList);
		 return map;
		
	}
	@RequestMapping("changeAction")
	public String changeInfo(AdminVO vo) {
		adminService.changeInfo(vo);
			
		return "redirect:/myBooking";
		
	}
	@RequestMapping("getBookingInfo")
	@ResponseBody // 2. responsebody annotaion 을 붙인다
	public String getBookingInfo(AdminVO vo) {
		adminService.getBookList(vo);
		
		// 1. 원래는 페이지로 리턴하는데 ajax을 써서 페이지로 보이지않고 데이터로 보여주겠다를 하려고
		return "1";
	}
	
	
	@RequestMapping("loginAction")
	public String login(AdminVO vo, HttpSession session, Model model) {
		AdminVO result = adminService.idCheck_Login(vo);
		
		if(result == null) {
			model.addAttribute("msg", "입력하신 정보가 틀립니다.");
			return "redirect:/login";
		} else {
			session.setAttribute("userid", result.getUserid() );
			session.setAttribute("username", result.getUsername() );
			session.setAttribute("password", result.getPassword() );
			session.setAttribute("sessionTime", new Date().toLocaleString());
		}
		
		return "redirect:/main";
	}
	
	@RequestMapping("joinAction")
	@ResponseBody	
	public String userInsert(AdminVO vo) {
		
		int result = adminService.userInsert(vo);
//		String resultString = Integer.toString(result);
		// int를 String으로 형변화해서 return해야할때 위처럼 쓰거나
		// 아래 처럼 빈 String ""를 + 해주면 int가 String으로 변한다
		return result+"";
	}
	
	@RequestMapping("updateAction")
	public String userUpdate(AdminVO vo) {
		adminService.userUpdate(vo);
			
		return "redirect:/main";
		
	}
	
	@RequestMapping("reservation")
	public String userReservation(AdminVO vo, HttpSession session) {
		int result = adminService.memberInfo(vo);
				
		return "redirect:/main";
		
	}

	@RequestMapping("bookingAction")
	@ResponseBody	
	public String bookingInfo(AdminVO vo) {
		
		int result = adminService.memberInfo(vo);
		
//		String resultString = Integer.toString(result);
		// int를 String으로 형변화해서 return해야할때 위처럼 쓰거나
		// 아래 처럼 빈 String ""를 + 해주면 int가 String으로 변한다
		return result+"";
	}
	
	
	@RequestMapping("getAllList")
	@ResponseBody
	public HashMap<String, List<AdminVO>> getAllList(AdminVO vo) {
	List<AdminVO> bList = adminService.getAllList();
	
	HashMap<String, List<AdminVO>> map = new HashMap<String, List<AdminVO>>();
	 map.put("bookList", bList);
	
	return map;
	
	}
	
	// ======================================================================//

	
	@RequestMapping("saveBoard")
	public String saveBoard(AdminVO vo) {
		
		adminService.saveBoard(vo);
		
		return "redirect:/adminBoard.do";
		
	}
	
	@RequestMapping("updateCnt")
	public String updateCnt(AdminVO vo, Model model) {
		
				
		List<AdminVO> aList = adminService.updateCnt(vo);
		model.addAttribute("list", aList);
		
		return "adminBoardView";
		
	}
	

	@RequestMapping("adminBoard.do")
	public String getBoardList(AdminVO vo, Model model
			, @RequestParam(value = "pageNum", defaultValue = "1")int pageNum
			, @RequestParam(value = "groupNum", defaultValue = "1")int groupNum
			) {
		
		
		// 게시물 총 갯수
		int totalRecCount = adminService.getTotalPage();
		// vo 변수에 넣어주기
		vo.setTotalRecCount(totalRecCount);
		
		// 총 갯수에 따른 페이지 총 갯수 (전체 게시물 / 13) -> 13씩 보여지게
		vo.setPageTotalCount(totalRecCount / vo.getCountPerPage());
		
		if(totalRecCount%vo.getCountPerPage() > 0 ) { 
			// 나눴을때 나머지가 있으면 페이지 한개 더 만들어서 13개가 다 없어도 게시물 나오게 +1 해줌
			vo.setCountPerPage(vo.getCountPerPage()+1);
		}
		
		// 전체 레코드를 검색해 온다면
		// 현재 페이지 번호에 의한 레코드를 검색
		// 한페이지에 표현할 게시글 수를 13로 잡았을 경우
		// 1번 : 1~ 13 행
		// 2번 : 14 ~ 26 행
		// 3번 : 26 ~ 39 행
			
		// 맨 처음 번호 (보여줄 게시글수 countPerPage)
		int firstRow = (pageNum-1) * vo.getCountPerPage()+1; 
		// 맨 마지막 번호
		int endRow = pageNum * vo.getCountPerPage();
		
		vo.setFirstRow(firstRow);
		vo.setEndRow(endRow);
		
		List<AdminVO> aList = adminService.getListPage(vo);
		
		// 페이지갯수 = 전체 데이터의 갯수 / 보여줄갯수
		// pageTotalCount = 전체 데이터의 갯수 / 페이지별 보여줄 갯수
		// pageTotalCount = totalRecCount /countPerPage
		// 데이터베이스 담긴 적체 레코드 갯수
		int totalCountGroup = vo.getPageTotalCount() / vo.getTotalCountPageGroup();
		
		vo.setTotalCountGroup(totalCountGroup);
		
		if( ( vo.getPageTotalCount() % vo.getTotalCountPageGroup() ) > 0) {
			vo.setTotalCountGroup(vo.getTotalCountGroup()+1);
			// 100 / 13 = 7.xx 
			// 99 / 13 = 7.xx
			// 98 / 13 = 7.xx
			// 97 / 13 = 7.xx
			// 90 / 13 = 6.xx
		}
				
		model.addAttribute("list", aList);
		model.addAttribute("totalCountGroup",vo.getTotalCountGroup());
		
		int firstPageNo = (groupNum-1) * vo.getTotalCountPageGroup() + 1;
		int endPageNo = groupNum * vo.getTotalCountPageGroup();
		
		if( endPageNo >= vo.getPageTotalCount() ) endPageNo = vo.getPageTotalCount() ;
		   
		model.addAttribute("startPageNum" , firstPageNo);
		model.addAttribute("endPageNum" , endPageNo);
		
		
		model.addAttribute("startGroupNum", groupNum-1);
		
		model.addAttribute("endGroupNum", groupNum+1);
		if( groupNum == vo.getTotalCountGroup() ) {
			model.addAttribute("endGroupNum", 0);
		}
		
		return "adminBoard";
	
	}
	
	@RequestMapping("commentAction")
	public String insertComment(AdminVO vo, Model model) {
		
		adminService.insertComment(vo);
		model.addAttribute("postId",vo.getPostId());

		return "redirect:/adminBoardView";
		
	}
	
	@RequestMapping("getCommentList")
	@ResponseBody
	public HashMap<String, List<AdminVO>> getCommentList(AdminVO vo) {
		List<AdminVO> cList = adminService.getCommentList(vo);
	
	HashMap<String, List<AdminVO>> map = new HashMap<String, List<AdminVO>>();
	 map.put("commentList", cList);
	
	return map;
	
	}
		
	@RequestMapping("commentDelete")
	public String commentDelete(AdminVO vo, Model model) {
		adminService.commentDelete(vo);
		model.addAttribute("postId",vo.getPostId());
		return "redirect:/adminBoardView";
		
	}
	
	@RequestMapping("commentEdit")
	public String commentEdit(AdminVO vo, Model model) {
		adminService.commentEdit(vo);
		model.addAttribute("postId",vo.getPostId());
		return "redirect:/adminBoardView";
		
	}
	
	@RequestMapping("adminBoardView")
	public String adminBoardView(AdminVO vo, Model model) {
		
		
		List<AdminVO> aList = adminService.adminBoardView(vo);
		model.addAttribute("list", aList);
		
		
		return "adminBoardView";
		
	}
	
	@RequestMapping("badComment")
	public String badCommentList(AdminVO vo, Model model) {
	
		System.out.println("컨트롤");
		List<AdminVO> cList = adminService.badCommentList(vo);
			
		model.addAttribute("list", cList);

			
		return "badComment";
	
	}
	
	@RequestMapping("adminBoardDelete")
	public String adminBoardDelete(AdminVO vo, Model model) {
		adminService.deleteBoard(vo);
		
		model.addAttribute("postId",vo.getPostId());
		return "redirect:/adminBoard.do";
		
	}
	
	@RequestMapping("newBoardSave")
		public String newBoardSave(AdminVO vo, Model model) {
		adminService.updateBoard(vo);
		
		model.addAttribute("postId",vo.getPostId());
		return "redirect:/adminBoardView";
		
	}
	
	@RequestMapping("reportAction")
	public String saveReport(AdminVO vo) {
		
		adminService.saveReport(vo);
		
		return "redirect:/adminBoard.do";
		
	}
	
	@RequestMapping("reportRemove")
	public String reportRemove(AdminVO vo, Model model) {
		adminService.reportRemove(vo);
		
		model.addAttribute("badId",vo.getBadId());
		return "redirect:/badComment";
		
	}
	
	
	
}
