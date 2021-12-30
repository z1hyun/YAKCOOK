package com.yakcook.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yakcook.product.service.ServiceProduct;
import com.yakcook.product.vo.CategoryVo;
import com.yakcook.product.vo.ProductVo;
import com.yakcook.product.vo.TagVo;

@WebServlet("/updateProduct")
public class UpdateProduct extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 카테고리 불러오기
		List<CategoryVo> categoryList = new ServiceProduct().registerCategoryList();
		req.setAttribute("categoryList", categoryList);
		
		// 태그 불러오기
		List<TagVo> tagList = new ServiceProduct().registerTagList();
		req.setAttribute("tagList", tagList);
		
		
		// 수정하기 버튼 클릭시 각 기본값들 들어가 있게 하기
		int updateProuctNo = Integer.parseInt(req.getParameter("updateProuctNo"));
		System.out.println(updateProuctNo);
		List<ProductVo> list = new ServiceProduct().updateProductInfo(updateProuctNo);
		req.setAttribute("updateProuctNo", updateProuctNo);
		req.setAttribute("updateProductInfo", list);
		
		
		
		req.getRequestDispatcher("/WEB-INF/views/product/updateProduct.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 제품 수정
		String productNo = req.getParameter("productNo");
		String categoryNum = req.getParameter("productCategory");
		String productName = req.getParameter("productName");
		String productPrice = req.getParameter("productPrice");
		String productAmount = req.getParameter("productAmount");
		String productContents = req.getParameter("productContents");
		
		System.out.println("productNo :" + productNo);
		System.out.println("categoryNum : " + categoryNum);
		System.out.println(productName);
		System.out.println(productPrice);
		System.out.println(productAmount);
		System.out.println(productContents);
		
		ProductVo pv = new ProductVo();
		pv.setProductNo(Integer.parseInt(productNo));
		pv.setCategoryNo(Integer.parseInt(categoryNum));
		pv.setProductName(productName);
		pv.setPrice(Integer.parseInt(productPrice));
		pv.setInventory(Integer.parseInt(productAmount));
		pv.setProductContents(productContents);
		
		// 태그
		int tagNo1 = Integer.parseInt(req.getParameter("productTag1"));
		int tagNo2 = Integer.parseInt(req.getParameter("productTag2"));
		int tagNo3 = Integer.parseInt(req.getParameter("productTag3"));
		
		int resultTag = 0;
		if(tagNo1 != tagNo2 && tagNo1 != tagNo3 && tagNo2 != tagNo3) {
			resultTag = new ServiceProduct().updateProductTag(pv, tagNo1, tagNo2, tagNo3);			
		} else if(tagNo1 == 0 || tagNo2 == 0 || tagNo3 == 0) {
			resultTag = new ServiceProduct().updateProductTag(pv, tagNo1, tagNo2, tagNo3);
		}
		System.out.println("resultTag : " + resultTag);
		
		if(resultTag == 3) {
			req.getRequestDispatcher("/WEB-INF/views/product/manageProduct.jsp").forward(req, resp);
		} else {
			req.setAttribute("msg", "제품 수정에 실패하였습니다. 태그 중복을 확인해주세요.");
			req.getRequestDispatcher("/WEB-INF/views/product/registerErrorProduct.jsp").forward(req, resp);
		}
	}
}