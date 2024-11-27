<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ page import="tuan3.ultis.Constant"%>
<%@ include file="/commons/taglib.jsp"%>
<body>
	<div class="container mt-5">
		<h2>Chỉnh sửa hồ sơ cá nhân</h2>
		<form action="${pageContext.request.contextPath}/profile"
			method="post" enctype="multipart/form-data">
			<input type="hidden" name="id" value="${account.id}" />

			<div class="mb-3">
				<label for="fullname" class="form-label">Họ tên</label> <input
					type="text" class="form-control" id="fullname" name="fullname"
					value="${account.fullName}" required>
			</div>

			<div class="mb-3">
				<label for="phone" class="form-label">Số điện thoại</label> <input
					type="text" class="form-control" id="phone" name="phone"
					value="${account.phone}" required>
			</div>
			<div class="mb-3">
				<label for="avatar" class="form-label">Ảnh đại diện</label> <input
					type="file" class="form-control" id="avatar" name="avatar">

				<c:if
					test="${not empty account.avatar && account.avatar.trim() != ''}">
					<c:if test="${account.avatar.substring(0,5) != 'https'}">
						<c:url value="/image?fname=${account.avatar}" var="imgUrl"></c:url>
					</c:if>
					<c:if test="${account.avatar.substring(0,5) == 'https'}">
						<c:url value="${account.avatar}" var="imgUrl"></c:url>
					</c:if>
					<img height="150" width="200" src="${imgUrl}" />

				</c:if>
				<c:if test="${empty account.avatar || account.avatar.trim() == ''}">
					<c:url value="/image?fname=default-avatar.png" var="imgUrl"></c:url>
					<img height="150" width="200" src="${imgUrl}" />
				</c:if>



			</div>

			<button type="submit" class="btn btn-primary"
				onclick="window.location.href='${pageContext.request.contextPath}/profile'">Cập
				nhật</button>


			<button type="button" class="btn btn-secondary"
				onclick="window.location.href='${pageContext.request.contextPath}/login'">Quay
				lại</button>
		</form>
	</div>
</body>