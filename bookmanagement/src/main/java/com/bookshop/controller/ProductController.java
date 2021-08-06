package com.bookshop.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookshop.bean.MailInfo;
import com.bookshop.dao.ProductDAO;
import com.bookshop.dao.UserDAO;
import com.bookshop.entity.Comment;
import com.bookshop.entity.Product;
import com.bookshop.entity.User;
import com.bookshop.service.CookieService;
import com.bookshop.service.MailService;

@Controller
public class ProductController {

	@Autowired
	ProductDAO pdao;
	

	@Autowired
	CookieService cookie;

	@Autowired
	MailService mail;
	
	@Autowired
	HttpSession session;

	
	/*@RequestMapping("/product/list-by-category/{cid}")
	public String listByCategory(Model model, @PathVariable("cid") Integer categoryId) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("form", user); //ava mỗi product
		List<Product> list = pdao.findByCategoryId(categoryId);
		model.addAttribute("list", list);
		return "product/list";
	}*/
	
	@RequestMapping("/product/list-by-categorys/{cid}")
	public String listByCategorys(Model model, @PathVariable("cid") Integer categoryId) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("form", user); //ava mỗi product
		List<Product> list = pdao.findByCategoryId(categoryId);
		model.addAttribute("list", list);
		return "product/list_copy";
	}

	@RequestMapping("/product/list-by-keywords")
	public String listByKeywords(Model model, @RequestParam("keywords") String keywords) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("form", user); //ava mỗi product
		List<Product> list = pdao.findByKeywords(keywords);
		model.addAttribute("list5", list);
		return "product/list";
	}

	@RequestMapping("/product/list-by-special/{id}")
	public String listBySpecial(Model model, @PathVariable("id") Integer id) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("form", user); //ava mỗi product
		List<Product> list = pdao.findBySpecial(id);
		model.addAttribute("list", list);
		return "product/list_special_full";
	}
	@RequestMapping("/product/list-by-new/{id}")
	public String listByNews(Model model, @PathVariable("id") Integer id) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("form", user); //ava mỗi product
		
		
		List<Product> list = pdao.findBySpecial(id);
		model.addAttribute("list1", list);
		return "product/list-by-new_full";
	}


	@RequestMapping("/product/detail/{id}")
	public String detail(Model model, @PathVariable("id") Integer id) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("form", user); //ava mỗi product
		Product prod = pdao.findById(id);
		model.addAttribute("prod", prod);
		System.out.println(prod.getComments());
		
		Comment entity = new Comment();
		model.addAttribute("comments", prod.getComments());
		
		// Tăng số lần xem
		prod.setViewCount(prod.getViewCount() + 1);
		pdao.update(prod);

		// Hàng cùng loại
		List<Product> list = pdao.findByCategoryId(prod.getCategory().getId());
		model.addAttribute("list", list);

		// Hàng yêu thích
		Cookie favo = cookie.read("favo");
		if (favo != null) {
			String ids = favo.getValue();
			List<Product> favo_list = pdao.findByIds(ids);
			model.addAttribute("favo", favo_list);
		}

		// Hàng đã xem
		Cookie viewed = cookie.read("viewed");
		String value = id.toString();
		if (viewed != null) {
			value = viewed.getValue();
			value += "," + id.toString();
		}
		cookie.create("viewed", value, 10);
		List<Product> viewed_list = pdao.findByIds(value);
		model.addAttribute("viewed", viewed_list);
		model.addAttribute("entity", entity);

		return "product/detail";
	}
	

	@ResponseBody
	@RequestMapping("/product/add-to-favo/{id}")
	public String addToFavorite(Model model, @PathVariable("id") Integer id) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("form", user); //ava mỗi product
		Cookie favo = cookie.read("favo");
		String value = id.toString();
		if (favo != null) {
			value = favo.getValue();
			if (!value.contains(id.toString())) {
				value += "," + id.toString();
			}else {
				return "false";
			}
		}
			cookie.create("favo", value, 30);
			return "true";
		
	}

	@ResponseBody
	@RequestMapping("/product/send-to-friend")
	public String sendToFriend(Model model,MailInfo info,HttpServletRequest req) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("form", user); //ava mỗi product
			//send mail
			info.setSubject("Thông tin hàng hóa");
			try {
				String id=req.getParameter("id");
				String link=req.getRequestURL().toString().replace("send-to-friend", "detail/"+id);
				info.setBody(info.getBody()+"<hr><a href='"+link+"'>Xem chi tiết...</a>");
				mail.send(info);
				return "true";
			} catch (Exception e) {
				e.printStackTrace();
				return "false";
			}
	}
	
	@RequestMapping("/product/favo")
	public String favo(Model model) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("form", user); //ava mỗi product

		// Hàng yêu thích
				Cookie favo = cookie.read("favo");
				if (favo != null) {
					String ids = favo.getValue();
					List<Product> favo_list = pdao.findByIds(ids);
					model.addAttribute("favo", favo_list);
				}
		return "product/favo";
	}
	
	
}
