<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- css 연결 -->
    <link rel="stylesheet" href="./MyFeedDetailStyle.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- google icon -->
    <link
        href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
        rel="stylesheet">



    <title>나의 채널 피드 상세</title>

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
        <a href="../SUSU/Chat.jsp">

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

    <!-- feed -->
    <div class="main_feed">
        <div class="left_feed">
            <div class="feed_box">

                <div class="feed_name">

                    <a href="../Channel/ChannelMain.jsp">
                        <div class="profile_box">
                            <!-- 프로필 사진 -->

                            <img class="profile_img" src="/img/profile_img.png">

                        </div>

                        <!-- 작가 닉네임 -->
                        <div class="feed_name_txt">
                            <span> suzy022 </span>

                        </div>


                    </a>

                    <!-- 수정/삭제 버튼 -->
                    <div class="dropdown">
                        <button class="vertical-ellipsis">⋮</button>
                        <div class="dropdown-content">
                            <!-- 수정 버튼 클릭 시 피드 업로드 페이지로 이동 -->
                            <a href="../Upload/FeedUpload.jsp" id="editLink">수정</a>
                            <a href="../Upload/ItemUpload.jsp" id="ItemLink">판매</a>
                            <!-- 삭제 버튼 클릭 시 db에서 피드 삭제되고 작가 채널 메인 페이지로 이동 -->
                            <a href="../Seller/MychannelMain.jsp" id="deleteLink">삭제</a>
                        </div>
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

                                <img src="https://www.banul.co.kr/shopimages/banulfren/141000000003.jpg?1631086889"
                                    alt="">
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


                </div>

                <!-- 좋아요 수 -->
                <div class="feed_like">
                    <p class="like_count"> <b>좋아요</b> 10개</p>
                </div>

                <!-- 피드 업로드 날짜 -->
                <div class="feed_date">
                    <p>2023년 7월 24일</p>
                </div>

                <div class="feed_reply">
                    <p>댓글</p>

                    <div>
                        <img src="/img/profile_img.png" alt="회원프로필사진">
                        <p class="reply_txt"> <b> suzy022 </b>제품 어디서 살 수 있나요? </p>
                    </div>

                    <div>

                        <img src="/img/profile_img.png" alt="회원프로필사진">
                        <p class="reply_txt"> <b> chew012 </b> 가방 예쁘다</p>
                    </div>

                    <div>
                        <img src="/img/profile_img.png" alt="회원프로필사진">
                        <p class="reply_txt"> <b> hoo486 </b> 모델착장정보 궁금해요~ </p>
                    </div>

                </div>





            </div>


        </div>
    </div>

    <!-- 수정/삭제 메뉴 js -->
    <script>
        // JavaScript를 사용하여 드롭다운 메뉴를 토글합니다.
        document.querySelector(".vertical-ellipsis").addEventListener("click", function () {
            document.querySelector(".dropdown-content").classList.toggle("show");
        });

        // 클릭 이외의 영역을 클릭하면 드롭다운 메뉴를 닫습니다.
        window.addEventListener("click", function (event) {
            if (!event.target.matches(".vertical-ellipsis")) {
                var dropdowns = document.getElementsByClassName("dropdown-content");
                for (var i = 0; i < dropdowns.length; i++) {
                    var openDropdown = dropdowns[i];
                    if (openDropdown.classList.contains("show")) {
                        openDropdown.classList.remove("show");
                    }
                }
            }
        });

        // 수정 버튼 클릭 시 피드업로드 페이지로 이동
        document.getElementById("editLink").addEventListener("click", function (event) {
            event.preventDefault(); // 기본 링크 동작 방지
            window.location.href = event.target.href; // FeedUpload.jsp 페이지로 이동
        });

        // 삭제 버튼 클릭 시 게시물 삭제
        document.getElementById("deleteLink").addEventListener("click", function (event) {
            event.preventDefault(); // 기본 링크 동작 방지

            // 게시물 삭제 로직을 추가해야 합니다.
            // 이 예시에서는 간단히 알림을 표시하도록 하겠습니다.
            if (confirm("게시물을 삭제하시겠습니까?")) {
                // 삭제 동작 수행
                alert("게시물이 삭제되었습니다.");
            } else {
                // 취소 동작 수행
                alert("게시물 삭제가 취소되었습니다.");
            }
        });

    </script>


</body>

</html>