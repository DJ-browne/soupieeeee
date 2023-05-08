package com.human.soup.domain;


import lombok.Data;

@Data
public class AdminVO
{
	// member field
	private	int seq_userId;
	private String userid;
	private String password;
	private String newpass;
	private String username;
	private String usergender;
	
	private int bookid;
	private String booktitle;
	private String bookauthor;
	private String bookstatement;
	private String bookdate;
	private String bookSearch;
	private String topSelect;
	
	private int bookingId;
	private String bookingName;
	private String bookingTel;
	private String rentalDue;
	private String rentalPeriod;
	
	private int postId;
	private	int		groupId;
	private	String	sequenceNo;
	private String postTitle;
	private String postPass;
	private String postContent;
	private String postDate;
	private int postCnt;
	
	private int totalBoardCount;
	private int postPerPage;
	private int groupNum;
	private int postStart;
	private int postEnd;
	private int totalGroupPerPage;
	
	
	
	private int commentId;
	private String writer;
	private String content;
	private String regDate;
	private String secretCheck;
	
	public AdminVO() {
		
		
	}

		
	
}

/*
	[ 참고 ]
	
	@ postingDate 가 실제 DB에서는 Date 형이지만, 날짜 값을 출력만 하기에 
	 Date 형이 아닌 String  형으로 받아도 된다.
	 나중에 날짜값을 사용할 일이 있으면 Date 형으로 변경 
 
*/