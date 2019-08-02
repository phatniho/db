package com.db.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.db.pojo.Order;

public interface OrderMapper extends BaseMapper<Order> {

	@Select("select * from db_order where user_id=#{userId} order by updated desc")
	List<Order> findOrdersByUserId(Long userId);

}