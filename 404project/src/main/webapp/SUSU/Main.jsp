<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>수수한 사람들</title>

<!-- css 연결 -->
<link rel="stylesheet" href="./MainStyle.css">

<!-- jquery 연결 -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"
	integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
	crossorigin="anonymous"></script>


<!-- 부트스트랩 CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 상단부 -->
	<header class="header">
		<!-- 로고 -->
		<div class="logo">
			<a href="./Main.jsp"> <img src="../img/logo_title.PNG"
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
			<a href="JoinMain.jsp">회원가입</a> <a
				href="./Login.jsp">로그인</a> <a
				href="../Mypage/CartList.jsp">장바구니</a> <a
				href="../Mypage/CartList.jsp">마이페이지</a>
		</div>
	</header>


	</div>


	<!-- 피드 목록 -->
	<div class="feed-container">

		<div class="row">

			<!--1번 피드  -->
			<div class="col-lg-4">

				<div class="main-feed">

					<div class="card">
						<!--사진을 클릭하면 피드 상세화면으로 이동 -->
						<a href="../ChannelDetail/FeedDetail.jsp"> <img
							src="../img/item_img.jpg" class="card-img-top" alt="피드 사진">
						</a>
						<div class="card-body">
							<div class="profile">
								<!-- 프로필 정보를 클릭하면 채널메인 화면으로 이동 -->
								<a href="../Channel/ChannelMain.jsp"> <img
									src="../img/profile_img.png" alt="프로필 사진"> <span
									class="card-title">작가 닉네임</span>
								</a>

							</div>
							<a href="/4. ChannelDetail/FeedDetail.jsp">

								<p class="card-text">텍스트</p>
							</a>
							<!-- 상품상세페이지 연결링크 -->
							<div>
								<a href="../Item/ItemDetail.jsp"> <img id="link"
									style="width: 200px; height: 200px;" src="../img/item_link.png"
									alt="상품상세페이지 링크">
								</a>
							</div>
						</div>

					</div>


				</div>

			</div>

			<!--2번 피드  -->

			<div class="col-lg-4">

				<div class="main-feed">

					<div class="card">
						<!--사진을 클릭하면 피드 상세화면으로 이동 -->
						<a href="../ChannelDetail/FeedDetail.jsp"> <img
							src="../img/item_img.jpg" class="card-img-top" alt="피드 사진">
						</a>
						<div class="card-body">
							<div class="profile">
								<!-- 프로필 정보를 클릭하면 채널메인 화면으로 이동 -->
								<a href="../Channel/ChannelMain.jsp"> <img
									src="../img/profile_img.png" alt="프로필 사진"> <span
									class="card-title">작가 닉네임</span>
								</a>

							</div>
							<a href="../ChannelDetail/FeedDetail.jsp">

								<p class="card-text">텍스트</p>
							</a>
							<!-- 상품상세페이지 연결링크 -->
							<div>
								<img id="link" style="width: 200px; height: 200px;"
									src="../img/item_link.png" alt="상품상세페이지 링크">
							</div>
						</div>

					</div>


				</div>

			</div>

			<!--3번 피드  -->

			<div class="col-lg-4">

				<div class="main-feed">

					<div class="card">
						<!--사진을 클릭하면 피드 상세화면으로 이동 -->
						<a href="../ChannelDetail/FeedDetail.jsp"> <img
							src="../img/item_img.jpg" class="card-img-top" alt="피드 사진">
						</a>
						<div class="card-body">
							<div class="profile">
								<!-- 프로필 정보를 클릭하면 채널메인 화면으로 이동 -->
								<a href="../Channel/ChannelMain.jsp"> <img
									src="../img/profile_img.png" alt="프로필 사진"> <span
									class="card-title">작가 닉네임</span>
								</a>

							</div>
							<a href="../ChannelDetail/FeedDetail.jsp">

								<p class="card-text">텍스트</p>
							</a>
							<!-- 상품상세페이지 연결링크 -->
							<div>
								<img id="link" style="width: 200px; height: 200px;"
									src="../img/item_link.png" alt="상품상세페이지 링크">
							</div>
						</div>

					</div>


				</div>

			</div>


			<!--4번 피드  -->

			<div class="col-lg-4">

				<div class="main-feed">

					<div class="card">
						<!--사진을 클릭하면 피드 상세화면으로 이동 -->
						<a href="../ChannelDetail/FeedDetail.jsp"> <img
							src="../img/item_img.jpg" class="card-img-top" alt="피드 사진">
						</a>
						<div class="card-body">
							<div class="profile">
								<!-- 프로필 정보를 클릭하면 채널메인 화면으로 이동 -->
								<a href="../Channel/ChannelMain.jsp"> <img
									src="../img/profile_img.png" alt="프로필 사진"> <span
									class="card-title">작가 닉네임</span>
								</a>

							</div>
							<a href="../ChannelDetail/FeedDetail.jsp">

								<p class="card-text">텍스트</p>
							</a>
							<!-- 상품상세페이지 연결링크 -->
							<div>
								<img id="link" style="width: 200px; height: 200px;"
									src="../img/item_link.png" alt="상품상세페이지 링크">
							</div>
						</div>

					</div>


				</div>

			</div>

		</div>

	</div>






	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous">
		
	</script>



</body>
</html>