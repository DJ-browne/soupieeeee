package com.human.soup.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.soup.dao.AdminDao;
import com.human.soup.domain.AdminVO;


public interface AdminService {
	

	public AdminVO idCheck_Login( AdminVO vo);
	
	
	public int userInsert(AdminVO vo);
	
	
	// CRUD 기능 구현
		// 글 등록
	

		// 글 수정
		void updateBoard(AdminVO vo);

		// 글 삭제
		void deleteBoard(AdminVO vo);

		// 글 상세 조회
		List<AdminVO> getBoard(AdminVO vo);

		// 글 목록 조회
		List<AdminVO> getBookList(AdminVO vo);


		void userUpdate(AdminVO vo);


		public int memberInfo(AdminVO vo);


		int changeInfo(AdminVO vo);


		public List<AdminVO> getAllList();


		public int saveBoard(AdminVO vo);


		public List<AdminVO> getBoardList(AdminVO vo);


		int insertComment(AdminVO vo);


		public List<AdminVO> getCommentList(AdminVO vo);


	
	
}

