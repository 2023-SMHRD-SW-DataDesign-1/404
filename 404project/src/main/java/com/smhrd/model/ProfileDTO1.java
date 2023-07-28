package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ProfileDTO1 {
	
	private String nickname;
	private String profileImage;
	private String profileDescription;
	private String bannerImage;
	
	public ProfileDTO1(String profileImage, String profileDescription, String bannerImage) {
		super();
		this.profileImage = profileImage;
		this.profileDescription = profileDescription;
		this.bannerImage = bannerImage;
	}
	
	public ProfileDTO1(String nickname) {
		super();
		this.nickname = nickname;
	}
	
	
	
	
	
	
}
