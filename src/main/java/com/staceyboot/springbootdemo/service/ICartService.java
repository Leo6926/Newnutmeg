package com.staceyboot.springbootdemo.service;

public interface ICartService {

	
	/**
     * 將商品加入到購物車中
     * @param uid 用戶uid
     * @param pid 商品pid
     * @param amount 添加的商品的數量
     * @param username 修改者
     */ 
    void addToCart(Integer uid,
                   Integer pid,
                   Integer amount,
                   String username);
}
