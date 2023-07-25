package youknow;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
public class MemberDTO {

	// DTO에 들어갈 목록
// 회원가입 정보, 카테고리, 상품, 
	// 기본형 (회원가입에 쓰임)
	@NonNull private String user_id;
	@NonNull private String password;
	private String nickname;
	private String gender;
	private int age;
	private String address;
	private String phone_number;

//회원가입
	public MemberDTO(@NonNull String user_id, @NonNull String password, String nickname, int age, String address,
			String phone_number) {
		super();
		this.user_id = user_id;
		this.password = password;
		this.nickname = nickname;
		this.age = age;
		this.address = address;
		this.phone_number = phone_number;
	}

}// CLASS
