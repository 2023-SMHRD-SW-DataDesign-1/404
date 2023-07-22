<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문페이지</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="./OrderStyle.css">

    <!-- 부트스트랩 CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">


    <!--구글 아이콘  -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

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



    <h4 class="title">주문할 상품</h4>
        <div class="order-container">

            <div class="item_img">
                <img src="https://www.banul.co.kr/shopimages/banulfren/141000000003.jpg?1631086889" alt="주문한 상품 이미지">
                <div class="item_info">

                    <p>[banul wear] 슬림핏 가디건</p>
                    <p>옵션: 민트(size.S)</p>
                    <p>주문수량: 1개</p>
                </div>
            </div>



            <div class="item_price">
                <table>
                    <tr>
                        <td>결제금액</td>
                        <td class="price">23,400원</td>
                    </tr>

                    <tr>
                        <td>배송비</td>
                        <td class="price">3,000원</td>
                    </tr>


                    <tr>
                        <td>총 결제금액</td>
                        <td class="price">36,400원</td>
                    </tr>
                </table>
            </div>

        </div>

        <h4 class="title">주문자 정보</h4>
            <div class="user-info">
                <table>
                    <tr>
                        <td class="label">이름</td>
                        <td><input type="text"></td>
                    </tr>

                    <tr>
                        <td class="label">이메일</td>
                        <td><input type="text"></td>
                    </tr>

                    <tr>
                        <td class="label">연락처</td>
                        <td><input type="text"></td>
                    </tr>

                </table>
            </div>

            <h4 class="title">배송 정보</h4>
                <div class="delivery-info">
                    <table>
                        <tr>
                            <td class="label">이름</td>
                            <td><input type="text"></td>
                        </tr>

                        <tr class="space" style="height: 20px;"></tr>

                        <tr>
                            <td class="label">연락처</td>
                            <td><input type="text"></td>
                        </tr>

                        <tr class="space" style="height: 20px;"></tr>

                        <tr>
                            <td rowspan="2" class="label">주소</td>
                            <td>
                                <input class="address" type="text">-
                                <input class="address" type="text">
                                <button type="button" class="btn btn-light">우편번호</button>
                            </td>

                        <tr>

                            <td>
                                <input class="address" type="text">
                                <input class="address" type="text">
                            </td>
                        </tr>
                        </tr>

                        <tr class="space" style="height: 20px;"></tr>

                        <tr>

                            <td class="label" width="">주문메시지</td>
                            <td colspan="3"><textarea name="request" id="request" cols="40" rows="5"></textarea></td>
                        </tr>

                    </table>
                </div>


                <h4 class="title">결제 정보</h4>
                    <div class="price-info">
                        <table>
                            <tr>
                                <th>상품금액</th>
                                <th>배송비</th>
                                <th>결제예정금액</th>

                            </tr>

                            <tr>
                                <td>23,400원</td>
                                <td>3,000원 </td>
                                <td>26,400원</td>
                            </tr>



                        </table>
                    </div>



                    <h4 class="title">결제수단선택</h4>
                        <div class="pay-select">

                            <div class="pay">
                                <input type="radio" name="pay" value="card"><span>일반카드 결제</span> <br>
                            </div>

                            <div class="pay">
                                <input type="radio" name="pay" value="kakao">
                                <img id="kakao" src="../img/kakaopay.png" alt="카카오페이">
                            </div>

                            <div class="pay">
                                <input type="radio" name="pay" value="naver">
                                <img id="naver" src="../img/naverpay.png" alt="네이버페이">

                            </div>

                        </div>

                        <div class="submit">

                            <!-- 결제 API로 연결 -->
                            <a href="./PayFinish.jsp">

                                <button type="submit" id="order">주문하기</button>
                            </a>

                            <a href="../Mypage/CartList.jsp">

                                <button type="submit"id="back" >주문취소</button>
                            </a>
                        </div>


                
</body>

</html>