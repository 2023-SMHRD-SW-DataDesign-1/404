<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니 목록</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="./CartStyle.css">

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
        <span id="ctn-select"><a href="./CartList.jsp">장바구니 목록</a></span>
        <span ><a href="./PayList.jsp">결제한 내역</a></span>
        <span><a href="./InfoEdit.jsp">회원정보 수정</a></span>

    </div>

    <!-- 장바구니 목록 -->
    <section class="cart">
        
        <table class="cart__list">

            <!-- 주문하기 버튼을 누르면 주문페이지에 주문정보 전송 -->
            <form action="">
                <thead>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td colspan="2">상품정보</td>
                        <td>옵션</td>
                        <td>상품금액</td>
                        <td>배송비</td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="cart__list__detail">
                        <td><input type="checkbox"></td>
                        <td><img src="https://www.banul.co.kr/shopimages/banulfren/141000000003.jpg?1631086889" alt="상품이미지"></td>
                        <td>
                            <a href="../Item/ItemDetail.jsp">
                                <p>[banul wear] 슬림핏 가디건</p>
                            </a>
                            
                            <span class="price">23,400원</span>
                        </td>
                        <td class="cart__list__option">
                            <p>민트(size.S)/1개</p>
                            <button class="cart__list__optionbtn">주문수정</button>
                        </td>
                        <td><span class="price">23,400원</span><br>
                        </td>
                        <td>무료</td>
                    </tr>

                    <tr class="cart__list__detail">
                        <td><input type="checkbox"></td>
                        <td><img src="https://www.banul.co.kr/shopimages/banulfren/141000000003.jpg?1631086889" alt="상품이미지"></td>
                        <td>
                            <a href="../Item/ItemDetail.jsp">
                                <p>[banul wear] 슬림핏 가디건</p>
                            </a>
                            
                            <span class="price">23,400원</span>
                        </td>
                        <td class="cart__list__option">
                            <p>민트(size.S)/1개</p>
                            <button class="cart__list__optionbtn">주문수정</button>
                        </td>
                        <td><span class="price">23,400원</span><br>
                        </td>
                        <td>무료</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3"><input type="checkbox"> <button class="cart__list__optionbtn">선택상품 삭제</button>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tfoot>
            </form>
        </table>
        <div class="cart__mainbtns">
            <a href="../SUSU/Main.jsp">

                <button class="cart__bigorderbtn left">계속 구경하기</button>
            </a>
            <a href="../Item/ItemDetail.jsp">

                <button class="cart__bigorderbtn right">주문하기</button>
            </a>
        </div>
    </section>

    <!-- 주문수량 조절 -->
    <!-- <script src="../4. JavaScript/ItemNum.js"></script> -->

</body>

</html>