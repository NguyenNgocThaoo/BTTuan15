<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/taglib.jsp"%>

<a href="<c:url value='/admin/categories/add'/>">Add Category</a>

<c:if test="${message!=null}">
	${message}
</c:if>
<table border="1" width="100%">
	<tr>
		<th>STT</th>
		<th>CategoryID</th>
		<th>Image</th>
		<th>CategoryName</th>
		<th>Status</th>
		<th>Action</th>
	</tr>

	<c:forEach items="${list}" var="cate" varStatus="STT">
		<tr>
			<td>${STT.index+1 }</td>
			<td>${cate.categoryid }</td>
			<td>${cate.images}</td>
			<td>${cate.categoryname }</td>
			<td><c:if test="${cate.status == 1}">
					<span>Hoạt động</span>
				</c:if> <c:if test="${cate.status != 1}">
					<span>Khóa</span>
				</c:if></td>
			<td><a
				href="<c:url value='/admin/categories/edit/${cate.categoryid}'/>">Sửa</a>
				| <a
				href="<c:url value='/admin/categories/delete/${cate.categoryid}'/>">Xóa</a></td>
		</tr>
	</c:forEach>
</table>