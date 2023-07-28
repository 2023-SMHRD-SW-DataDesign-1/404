package com.smhrd.model;

import java.sql.Timestamp;

public class FeedCommentDTO1 {

	private int commentNo;
    private int feedNo;
    private String profileImage;
    private String nickname;
    private String text;
    private String time;
    
	public void setFeedNo(int feedNo) {
		this.feedNo = feedNo;
	}
	public void setText(String text) {
		this.text = text;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	public String getProfileImage() {
		return profileImage;
	}
	public String getNickname() {
		return nickname;
	}
	
}
