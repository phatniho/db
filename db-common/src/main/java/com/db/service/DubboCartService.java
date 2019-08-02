package com.db.service;

import java.util.List;

import com.db.pojo.Cart;

public interface DubboCartService {

	List<Cart> findCartById(Long id);

	void deleteCartById(Cart cart);

	void addCart(Cart cart);

	void updateCartNum(Cart cart);

	void deleteCartByItemsId(List<String> itemIds, Long userId);

	public int deleteByIds(Long[] ids);

	List<Cart> findCartListByIds(Long userId, Long... itemIds);
}
