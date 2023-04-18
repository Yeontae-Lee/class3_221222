<%@page import="java.util.ArrayList"%>
<%@page import="com.itwillbs.mvc_board_sts.vo.Inbound_Product_ListVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%
List<Inbound_Product_ListVO> inProductList = new ArrayList<Inbound_Product_ListVO>();
Inbound_Product_ListVO inProduct = new Inbound_Product_ListVO();
inProduct.setIn_schedule_cd("20230204-1");
inProduct.setIn_schedule_qty(31);
inProduct.setIn_qty(25);
inProduct.setProduct_name("펩시콜라 제로슈거 라임");
inProductList.add(inProduct);

Inbound_Product_ListVO inProduct2 = new Inbound_Product_ListVO();
inProduct2.setIn_schedule_cd("20230204-1");
inProduct2.setIn_schedule_qty(37);
inProduct2.setIn_qty(25);
inProduct2.setProduct_name("코카콜라");
inProductList.add(inProduct2);

pageContext.setAttribute("inProductList", inProductList);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 외부 CSS 가져오기 -->
<%-- <link href="<%=request.getContextPath() %>/resources/css/default.css" rel="stylesheet" type="text/css"> --%>
<link href="${pageContext.request.contextPath }/resources/css/default.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<!-- Login, Join 링크 표시 영역 -->
		<jsp:include page="inc/top.jsp"></jsp:include>
	</header>
	<article>
		<!-- 본문 표시 영역 -->
		<h1>MVC 게시판</h1>
		<h3><a href="BoardWriteForm.bo">글쓰기</a></h3>
		<h3><a href="BoardList.bo">글목록</a></h3>
		<h3><a href="BoardList2.bo">글목록2(JSON 데이터 생성)</a></h3>
	</article>
</body>
</html>














