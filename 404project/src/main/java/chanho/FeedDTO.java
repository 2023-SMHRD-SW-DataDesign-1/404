package chanho;

import java.sql.Timestamp;

public class FeedDTO {
    private int feedNo;
    private String nickname;
    private String[] feedImages = new String[10];
    private String[] feedVideos = new String[3];
    private String text;
    private int likes;
    private Timestamp time;

}
