package com.fpoly.controllers;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fpoly.dao.UserCommentDao;
import com.fpoly.entity.UserComments;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/index")
public class adminController {

    @Autowired
    private UserCommentDao userDao;

    @GetMapping("/admin")
    public String Admin(Model model) {
        List<UserComments> comments = userDao.findAll();
        System.out.println("Comments: " + comments); // Debugging line
        model.addAttribute("comments", comments);
        return "adminComment"; // Ensure this matches your Thymeleaf template name
    }
    
    
    @RequestMapping(value = "/admin/updateStatus/{id}", method = RequestMethod.GET)
	public String update(@PathVariable("id")Integer id, Model model,@RequestParam( name="status")Boolean status) {
    
    	if(status == null) {
    		UserComments userUpdate =userDao.findByUserCommentId(id);
    	    userUpdate.setStatus(false);
    	    userDao.save(userUpdate);
    	}else {
    		UserComments userUpdate =userDao.findByUserCommentId(id);
    	    userUpdate.setStatus(status);
    	    userDao.save(userUpdate);
    	  
    	}
    	
    
    	
//    	if (!userDao.findById(comments.getUserCommentId()).isPresent()) {
//			model.addAttribute("message", "Không được cập nhật nếu chưa có id");
//			model.addAttribute("comments", comments);
//			List<UserComments> comment = userDao.findAll();
//			model.addAttribute("comment", comment);
//			return "adminComment";
//		}
    	 
		return "redirect:/index/admin";
	}
   
    @GetMapping("/delete/{id}")
	public String delete(@PathVariable("id")Integer id, Model model) {
		
    	userDao.deleteById(id);
		return "redirect:/index/admin";
	}

    
}
