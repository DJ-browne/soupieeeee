package com.human.soup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.soup.dao.AdminDao;
import com.human.soup.dao.AdminDaoImpl;
import com.human.soup.domain.AdminVO;

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
	public void updateBoard(AdminVO vo) {
		adminDao.userUpdate(vo);
		
	}

	@Override
	public void deleteBoard(AdminVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public AdminVO getBoard(AdminVO vo) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void userUpdate(AdminVO vo) {
		// TODO Auto-generated method stub
		
	}

	public List<AdminVO> getAllList() {
		// TODO Auto-generated method stub
		return adminDao.getAllList();
	}
	
	
	
}

