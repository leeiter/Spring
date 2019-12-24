<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content="width=device-width, initial-scale=1">
<title>□□□ 나의 JSP 페이지 □□□</title>
<style type="text/css">
	* {
		padding: 0;
		margin: 0;
		box-sizing: border-box;
	}
	
	body {
		width: 95%;
		margin: 0 auto;
		background-color: gray;
	}
	
	header {
		background-color: rgba(0, 255, 0, 0.5);
		padding: 0.8rem;
	
	}
	
	article.bok-body {
		display: flex;
	}
	
	section#bok-search {
		flex: 5 0 500px;
		background-color: white;
		margin-right: 5px; 
	}
	
	section#bok-list {
		flex: 5 0 500px;
		background-color: white;
		overflow: auto;
	}
	
	section#bok-temp {

	}
</style>
</head>
<body>
<header>
	<h3>복지로 서비스</h3>
</header>

<article class="bok-body">
<section id="bok-search">
	<%@ include file="/WEB-INF/views/bokSearch.jsp" %>
</section>

<section id="bok-list">
	<%@ include file="/WEB-INF/views/BokList.jsp" %>
</section>

<section id="bok-temp">
</section>

</article>
</body>
</html>