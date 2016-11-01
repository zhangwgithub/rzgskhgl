<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.8.0.min.js"></script>
</head>
<body>
	<div id="content">
		<h3 class="admin_link_bar">
			<jsp:include page="inc.jsp"></jsp:include>

		</h3>
		<h3>${msg }</h3>
		<table width="800" cellspacing="0" cellPadding="0" id="listTable"
			border="1">
			<thead>
				<tr>
					<td>序号</td>
					<td>订单号</td>
					<td>购买人</td>
					<td>业务员</td>
					<td>产品名称</td>
					<td>产品描述</td>
					<td>产品价格</td>
					<td>订单状态</td>
					<td>操作</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${orders }" var="order" varStatus="status">
					<tr>
						<td>${status.index+1 }</td>
						<td>${order.orderNo }</td>
						<td>${order.buyName }</td>
						<td>${order.salesMan }</td>
						<td>${order.productName }</td>
						<td>${order.description }</td>
						<td>${order.productPrice }</td>

						<td><c:if test="${order.orderStatus  eq 0 }">暂未更新</c:if> <c:if
								test="${order.orderStatus  eq 1 }">与客户签订合同</c:if> <c:if
								test="${order.orderStatus  eq 2 }">收齐资料</c:if> <c:if
								test="${order.orderStatus  eq 3 }">递交渠道处</c:if> <c:if
								test="${order.orderStatus  eq 4 }">审核阶段</c:if> <c:if
								test="${order.orderStatus  eq 5 }">下款</c:if> <c:if
								test="${order.orderStatus  eq 6 }">收费</c:if> <c:if
								test="${order.orderStatus  eq 7 }">完成服务</c:if></td>
						<td><input type="button" value="更新状态"
							onclick="updateOrder(${order.id });"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script type="text/javascript">
$(function() {
	  $("#updateOrder").hide();
});

</script>
<script type="text/javascript">
function updateOrder(id){
	alert(id);
	 $("#content").hide();
	$.post("updateOrder/"+id+"", function(data) {
		alert("===" + data);
		 $("#updateOrder").show();
		 $("#updateOrder").html(data);
		});
}

</script>
<jsp:include page="updateOrder.jsp"></jsp:include>

</html>