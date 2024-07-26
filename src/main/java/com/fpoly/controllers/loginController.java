package com.fpoly.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fpoly.dao.AccountDao;
import com.fpoly.entity.Account;
import com.fpoly.Service.SessionService;

@Controller
public class loginController {

    @Autowired
    AccountDao dao;

    @Autowired
    SessionService session;

    List<Account> laccount;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin(Model model) {
        laccount = dao.findAll();
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String checkLogin(@RequestParam("userName") Optional<String> userName,
                             @RequestParam("passWord") Optional<String> passWord, Model model) {
        String name = userName.orElse(null);
        String pw = passWord.orElse(null);
        if (name == null || name.isBlank() || pw == null || pw.isBlank()) {
            model.addAttribute("mes", "Email và password không được trống");
            return "login";
        } else {
            Account user = dao.findByUserName(name);
            if (user == null) {
                model.addAttribute("mes", "Tài khoản không tồn tại");
                return "login";
            } else {
                if (user.getPassWord().equals(pw)) {
                    session.set("userSes", user);
                    model.addAttribute("mes", "Đăng nhập thành công!");
                    return "redirect:/admin/home"; // Chuyển hướng đến trang admin (đảm bảo rằng bạn có URL này)
                } else {
                    model.addAttribute("mes", "Email hoặc mật khẩu không chính xác");
                    return "login";
                }
            }
        }
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout() {
        Account user = session.get("userSes");
        if (user != null) {
            session.remove("userSes");
        }
        return "redirect:/index/home";
    }
}
