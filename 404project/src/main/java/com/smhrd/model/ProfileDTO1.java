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
	
	@NonNull private String nickname;
	private String profileImage;
	private String profileDescription;
	private String bannerImage;
	
	
	
	
	
	
}
