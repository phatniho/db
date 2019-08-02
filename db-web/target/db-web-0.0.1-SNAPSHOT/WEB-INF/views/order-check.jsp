<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单详情</title>
<script type="text/javascript" src="/js/jquery-1.2.6.min.js"></script>
</head>
<style>
#myorder {
	font-size: 20px;
	color:#fff;
	background: write;
	margin: 0 auto;
	line-height:50px;
	width: 30%;
	
}
body{
	background-size:cover;
	background-image:url("/images/wuliu.jpg");
	background-repeat: no-repeat;
}
a{
	text-decoration: none;
	color: red;

	}
#chui{
	border: none;
	width: 100px;
	height: 25px;
	cursor: pointer;


}
</style>
<body>
	<table id="myorder">
		<thead>
			<th><h1>订单详情</h1></th>
		</thead>
		<tbody>
			<tr>
				<td>订单编号：</td>
				<td>${order.orderId}</td>
			</tr>
			<tr>
				<td>下单时间：</td>
				<td>${order.created.toLocaleString()}</td>
			</tr>
			<tr>
				<td>预计到货时间：</td>
				<td>${reachTime.toLocaleString()}</td>
			</tr>
			<tr>
				<td>收货人：</td>
				<td>${order.orderShipping.receiverName}</td>
			</tr>
			<tr>
				<td>收获地址：</td>
				<td>${order.orderShipping.receiverAddress}</td>
			</tr>
			<tr>
				<td><input type="button" value="点击催单" onclick="quickly()" id="chui" /></td>
				<td><a href = "http://www.db.com/order/myOrder.html">返回我的订单！</a></td>
			</tr>
		</tbody>
	</table>
</body>
<script type="text/javascript">

		function quickly() {
			alert("您的订单正由专机配送，速度飞快！！！")
		}
	
</script>
</html>