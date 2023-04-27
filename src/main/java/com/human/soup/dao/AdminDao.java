package com.human.soup.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.human.soup.domain.AdminVO;

// DB와 직접 연결하는 클래스 + mybatis를 통해서 데이터 베이스 쿼리문을 관리

public interface AdminDao {

	// mybatis를 쓰기전에는 해당 클래스에 문자열의 형태인 sql문장을 만들어야한다
	// String sql="";
	// mybatis를 사용하면 xml 파일을 통해서 DB연결 관리를 도움받는다
	// config.xml(설정) & mapper.xml(쿼리) 이 필요하다
	// mybatis를 스프링에 등록하기 위해서는 pom.xml을 통해서 외부의 라이브러리를 추가해야함
	// bean이라는 객체로 설정 및 xml 파일을 추가 >> root-context.xml 에서 설정
	
	public List<AdminVO> getBookList(AdminVO vo);
	
	/**
	 * id 중복체트 기능 구현
	 */	
	AdminVO  idCheck( AdminVO vo );
	
	/**
	 * 회원가입기능 구현
	 */
	int userInsert(AdminVO vo);
	
	/**
	 * 로그인 확인 기능 구현
	 */
	AdminVO userLogin(AdminVO vo);
	
	public int memberInfo(AdminVO vo);
	
	public int bookingUpdate(AdminVO vo);
	 // CRUD 기능 구현
	   // 글 등록
	      
	   // 글 수정
	   void updateBoard(AdminVO vo);
	   
	   // 글 삭제
	   void deleteBoard(AdminVO vo);
	   
	   // 글 상세 조회
	   AdminVO getBoard(AdminVO vo);
	   
	   // 글 목록 조회
//	   List<UserVO> getBoardList(HashMap map);

	void userUpdate(AdminVO vo);

	int changeInfo(AdminVO vo);

	void bookingDelete(AdminVO vo);

	public List<AdminVO> getAllList();

	
	
}
