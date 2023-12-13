package com.tenco.toyproject.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tenco.toyproject.repository.entity.Product;
import com.tenco.toyproject.service.ProductService;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	@Autowired
	private HttpSession session;
	@Autowired
	private ProductService productService;
	// 예외처리 해야함
	@GetMapping("/main")
	public String main(HttpServletRequest request, HttpServletResponse response, Model model) {
		//최근 본 상품
		ArrayList<Integer> cookieList = new ArrayList<Integer>();
		Cookie[] cookies = request.getCookies();
		ArrayList<Integer> goodsCookie = new ArrayList<Integer>();
		if(cookies != null) {
			for(int i = 0 ; i<cookies.length; i++) {
				if(cookies[i].getName().startsWith("goods")) {
					goodsCookie.add(Integer.parseInt(cookies[i].getValue()));
				}
			}			
		}
		System.out.println(goodsCookie);
//		필요없는 쿠키 삭제
		if(goodsCookie.size() >= 4) {
			int count = goodsCookie.size() - 3;
			for(int i = 0 ; i<cookies.length; i++) {
				if(cookies[i].getName().startsWith("goods")) {
					cookies[i].setPath("/");
					cookies[i].setValue(null);
					cookies[i].setMaxAge(0);			
					response.addCookie(cookies[i]);
					System.out.println(goodsCookie.size());
					
					goodsCookie.remove(i);
					count--;					
				}
				if(count == 0) {
					break;
				}
			}
		}
		
		ArrayList<Product> goodsProduct = new ArrayList<>();
		for(int i : goodsCookie) {
			Product product = productService.findById(i);
			goodsProduct.add(product);
			
		}
		Collections.reverse(goodsProduct);
		model.addAttribute("goodsProduct", goodsProduct);
		System.out.println(goodsProduct.get(0).toString());
		return "mypage/main";
	}
}
