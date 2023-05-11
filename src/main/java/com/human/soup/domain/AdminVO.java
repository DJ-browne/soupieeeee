package com.human.soup.domain;


import lombok.Data;

@Data
public class AdminVO
{
	
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
	
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 10;	// 한페이지당 레코드 수
	private int totalCountGroup;    // 페이지 그룹
	private int totalCountPageGroup = 5;	// 한그룹당 레코드 수
		
	private int firstRow;
	private int endRow;
	
	private int commentId;
	private String writer;
	private String content;
	private String regDate;
	private String secretCheck;
	
	private int badId;
	private String badTitle;
	private String badDate;
	private String badWriter;
	private String reason;
	private String reasonContent;
	private String reporter;
	private String badContent;
	private String badBoard;
	private String badFile;
	private String badF_en;
	private long badF_size;
	
	public AdminVO() {
		
		
	}


	}

	


