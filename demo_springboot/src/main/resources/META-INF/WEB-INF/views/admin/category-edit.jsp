<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/taglib.jsp"%>

<form action="${pageContext.request.contextPath}/admin/category/update"
	method="post" enctype="multipart/form-data">
	<input type="text" id="categoryid" name="categoryid"
		value="${cate.cateid}" hidden><br>
	<label for="categoryname">Category name:</label><br> <input
		type="text" id="categoryname" name="categoryname"
		value="${cate.catename}"><br> <label for="images">Images:</label><br>
	<c:if test="${cate.image.substring(0,5) != 'https'}">
		<c:url value="/image?fname=${cate.image}" var="imgUrl"></c:url>
	</c:if>
	<c:if test="${cate.image.substring(0,5) == 'https'}">
		<c:url value="${cate.image}" var="imgUrl"></c:url>
	</c:if>
	<img alt="images" id="imagess" height="150" width="200" src="${imgUrl}" /> <input type="file"
		onchange="chooseFile(this)" id="images" name="images" value="${cate.image}"><br> 
	<label for="status">Status:</label><br> <input type="text" id="status"
		name="status" value="${cate.status}"><br> <br> <input
		type="submit" value="Submit">
</form>