<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Quản lý loại sản phẩm</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>

<c:set var="base" value="/admin/category" scope="request" />

<h4 class="label label-success">${message}${param.message}</h4>

<jsp:include page="file/listCategory.jsp" />

