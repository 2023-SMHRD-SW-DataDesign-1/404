<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리뷰</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="./ReviewStyle.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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


    <div class="item-container">

        <div class="item-img">

            <img src="https://www.banul.co.kr/shopimages/banulfren/141000000003.jpg?1631086889" alt="상품이미지">
        </div>

        <div class="item-info">
            <!-- 상품정보 -->
            <ul>
                <li class="item-name">[banul wear] 슬림핏 가디건</li>
                <li class="item-price"><b>23,400원</b></li>
            </ul>

            <!-- 상품옵션 -->
            <div class="item-option">

                <select name="optionlist[]" onchange="change_option(this, 'basic');" label="색상선택" opt_type="SELECT"
                    opt_id="1" opt_mix="Y" require="Y" opt_mandatory="Y" class="basic_option">

                    <option value="">옵션 선택</option>

                    <option value="0" title="민트(size. S)" matrix="1" price="0" sto_id="1" dis_sto_price=""
                        dis_opt_price="" org_opt_price="0" sto_state="SALE">민트(size. S)</option>

                    <option value="1" title="민트(size. M)" matrix="2" price="0" sto_id="2" dis_sto_price=""
                        dis_opt_price="" org_opt_price="0" sto_state="SOLDOUT">민트(size. M) - 품절</option>

                    <option value="2" title="버건디(size. S)" matrix="3" price="0" sto_id="3" dis_sto_price=""
                        dis_opt_price="" org_opt_price="0" sto_state="SALE">버건디(size. S)</option>

                    <option value="3" title="버건디(size. M)" matrix="4" price="0" sto_id="4" dis_sto_price=""
                        dis_opt_price="" org_opt_price="0" sto_state="SALE">버건디(size. M)</option>

                    <option value="4" title="블랙(size. S)" matrix="5" price="0" sto_id="5" dis_sto_price=""
                        dis_opt_price="" org_opt_price="0" sto_state="SALE">블랙(size. S)</option>

                    <option value="5" title="블랙(size. M)" matrix="6" price="0" sto_id="6" dis_sto_price=""
                        dis_opt_price="" org_opt_price="0" sto_state="SOLDOUT">블랙(size. M) - 품절</option>

                </select>
            </div>

            <!-- 장바구니, 주문하기 버튼 -->
            <div class="button">
                <a href="../Mypage/CartList.jsp"> <button type="submit" id="cart">장바구니</button></a>
                <a href="./Order.jsp"> <button type="submit" id="order">주문하기</button></a>
            </div>

        </div>


    </div>

    <div class="item-ctg">
        <ul>
            <li><a href="./ItemDetail.jsp">상세정보</a></li>
            <li><a id="select" href="./Review.jsp">리뷰</a></li>

        </ul>

    </div>

    <!-- 리뷰 컨테이너 -->
    <div class="review-container">
        <!-- 평균평점 -->
        <div class="star-avg">
            <p>평균평점</p>
            <p id="avg-count">4.9</p>
        </div>

        <!-- 리뷰 -->
        <div class="review-box">

            <!-- 1번 리뷰 -->
            <div class="review">
                <div class="user">

                    <!-- 회원 프로필 -->
                    <img src="/img/profile_img.png" alt="회원 프로필">

                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path
                            d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                    </svg>

                    <!-- 회원별점 -->
                    <span id="star-count">4.5</span>

                    <div class="user-data">

                        <span id="user-id">작성자: woo32***</span>
                        <span id="date">등록일: 2023-07-21</span>
                    </div>
    
                </div>

             
                <!-- 회원리뷰 -->
                <div class="review-txt">
                    <p> 봄.여름에 입으려구요... 아직 입기전이지만 예뻐서 구입했어요.</p>
                </div>
            </div>


            <!-- 2번 리뷰 -->
            <div class="review">
                <!-- 회원 프로필 -->
                <img src="/img/profile_img.png" alt="회원 프로필">

                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                    class="bi bi-star-fill" viewBox="0 0 16 16">
                    <path
                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                </svg>

                <!-- 회원별점 -->
                <span id="star-count">4.5</span>

                <div class="user-data">

                    <span id="user-id">작성자 : nh@f8***</span>
                    <span id="date">등록일: 2023-07-23</span>
                </div>

                <!-- 회원리뷰 -->
                <div class="review-txt">
                    <p> 앏고 차랑차랑한 재질여요. 이것도 잘 입어질것 같아요.</p>
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