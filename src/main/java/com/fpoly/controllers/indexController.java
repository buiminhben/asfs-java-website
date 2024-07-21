package com.fpoly.controllers;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fpoly.dao.UserCommentDao;
import com.fpoly.entity.UserComments;

@Controller
@RequestMapping("/index")
public class indexController {

    @Autowired
    private UserCommentDao userDao;

    @GetMapping("/home")
    public String home(Model model) {
    	List<UserComments> allComments = userDao.findAll();
        List<UserComments> filteredComments = allComments.stream()
            .filter(comment -> Boolean.TRUE.equals(comment.getStatus()))
            .collect(Collectors.toList());
        System.out.println("Comments: " + filteredComments); // Debugging line
        model.addAttribute("comments", filteredComments);
        return "index";
    }


    @PostMapping("/comments/create")
    public String createComment(@ModelAttribute UserComments user, Model model) {
        // Lưu dữ liệu vào cơ sở dữ liệu
        userDao.save(user);
        // Redirect về trang liên hệ hoặc trang bạn muốn
        return "redirect:/index/home";
    }

 
  
}
