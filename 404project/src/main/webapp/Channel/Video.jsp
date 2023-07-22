<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>채널 동영상</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="./VideoStyle.css">

    <!-- 부트스트랩 CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

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

    <!-- 브랜드 로고(배너) -->
    <div id="banner">

    </div>

    <!-- 프로필 영역 -->
    <div class="user-info-container">
        <!-- 작가 소개 -->
        <div>
            <!-- 프로필 사진 -->
            <img src="../img/profile_img.png" alt="user-profile">
            <!-- 작가 닉네임 -->
            <p id="nickname">작가 닉네임</p>

            <!-- 작가 소개글 -->
            <p>작가 소개글</p>
        </div>

        <div class="follow-box">
            <span>팔로우</span>
            <span class="count">2.1만</span>
            <span>팔로잉</span>
            <span class="count">2,000</span>

        </div>
        <div class="button">
            <button type="button" class="btn btn-dark">팔로우</button>
            <button type="button" class="btn btn-light">메시지</button>
        </div>

    </div>

    <!-- 채널 카테고리 -->
    <div class="channel-ctg">
        <a href="./Notice.jsp">

            <span>공지사항</span>
        </a>

        <a href="./ChannelMain.jsp">

            <span>피드</span>
        </a>

        <a href="./Video.jsp">

            <span id="select">동영상</span>
        </a>

        <a href="./ItemList.jsp">

            <span>판매작품</span>
        </a>
    </div>

    <div class="line"></div>


    <!-- 동영상 피드 -->
    <div class="post-box">

        <div class="row">



            <div class="col-lg-3">

                <a href="../ChannelDetail/VideoDetail.jsp">

                    <video muted autoplay loop>
                        <source
                            src="https://cdn.pixabay.com/vimeo/841954081/moon-169882.mp4?width=360&hash=8376cde0e4350dc09ea26bc8a2f4be2a07e6214d"
                            type="video/mp4">
                        <strong>Your browser does not support the video tag.</strong>
                    </video>

                </a>

            </div>


            <div class="col-lg-3">

                <a href="../ChannelDetail/VideoDetail.jsp">

                    <video muted autoplay loop>
                        <source
                            src="https://cdn.pixabay.com/vimeo/841954081/moon-169882.mp4?width=360&hash=8376cde0e4350dc09ea26bc8a2f4be2a07e6214d"
                            type="video/mp4">
                        <strong>Your browser does not support the video tag.</strong>
                    </video>

                </a>

            </div>


            <div class="col-lg-3">

                <a href="../ChannelDetail/VideoDetail.jsp">

                    <video muted autoplay loop>
                        <source
                            src="https://cdn.pixabay.com/vimeo/841954081/moon-169882.mp4?width=360&hash=8376cde0e4350dc09ea26bc8a2f4be2a07e6214d"
                            type="video/mp4">
                        <strong>Your browser does not support the video tag.</strong>
                    </video>

                </a>

            </div>


            <div class="col-lg-3">

                <a href="../ChannelDetail/VideoDetail.jsp">

                    <video muted autoplay loop>
                        <source
                            src="https://cdn.pixabay.com/vimeo/841954081/moon-169882.mp4?width=360&hash=8376cde0e4350dc09ea26bc8a2f4be2a07e6214d"
                            type="video/mp4">
                        <strong>Your browser does not support the video tag.</strong>
                    </video>

                </a>

            </div>

            <div class="col-lg-3">

                <a href="../ChannelDetail/VideoDetail.jsp">

                    <video muted autoplay loop>
                        <source
                            src="https://cdn.pixabay.com/vimeo/841954081/moon-169882.mp4?width=360&hash=8376cde0e4350dc09ea26bc8a2f4be2a07e6214d"
                            type="video/mp4">
                        <strong>Your browser does not support the video tag.</strong>
                    </video>

                </a>

            </div>


            <div class="col-lg-3">

                <a href="../ChannelDetail/VideoDetail.jsp">

                    <video muted autoplay loop>
                        <source
                            src="https://cdn.pixabay.com/vimeo/841954081/moon-169882.mp4?width=360&hash=8376cde0e4350dc09ea26bc8a2f4be2a07e6214d"
                            type="video/mp4">
                        <strong>Your browser does not support the video tag.</strong>
                    </video>

                </a>

            </div>


            <div class="col-lg-3">

                <a href="../ChannelDetail/VideoDetail.jsp">

                    <video muted autoplay loop>
                        <source
                            src="https://cdn.pixabay.com/vimeo/841954081/moon-169882.mp4?width=360&hash=8376cde0e4350dc09ea26bc8a2f4be2a07e6214d"
                            type="video/mp4">
                        <strong>Your browser does not support the video tag.</strong>
                    </video>

                </a>

            </div>

            <div class="col-lg-3">

                <a href="../ChannelDetail/VideoDetail.jsp">

                    <video muted autoplay loop>
                        <source
                            src="https://cdn.pixabay.com/vimeo/841954081/moon-169882.mp4?width=360&hash=8376cde0e4350dc09ea26bc8a2f4be2a07e6214d"
                            type="video/mp4">
                        <strong>Your browser does not support the video tag.</strong>
                    </video>

                </a>

            </div>

        </div>


    </div>



    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>

</body>

</html>