package com.human.soup.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.soup.domain.AdminVO;

// DB와 직접 연결하는 클래스 + mybatis를 통해서 데이터 베이스 쿼리문을 관리
@Repository("adminDao")
public class AdminDaoImpl implements AdminDao{

	// mybatis를 쓰기전에는 해당 클래스에 문자열의 형태인 sql문장을 만들어야한다
	// String sql="";
	// mybatis를 사용하면 xml 파일을 통해서 DB연결 관리를 도움받는다
	// config.xml(설정) & mapper.xml(쿼리) 이 필요하다
	// mybatis를 스프링에 등록하기 위해서는 pom.xml을 통해서 외부의 라이브러리를 추가해야함
	// bean이라는 객체로 설정 및 xml 파일을 추가 >> root-context.xml 에서 설정
	@Autowired
	private SqlSessionTemplate mybatis;

	

	@Override
	public AdminVO idCheck(AdminVO vo) {
		// id만체크하는 쿼리문		
		return mybatis.selectOne("adminDao.idCheck",vo);
	}

	@Override
	public int userInsert(AdminVO vo) {
		return mybatis.insert("adminDao.userInsert",vo);
	}

	@Override
	public AdminVO userLogin(AdminVO vo) {
		return mybatis.selectOne("adminDao.userLogin", vo);
	}
	
	@Override
	public List<AdminVO> getBookList(AdminVO vo) {
		// DB와 접근 >> select라는 조회
		// mapper라는 데이터 안에는 여러 쿼리문이 들어있다
		// 그 쿼리문마다 올바른 사용방법이 있습니다
		// insert() / update() / delete() : 추가 수정 삭제
		// selectOne() : 조회 >> 값을 하나만 조회해야하는 경우 > select결과가 행이 하나여야한다
		// selelctList() : 조회>> 값이 여러개 조회해야하는 경우 > select결과가 행이 몇개든 상관없다
		// 메소드("namespace.id", 입력할테이터(생략가능))
		
		List<AdminVO> bList = mybatis.selectList("adminDao.getBookList", vo);
		return bList;
		
	}
	
	@Override
	public int changeInfo(AdminVO vo) {
		
		return mybatis.update("adminDao.changeInfo",vo);
	}

	@Override
	public void userUpdate(AdminVO vo) {
		mybatis.selectOne("adminDao.userUpdate",vo);
		
		
	}
	
	@Override
	public int memberInfo(AdminVO vo) {
		System.out.println("다오왔다");
		return mybatis.insert("adminDao.userReservation",vo);
	}



	@Override
	public AdminVO getBoard(AdminVO vo) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void updateBoard(AdminVO vo) {
		// TODO Auto-generated method stub
		
	}

	public int bookingUpdate(AdminVO vo) {
		return mybatis.update("adminDao.bookingUpdate", vo);
		
	}

	@Override
	public void bookingDelete(AdminVO vo) {
		
		mybatis.delete("adminDao.bookingDelete", vo);
		
	}

	public List<AdminVO> getAllList() {
		
		List<AdminVO> bList = mybatis.selectList("adminDao.getAllList");
		return bList;
	}

	@Override
	public void deleteBoard(AdminVO vo) {
		// TODO Auto-generated method stub
		
	}

	

	
	
}
