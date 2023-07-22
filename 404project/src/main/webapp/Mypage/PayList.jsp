<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제한 내역</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="./PayStyle.css">

    <!-- 부트스트랩 CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">



</head>

<body>


  <!-- 상단부 -->
   <header>
	<!-- 로고 -->
		<div class="logo">
			<a href="../SUSU/Main.jsp"> <img src="../img/logo_title.PNG"
				alt="logo">

			</a>

		</div>

		<!-- 메뉴 -->
		<div class="user-actions">
			<a href="../SUSU/JoinMain.jsp">회원가입</a> 
			<a href="../SUSU/Login.jsp">로그인</a> 
			<a href="../Mypage/CartList.jsp">장바구니</a> 
			<a href="../Mypage/CartList.jsp">마이페이지</a>
		</div>

	</header>


    <!-- 마이페이지 메뉴 -->
    <div class="mypage_ctn">
        <span><a href="./CartList.jsp">장바구니 목록</a></span>
        <span id="ctn-select"><a href="./PayList.jsp">결제한 내역</a></span>
        <span><a href="./InfoEdit.jsp">회원정보 수정</a></span>

    </div>

    <!--결제내역 -->
    <!-- 장바구니 목록 -->
    <section class="pay">
        
        <table class="pay__list">

            <!-- 주문하기 버튼을 누르면 주문페이지에 주문정보 전송 -->
            <form action="">
                <thead>
                    <tr>
                        <td colspan="2">상품정보</td>
                        <td>옵션</td>
                        <td>상품금액</td>
                        <td>배송비</td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="pay__list__detail">
                        <td><img src="https://www.banul.co.kr/shopimages/banulfren/141000000003.jpg?1631086889" alt="상품이미지"></td>
                        <td>
                            <a href="../Item/ItemDetail.jsp">
                                <p>[banul wear] 슬림핏 가디건</p>
                            </a>
                            
                            <span class="price">23,400원</span>
                        </td>
                        <td class="pay__list__option">
                            <p>민트(size.S)/1개</p>
                        </td>
                        <td><span class="price">23,400원</span><br>
                        </td>
                        <td>무료</td>
                    </tr>

                    <tr class="pay__list__detail">
                        <td><img src="https://www.banul.co.kr/shopimages/banulfren/141000000003.jpg?1631086889" alt="상품이미지"></td>
                        <td>
                            <a href="../Item/ItemDetail.jsp">
                                <p>[banul wear] 슬림핏 가디건</p>
                            </a>
                            
                            <span class="price">23,400원</span>
                        </td>
                        <td class="pay__list__option">
                            <p>민트(size.S)/1개</p>
                        </td>
                        <td><span class="price">23,400원</span><br>
                        </td>
                        <td>무료</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tfoot>
            </form>
        </table>
      
    </section>


    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>


    <!-- <script src="../4. JavaScript/ItemNum.js"></script> -->

</body>

</html>