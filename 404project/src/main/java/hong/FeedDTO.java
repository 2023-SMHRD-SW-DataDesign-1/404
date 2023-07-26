package hong;


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
public class FeedDTO {

    
	private String feed_no;
	@NonNull private String nickname;
	@NonNull private String filename1;
	@NonNull private String filename2;
	@NonNull private String feed_text;
	private int likes;
	private String b_date;
	
	public FeedDTO( String feed_no,String nickname,int likes) {
		super();
		this.likes = likes;
		this.nickname= nickname;
		this.feed_no= feed_no;
	}

	public FeedDTO(int likes) {
		super();
		this.likes = likes;
	}

	public FeedDTO(String nickname) {
		super();
		this.nickname = nickname;
	}
    
	
		
}

