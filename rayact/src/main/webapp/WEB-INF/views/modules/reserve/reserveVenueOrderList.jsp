<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>场地订单管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/reserve/reserveVenueOrder/">场地订单列表</a></li>
		<shiro:hasPermission name="reserve:reserveVenueOrder:edit"><li><a href="${ctx}/reserve/reserveVenueOrder/form">场地订单添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="reserveVenueOrder" action="${ctx}/reserve/reserveVenueOrder/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>update_date</th>
				<th>remarks</th>
				<shiro:hasPermission name="reserve:reserveVenueOrder:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="reserveVenueOrder">
			<tr>
				<td><a href="${ctx}/reserve/reserveVenueOrder/form?id=${reserveVenueOrder.id}">
					<fmt:formatDate value="${reserveVenueOrder.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</a></td>
				<td>
					${reserveVenueOrder.remarks}
				</td>
				<shiro:hasPermission name="reserve:reserveVenueOrder:edit"><td>
    				<a href="${ctx}/reserve/reserveVenueOrder/form?id=${reserveVenueOrder.id}">修改</a>
					<a href="${ctx}/reserve/reserveVenueOrder/delete?id=${reserveVenueOrder.id}" onclick="return confirmx('确认要删除该场地订单吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>