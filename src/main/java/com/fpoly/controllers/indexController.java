package com.fpoly.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fpoly.Service.SchoolService;
import com.fpoly.dao.NewDao;
import com.fpoly.dao.SchoolDao;
import com.fpoly.dao.UserCommentDao;
import com.fpoly.entity.Major;
import com.fpoly.entity.New;
import com.fpoly.entity.School;
import com.fpoly.entity.UserComments;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/index")
public class indexController {
	
	@Autowired
	private SchoolDao shoolDao;

    @Autowired
    private UserCommentDao userDao;

    @Autowired
    private NewDao newDao;

    @Autowired
    private SchoolService schoolService;

    @GetMapping("/home")
    public String home(Model model) {
        List<UserComments> allComments = userDao.findAll();
        List<UserComments> filteredComments = allComments.stream()
            .filter(comment -> Boolean.TRUE.equals(comment.getStatus()))
            .collect(Collectors.toList());
        model.addAttribute("comments", filteredComments);

        List<New> list_new = newDao.findAll();
        model.addAttribute("list_new", list_new);

        // Hiển thị 3 trường
        model.addAttribute("schools", shoolDao.findTop3By());

        // Đổ dữ liệu vào combobox ngành
        List<Major> majors = schoolService.getAllMajors();
        model.addAttribute("majors", majors);

        return "index";
    }

    @PostMapping("/comments/create")
    public String createComment(@ModelAttribute UserComments user, Model model) {
        userDao.save(user);
        return "redirect:/index/home";
    }

    @GetMapping("/search")
    public String searchSchools(@RequestParam(value = "name", required = false) String name,
                                @RequestParam(value = "address", required = false) String address,
                                @RequestParam(value = "minPoint", required = false) Double minPoint,
                                @RequestParam(value = "maxPoint", required = false) Double maxPoint,
                                @RequestParam(value = "majorName", required = false) String majorName,
                                Model model) {
        List<School> filteredSchools = schoolService.findSchoolsByCriteria(name, address, minPoint, maxPoint, majorName);

        model.addAttribute("schools", filteredSchools);
        // Đổ dữ liệu vào combobox ngành
        List<Major> majors = schoolService.getAllMajors();
        model.addAttribute("majors", majors);

        return "index"; 
    }
    
}
