package com.example.demo.Controller;

import com.example.demo.Service.MessageService;
import com.example.demo.model.Message;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MessageController {
    public final MessageService messageService;

    public MessageController(MessageService messageService) {
        this.messageService = messageService;
    }
    @GetMapping("/")
    public String messages(Model model){
        model.addAttribute("messages", messageService.allMessages());
        return "messages";
    }

    @PostMapping("/message/create")
    public String messageFromNetwork(@ModelAttribute Message message){
         messageService.createMessage(message);
         return "redirect:/";
    }
}
