<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상세정보</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="./InfoDetailStyle.css">
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
            <ul>
                <li class="item-name">[banul wear] 슬림핏 가디건</li>
                <li class="item-price"><b>23,400원</b></li>
            </ul>

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

            <!-- 옵션 선택 시 옵션에 대한 정보가 담긴 정보가 생성되어야 함 -->
            <div class="option-table">
                <span>민트(size. S)</span>
                <!-- 주문수량 조절 버튼 -->
                <div>

                    <button id="plus">-</button>
                    <input id="num" type="text" value="1">
                    <button id="minus">+</button>
                </div>

                <span>23,400원</span>
            </div>

            <!-- 총 결제 금액 -->
            <div class="total">
                <span>총 결제 금액</span>
                <span>23,000원</span>
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
            <li><a id="select" href="./InfoDetail.jsp">상세정보</a></li>
            <li><a href="./Review.jsp">리뷰</a></li>

        </ul>

        <div class="info-detail">
            <img src="http://solbit.jpg3.kr/makeshop/image/banulwear_raccoonangora_slimfit_cd_1.jpg" alt="상세정보">
        </div>
    </div>


    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>


</body>

</html>