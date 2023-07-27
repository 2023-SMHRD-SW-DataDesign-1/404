package com.smhrd.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NoticeDTO1 {
    private int noticeNo;
    private int feedNo;
    private String nickname;
    private String text;
    private String time;
    private String title;
    
    
    
    public NoticeDTO1(String nickname, String text,String time , String title) {
		super();
		this.nickname = nickname;
		this.text = text;
		this.time = time;
		this.title = title;
	}
    
    
	public NoticeDTO1(String nickname) {
		super();
		this.nickname = nickname;
	}
    
    
	public NoticeDTO1(int noticeNo) {
		super();
		this.noticeNo = noticeNo;
	}
    
    
}
