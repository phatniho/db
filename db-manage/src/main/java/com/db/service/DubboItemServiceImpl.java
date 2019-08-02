package com.db.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.dubbo.config.annotation.Service;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.db.mapper.ItemDescMapper;
import com.db.mapper.ItemMapper;
import com.db.pojo.Item;
import com.db.pojo.ItemDesc;

@Service
public class DubboItemServiceImpl implements DubboItemService {

	@Autowired
	private ItemMapper itemMapper;

	@Autowired
	private ItemDescMapper itemDescMapper;

	@Override
	public ItemDesc findItemDescById(Long descId) {

		return itemDescMapper.selectById(descId);
	}

	@Override
	public Item findItemById(Long itemId) {
		return itemMapper.selectById(itemId);
	}

	@Override
	public List<Item> findItemByName(String q) {

		List<Item> selectList = itemMapper.findItemByName(q);

		System.out.println(selectList);
		return selectList;
	}

	@Override
	public List<Item> selectNameByCid(String cid) {

		QueryWrapper<Item> queryWrapper = new QueryWrapper<Item>();
		queryWrapper.eq("cid", cid);
		List<Item> selectById = itemMapper.selectList(queryWrapper);
		System.out.println(selectById);
		return selectById;
	}

	@Override
	public List<Item> randomSearch() {
		List<Item> list = itemMapper.randomSearch();
		Item item1 = itemMapper.selectById(1474391983l);
		Item item2 = itemMapper.selectById(1474391992l);
		Item item3 = itemMapper.selectById(1474391988l);
		list.add(item1);
		list.add(item2);
		list.add(item3);
		return list;
	}

}
