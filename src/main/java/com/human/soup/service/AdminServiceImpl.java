package com.human.soup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.soup.dao.AdminDao;
import com.human.soup.dao.AdminDaoImpl;
import com.human.soup.domain.AdminVO;

import java.text.DecimalFormat;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;

	@Override
	public AdminVO idCheck_Login(AdminVO vo) {
		
		return adminDao.userLogin(vo);
	}

	@Override
	public int userInsert(AdminVO vo) {
		
		// id만 체크
		
		AdminVO checkvo= adminDao.idCheck(vo);
		if (checkvo == null) {
			return adminDao.userInsert(vo);
		} else {
			// 아이디가 있으면 99를 리턴해라
			return 99;
		}
	}
	

	@Override
	public List<AdminVO> getBookList(AdminVO vo) {
		
		
		return adminDao.getBookList(vo);
	}
	

	@Override
	public int memberInfo(AdminVO vo) {
		
		 int result = adminDao.memberInfo(vo);
		if ( result == 1) {
			// db UPDATE >> 
			adminDao.bookingUpdate(vo);
		} 
			
			return result;
	}

	@Override
	public int changeInfo(AdminVO vo) {
		int result = adminDao.changeInfo(vo);
		System.out.println(result);
		if (result == 1) {
			adminDao.bookingDelete(vo);
			System.out.println(vo);
			
		}
		
		return result;
	}
	
	@Override
	public void userUpdate(AdminVO vo) {
		adminDao.userUpdate(vo);
		
	}
	
	@Override
	public int saveBoard(AdminVO vo) {
				
		return adminDao.saveBoard(vo);
		
	}
		
	@Override
	public void updateBoard(AdminVO vo) {
		adminDao.updateBoard(vo);
	}

	@Override
	public void deleteBoard(AdminVO vo) {
		adminDao.deleteBoard(vo);
		
	}

	@Override
	public List<AdminVO> getBoard(AdminVO vo) {
		return adminDao.getBoard(vo);
	}
	

	public List<AdminVO> getAllList() {
		// TODO Auto-generated method stub
		return adminDao.getAllList();
	}

	@Override
	public List<AdminVO> getBoardList(AdminVO vo) {
		

		return adminDao.getBoardList();
		
		
	}

	@Override
	public int insertComment(AdminVO vo) {
		return adminDao.insertComment(vo);
		
	}

	@Override
	public List<AdminVO> getCommentList(AdminVO vo) {
		return adminDao.getCommentList();
	}

	@Override
	public List<AdminVO> updateCnt(AdminVO vo) {
		
		

		List<AdminVO> bList = null;
		
		int result = adminDao.updateCnt(vo);
		
		if (result>0) {
			bList = adminDao.getBoard(vo);
		}
		 
		return bList;
		
	}

	@Override
	public void commentDelete(AdminVO vo) {
		adminDao.commentDelete(vo);
		
	}

	@Override
	public void commentEdit(AdminVO vo) {
		adminDao.commentEdit(vo);
		
	}
	
	@Override
	public List<AdminVO> adminBoardView(AdminVO vo) {
	
		return adminDao.getBoard(vo);
		
	}

	@Override
	public int getTotalPage() {
		
		return adminDao.getTotalPage();
	}

	@Override
	public List<AdminVO> getListPage(AdminVO vo) {
		
		return adminDao.getListPage(vo);
		
	
	}

	@Override
	public List<AdminVO> badCommentList(AdminVO vo) {
		return adminDao.badCommentList(vo);
	}

	@Override
	public int saveReport(AdminVO vo) {
		return adminDao.saveReport(vo);
		
	}

	@Override
	public void reportRemove(AdminVO vo) {
		adminDao.reportRemove(vo);
		
	}

	

	
	
}

