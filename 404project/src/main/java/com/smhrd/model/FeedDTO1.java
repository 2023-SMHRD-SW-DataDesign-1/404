package com.smhrd.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
@NoArgsConstructor
public class FeedDTO1 {
    private int feedNo;
    private String nickname;
    private String feedImages;
    private String[] feedVideos = new String[3];
    private String text;
    private int likes;
    private String time;

    public FeedDTO1(int feedNo, String text) {
		super();
		this.feedNo = feedNo;
		this.text = text;
		
	}

    
    
    
}
