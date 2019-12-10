<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<c:set var="rootPath" 
	value="${pageContext.request.contextPath}" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>□□□ 나의 JSP 페이지 □□□</title>
<link 
		rel="stylesheet" 
		type="text/css" 
		href="${rootPath}/css/list-table.css?ver=2019-12-02" >
<script src="${rootPath}/js/jquery-3.4.1.js"></script>
<script>
$(function() {
	
	/*
		if(class.content-body == click) {
			... 실행하라
		}
	
		click(fuction() {  })
		익명함수(무명함수) click event가 발생했을 때 call(호출)되어
		실행될 코드들의 묶음
		call back function()라고 부른다.
	*/
	$("#th-date").click(function() {
		alert("날짜 머리글 클릭되었음")
	})
	
	$(".content-body").click(function() {
		//$(this) : 현재 클릭된 요소, tag의 모든 정보
		let id = $(this).attr("data-id")
		let auth = $(this).attr("data-auth")
		
		// alert(id + "\n" + auth)
		
		document.location.href = "${rootPath}/memo/view?id=" + id

	})	
	
	
})

</script>
</head>
<body>
<%
/*







*/
%>

		
	<table>
		<tr>
			<th>SQ</th>
			<th id="th-date">작성일</th>
			<th>작성시각</th>
			<th>작성자</th>
			<th>카테고리</th>
			<th>제목</th>
		</tr>
		<c:choose>
			<c:when test="${empty MEMO_LIST}">
				<tr><td colspan="6">메모가 없음</td>
			</c:when>
			<c:otherwise>
				<c:forEach items="${MEMO_LIST}" 
						var="memoDTO" varStatus="index">
						<tr class="content-body" 
								data-id="${memoDTO.m_seq}"
								data-auth="${memoDTO.m_auth}">
							<td>${index.count}</td>
							<td>${memoDTO.m_date}</td>
							<td>${memoDTO.m_time}</td>
							<td>${memoDTO.m_auth}</td>
							<td>${memoDTO.m_cat}</td>
							<td>${memoDTO.m_subject}</td>
						</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		
	</table>

</body>
</html>