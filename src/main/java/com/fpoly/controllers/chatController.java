package com.fpoly.controllers;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fpoly.dao.MessageDao;
import com.fpoly.entity.Message;

import java.util.List;

@Controller
public class chatController {

    @Autowired
    private MessageDao messageRepository;

    @GetMapping("/")
    public String chatPage(Model model) {
        List<Message> messages = messageRepository.findAll();
        model.addAttribute("messages", messages);
        return "chat";
    }

    @PostMapping("/send")
    public String sendMessage(@RequestParam String sender, @RequestParam String content) {
        Message message = new Message();
        message.setSender(sender);
        message.setContent(content);
        messageRepository.save(message);
        return "redirect:/";
    }
}
