<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.util.ArrayList"%>
<!-- EL 표현식 실행 -->
<%@ page isELIgnored="false"%>
<!-- JSTL 사용하기 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="youknow.ReviewRateDAO"%>    					
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div> <!-- 댓글 입력 -->       <--평점추가-->
<form action="ReviewCon" method="post">
<input type="text" name="reviewpoint" placeholder="1~5 숫자를 입력해주세요">
   <input type="hidden" name="review_no" value="1">
   <input type="text" name="nickname" placeholder="닉네임을 입력해주세요">
   <input type="text" name="review" placeholder="리뷰를 입력해주세요">
   <input type="submit" >
</form>
</div>
<div> <!-- 댓글 출력 -->
<c:set var="review_list" value="${ReviewRateDAO.showReview()}"></c:set>
<table id = "list">
   <c:forEach var="review" items="${review_list}" varStatus="status">
      <tr>
         <td>${review.nickname}</td>
         <td>${review.review}</td>
         <td>${review.reviewpoint}</td>
      </tr>               
   </c:forEach>
</table>
</div>
</body>
</html>