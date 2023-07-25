<%@page import="youknow.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
  <h2>검색 자동완성</h2>
  <p>(검색어 - 빨간색, 파란색, 노란색, 검정색)</p>
  <!-- 검색어 입력창   -->
  <form action="SearchCon" method="post">
  <input
    type="text"
    id="search"
    placeholder="검색어를 입력해주세요."
    autocomplete="off"
  />
  </form>
  <!-- 자동완성 단어 리스트 -->
  <div class="autocomplete"></div>
</section>
 <%= request.getAttribute("search_list") %> <!-- 화면에서 숨겼다가 검색어를 입력하면 출력되도록 하는것을 어떻게 하지?  -->  
<script type="text/javascript">

const dataList = ["빨간색", "파란색", "노란색", "검정색"];

const $search = document.querySelector("#search");
const $autoComplete = document.querySelector(".autocomplete");
 
let nowIndex = 0;

$search.onkeyup = (event) => {
  // 검색어
  const value = $search.value.trim();

  // 자동완성 필터링
  const matchDataList = value
    ? dataList.filter((label) => label.includes(value))
    : [];

  switch (event.keyCode) {
    // UP KEY
    case 38:
      nowIndex = Math.max(nowIndex - 1, 0);
      break;

    // DOWN KEY
    case 40:
      nowIndex = Math.min(nowIndex + 1, matchDataList.length - 1);
      break;

    // ENTER KEY
    case 13:
      document.querySelector("#search").value = matchDataList[nowIndex] || "";

      // 초기화
      nowIndex = 0;
      matchDataList.length = 0;
      break;
      
    // 그외 다시 초기화
    default:
      nowIndex = 0;
      break;
  }

  // 리스트 보여주기
  showList(matchDataList, value, nowIndex);
};

const showList = (data, value, nowIndex) => {
  // 정규식으로 변환
  const regex = new RegExp(`(${value})`, "g");
  
  $autoComplete.innerHTML = data
    .map(
      (label, index) => `
      <div class='${nowIndex === index ? "active" : ""}'>
        ${label.replace(regex, "<mark>$1</mark>")}
      </div>
    `
    )
    .join("");
};
</script>
</body>
</html>