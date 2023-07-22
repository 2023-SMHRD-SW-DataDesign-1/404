<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 상세</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="./NoticeDetailStyle.css">

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



    <!-- 피드 창 -->
    <div class="main_feed">
        <div class="left_feed">
            <div class="feed_box">

                <!-- 공지사항 피드 -->
                <div class="notice_feed">
                    <div class="notice_title"><b>[공지]뜨개상품 배송안내</b></div>
                    <div class="notice-content">

                        <img class="notice_img"
                            src="https://www.banul.co.kr/shopimages/banulfren/141000000003.jpg?1631086889">
                        <p class="notice_txt">
                            기본 제품은 상품준비기간이 3-4일 정도 소요되며, 완성품은 7일 내에 배송될 예정입니다.
                            <br>
                            <br>
                            주문제작 제품은 상품준비기간이 7일~14일 정도 소요되며, 완성품은 7일 내에 배송될 예정입니다.
                        </p>
                    </div>
                </div>






            </div>


        </div>
    </div>


    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>

</body>

</html>