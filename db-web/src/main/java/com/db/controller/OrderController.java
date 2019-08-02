package com.db.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.db.pojo.Cart;
import com.db.pojo.Order;
import com.db.pojo.OrderItem;
import com.db.service.DubboCartService;
import com.db.service.DubboOrderService;
import com.db.util.UserThreadLocal;
import com.db.vo.SysResult;

@Controller
@RequestMapping("/order")
public class OrderController {

	@Reference(timeout = 3000, check = false)
	private DubboCartService cartService;
	@Reference(timeout = 3000, check = false)
	private DubboOrderService orderService;

	@RequestMapping("/create/{itemIds}")
	public String create(Model model, @PathVariable Long... itemIds) {
		// 获取用户的购物车信息
		Long userId = UserThreadLocal.get().getId();
		List<Cart> cartList = cartService.findCartListByIds(userId, itemIds);
		model.addAttribute("carts", cartList);
		return "order-cart"; // 跳转页面
	}

	@RequestMapping("/submit")
	@ResponseBody
	public SysResult saveOrder(Order order) {
		Long userId = UserThreadLocal.get().getId();
		order.setUserId(userId);
		// 1.业务要求返回 orderId号
		String orderId = orderService.saveOrder(order);
		// 2.校验orderId是否有值
		if (StringUtils.isEmpty(orderId)) {
			return SysResult.fail();
		}
		return SysResult.success(orderId);
	}

	@RequestMapping("/success")
	public String findOrderById(String id, Model model) {
		Order order = orderService.findOrderById(id);
		model.addAttribute("order", order);
		List<String> itemIds = orderService.findItemIdsByOrderId(order.getOrderId());
		Long userId = UserThreadLocal.get().getId();
		cartService.deleteCartByItemsId(itemIds, userId);
		return "success";
	}

	@RequestMapping("/search")
	@ResponseBody
	public SysResult searchOrderByKey(String key) {
		Long id = UserThreadLocal.get().getId();
		List<Order> orderList = orderService.findOrderByKey(key, id);
		return SysResult.success(orderList);
	}

	@RequestMapping("/delete")
	@ResponseBody
	public SysResult deleteOrderById(String orderId) {
		int rows = orderService.deleteOrderById(orderId);
		if (rows == 0) {
			return SysResult.fail();
		}
		return SysResult.success();
	}

	/* 根据订单id查询 */
	@RequestMapping("/comment")
	public String commentOrder(String orderId, Model model) {
		List<OrderItem> orderList = orderService.commentOrderById(orderId);
		// for (OrderItem orderItem : orderList) {
		model.addAttribute("orderList", orderList);
		// }
		return "my-order-comment";
	}

	@SuppressWarnings("deprecation")
	@RequestMapping("/checkOrder")
	public String checkOrder(String orderId, Model model) {
		Order order = orderService.findOrderById(orderId);
		model.addAttribute("order", order);
		Date date = order.getCreated();
		Calendar rightNow = Calendar.getInstance();
		rightNow.setTime(date);
		int hours = rightNow.getTime().getHours();
		System.out.println(hours);
		if (hours > 23 || hours < 11) {
			rightNow.add(Calendar.HOUR, 12);
		} else {
			rightNow.add(Calendar.DAY_OF_YEAR, 1);
		}
		date = rightNow.getTime();
		System.out.println("到货时间" + date);
		model.addAttribute("reachTime", date);
		return "order-check";
	}

	@RequestMapping("/myOrder")
	public String backMyOrder(Model model) {
		Long id = UserThreadLocal.get().getId();
		List<Order> orders = orderService.findOrderByUserId(id);
		Map<String, Object> attributes = new HashMap<String, Object>();
		int status1 = 0;
		int status2 = 0;
		int status6 = 0;
		for (Order order : orders) {
			switch (order.getStatus()) {
			case 1:
				status1++;
				break;
			case 2:
				status2++;
				break;
			case 6:
				status6++;
				break;
			}
		}
		attributes.put("orders", orders);
		attributes.put("status1", status1);
		attributes.put("status2", status2);
		attributes.put("status6", status6);
		System.out.println(attributes);
		model.addAllAttributes(attributes);
		return "my-orders";

	}

	@RequestMapping("cash")
	@ResponseBody
	public SysResult cashOrder(String orderId) {
		int rows = orderService.cashOrder(orderId);
		if (rows < 1) {
			return SysResult.fail();
		}
		return SysResult.success();
	}

}
