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
public class ChatDTO1 {
    private int charNo;
    private String nickname;
//    private String memberNickname;
    private String otherMemberNickname;
    private String text;
    private String time;
}
