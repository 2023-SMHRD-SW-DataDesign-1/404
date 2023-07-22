<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- css 연결 -->
    <link rel="stylesheet" href="./FeedDetailStyle.css">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- google icon -->
    <link
        href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
        rel="stylesheet">



    <title>피드 상세</title>

</head>

<body>


 	<!-- 상단부 -->
	<header class="header">
		<!-- 로고 -->
		<div class="logo">
			<a href="../SUSU/Main.jsp""> <img src="../img/logo_title.PNG"
				alt="logo">

			</a>

		</div>

		<!-- 검색창 -->
		<div class="main">

			<!-- 검색결과에 따라 게시물 출력하도록 검색어를 전송하는 form 태그 -->
			<form action="">
				<div class="form-group has-search">

					<span class="fa fa-search form-control-feedback"> <a
						href="javascript:prev_search();search_submit();"> <svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                <path
									d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                            </svg>

					</a>
					</span> <input type="text" class="form-control" placeholder="검색어를 입력하세요">

				</div>

			</form>

		</div>

		<!-- 메뉴 -->
		<div class="user-actions">
			<a href="../SUSU/JoinMain.jsp">회원가입</a> 
			<a href="../SUSU/Login.jsp">로그인</a> 
			<a href="../Mypage/CartList.jsp">장바구니</a> 
			<a href="../Mypage/CartList.jsp">마이페이지</a>
		</div>
	</header>

    <!-- feed -->
    <div class="main_feed">
        <div class="left_feed">
            <div class="feed_box">

                <div class="feed_name">
                    
                    <a href="../Channel/ChannelMain.jsp">
                        <div class="profile_box">
                            <!-- 프로필 사진 -->
                            
                            <img class="profile_img" src="../img/profile_img.png">
                            
                        </div>
                        
                        <div class="feed_name_txt">
                            <!-- 작가 닉네임 -->
                            <span> suzy022 </span>

                        </div>
                    </a>

                    <div class="button">
                        <button type="button" class="btn btn-dark">팔로우</button>
                    </div>
                </div>

                <!-- 피드 이미지 -->
                <img class="feed_img" src="https://www.banul.co.kr/shopimages/banulfren/141000000003.jpg?1631086889">
                <p class="feed_txt">여름을 맞아 걸치기 좋은 가디건을 만들어봤어요^^</p>

                <!-- 상품연결링크 -->
                
                <div class="item_link">
                    <p class="title">상품태그</p>
                    
                    <a href="../Item/ItemDetail.jsp">
                        <div class="item-1">
                            <div>
                                
                                <img src="https://www.banul.co.kr/shopimages/banulfren/141000000003.jpg?1631086889" alt="">
                            </div>
                            
                            <div>
                                
                                <p class="item_name">[banul wear] 슬림핏 가디건</p>
                            </div>

                            <div>
                                
                                <p class="item_price"><b>23,400원</b></p>
                            </div>
                        </div>
                    </div>
                </a>



                <div class="feed_icon">

                    <!-- 좋아요 -->
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-heart"
                            viewBox="0 0 16 16">
                            <path
                                d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                        </svg>
                    </div>

                    <!-- 댓글 -->
                    <div>

                        <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-chat-square"
                            viewBox="0 0 16 16">
                            <path
                                d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1h-2.5a2 2 0 0 0-1.6.8L8 14.333 6.1 11.8a2 2 0 0 0-1.6-.8H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h2.5a1 1 0 0 1 .8.4l1.9 2.533a1 1 0 0 0 1.6 0l1.9-2.533a1 1 0 0 1 .8-.4H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
                        </svg>
                    </div>

                    <!-- 공유 -->
                    <div>

                        <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-share"
                            viewBox="0 0 16 16">
                            <path
                                d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5zm-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3z" />
                        </svg>

                    </div>



                </div>
                <div class="feed_like">
                    <p class="like_count"> <b>좋아요</b> 10개</p>
                </div>

                <div class="feed_reply">
                    <p>댓글</p>

                    <div>
                        <img src="../img/profile_img.png" alt="회원프로필사진">
                        <p class="reply_txt"> <b> suzy022 </b>제품 어디서 살 수 있나요? </p>
                    </div>

                    <div>

                        <img src="../img/profile_img.png" alt="회원프로필사진">
                        <p class="reply_txt"> <b> chew012 </b> 가방 예쁘다</p>
                    </div>

                    <div>
                        <img src="../img/profile_img.png" alt="회원프로필사진">
                        <p class="reply_txt"> <b> hoo486 </b> 모델착장정보 궁금해요~ </p>
                    </div>

                </div>





            </div>


        </div>
    </div>



</body>

</html>