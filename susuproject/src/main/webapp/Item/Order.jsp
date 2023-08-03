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
     <div class="user">

        <a href="../SUSU/JoinMain.jsp">회원가입</a>
        <a href="../SUSU/Login.jsp">로그인</a>

    </div>
    <header class="header">
        <!-- 로고 -->
        <div class="logo">
            <a href="../SUSU/Main.jsp">
                <img src="../img/logo_title.PNG" alt="logo">

            </a>

        </div>

        <!-- 검색창 -->
        <div class="main">

            <!-- 검색결과에 따라 게시물 출력하도록 검색어를 전송하는 form 태그 -->
            <form action="">
                <div class="form-group has-search">

                    <span class="fa fa-search form-control-feedback">
                        <a href="javascript:prev_search();search_submit();">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                class="bi bi-search" viewBox="0 0 16 16">
                                <path
                                    d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                            </svg>

                        </a>
                    </span>
                    <input type="text" class="form-control" placeholder="검색어를 입력하세요">

                </div>

            </form>

        </div>

        <!-- 메뉴 -->
        <div class="user-actions">
            <!-- 채팅 -->
            <a href="../SUSU/LiveChatPage.jsp">

                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                    class="bi bi-chat-dots" viewBox="0 0 16 16">
                    <path
                        d="M5 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
                    <path
                        d="m2.165 15.803.02-.004c1.83-.363 2.948-.842 3.468-1.105A9.06 9.06 0 0 0 8 15c4.418 0 8-3.134 8-7s-3.582-7-8-7-8 3.134-8 7c0 1.76.743 3.37 1.97 4.6a10.437 10.437 0 0 1-.524 2.318l-.003.011a10.722 10.722 0 0 1-.244.637c-.079.186.074.394.273.362a21.673 21.673 0 0 0 .693-.125zm.8-3.108a1 1 0 0 0-.287-.801C1.618 10.83 1 9.468 1 8c0-3.192 3.004-6 7-6s7 2.808 7 6c0 3.193-3.004 6-7 6a8.06 8.06 0 0 1-2.088-.272 1 1 0 0 0-.711.074c-.387.196-1.24.57-2.634.893a10.97 10.97 0 0 0 .398-2z" />
                </svg>

            </a>
            <!-- 나의 채널 -->
            <a href="../Seller/MychannelMain.jsp">

                <svg id="mychannel" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                    class="bi bi-instagram" viewBox="0 0 16 16">
                    <path
                        d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                </svg>
            </a>

            <!-- 장바구니 -->
            <a href="../Mypage/CartList.jsp">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart2"
                    viewBox="0 0 16 16">
                    <path
                        d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                </svg>
            </a>

            <!-- 마이페이지 -->
            <a href="../Mypage/CartList.jsp">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                    class="bi bi-person-gear" viewBox="0 0 16 16">
                    <path
                        d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm.256 7a4.474 4.474 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10c.26 0 .507.009.74.025.226-.341.496-.65.804-.918C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4s1 1 1 1h5.256Zm3.63-4.54c.18-.613 1.048-.613 1.229 0l.043.148a.64.64 0 0 0 .921.382l.136-.074c.561-.306 1.175.308.87.869l-.075.136a.64.64 0 0 0 .382.92l.149.045c.612.18.612 1.048 0 1.229l-.15.043a.64.64 0 0 0-.38.921l.074.136c.305.561-.309 1.175-.87.87l-.136-.075a.64.64 0 0 0-.92.382l-.045.149c-.18.612-1.048.612-1.229 0l-.043-.15a.64.64 0 0 0-.921-.38l-.136.074c-.561.305-1.175-.309-.87-.87l.075-.136a.64.64 0 0 0-.382-.92l-.148-.045c-.613-.18-.613-1.048 0-1.229l.148-.043a.64.64 0 0 0 .382-.921l-.074-.136c-.306-.561.308-1.175.869-.87l.136.075a.64.64 0 0 0 .92-.382l.045-.148ZM14 12.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0Z" />
                </svg>
            </a>
        </div>


    </header>


    <h4 class="title">주문할 상품</h4>
        <div class="order-container">

            <div class="item_img">
                <img src="data:image/jpeg;base64,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" alt="주문한 상품 이미지">
                <div class="item_info">

                    <p>꽃 한송이 백참</p>
                    <p>블랙</p>
                    <p>주문수량: 1개</p>
                </div>
            </div>



            <div class="item_price">
                <table>
                    <tr>
                        <td>결제금액</td>
                        <td class="price">4000원</td>
                    </tr>

                    <tr>
                        <td>배송비</td>
                        <td class="price">0원</td>
                    </tr>


                    <tr>
                        <td>총 결제금액</td>
                        <td class="price">4000원</td>
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
                                <td>4000원</td>
                                <td>0원 </td>
                                <td>4000원</td>
                            </tr>



                        </table>
                    </div>



<!-- 일반결제 API -->
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script>
var IMP = window.IMP;
IMP.init("imp67011510"); // 가맹점 식별코드
var today = new Date();
var hours = today.getHours(); // 시
var minutes = today.getMinutes(); // 분
var seconds = today.getSeconds(); // 초
var milliseconds = today.getMilliseconds();
var makeMerchantUid = hours + minutes + seconds + milliseconds;
function requestPay() {
IMP.request_pay({
pg : 'kcp', // PG사 코드표에서 선택 //kcp // nice
pay_method : 'card', // 결제 방식
merchant_uid: "IMP"+makeMerchantUid, // 결제 고유 번호
name : '꽃 한송이 백참 ', // 제품명
amount : 4000, // 가격
buyer_email : 'dldbsgh00005@gmail.com',
buyer_name : '보라보라',
buyer_tel : '010-7596-0877',
buyer_addr : '광주광역시 광산구 수등로76번',
buyer_postcode : '123-456'
}, function (rsp) { // callback
if (rsp.success) {
console.log(rsp);
location.href="./PayFinish.jsp";
} else {
console.log(rsp);
location.href="../Main";
}
});
}
</script>




                    <h4 class="title">결제수단선택</h4>
                        <div class="pay-select"> 

                            <div class="pay">
                               <input type="radio" name="pay" value="card"><span>일반카드 결제</span> <br> 
                                  <!--  결제하기 버튼 생성  -->
                            </div>
<!-- 
                            <div class="pay">
                                <input type="radio" name="pay" value="kakao">
                                <img id="kakao" src="/img/kakaopay.png" alt="카카오페이">
                            </div>

                            <div class="pay">
                                <input type="radio" name="pay" value="naver">
                                <img id="naver" src="/img/naverpay.png" alt="네이버페이">

                            </div>
 -->
                        </div>

                        <div class="submit">

                            <!-- 결제 API로 연결 -->
                            <button type="submit" id="order" onclick="requestPay()">결제하기</button>
                     <!--        <a href="">
								
                          	    <button type="submit" id="order" onclick="requestPay()" >주문하기</button>
                            </a>
						--> 
                            <a href="/Mypage/CarList.jsp">

                                <button type="submit" id="back">주문취소</button>
                            </a>
                        </div>


                
</body>

</html>