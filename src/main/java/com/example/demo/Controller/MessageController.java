package com.example.demo.Controller;

import com.example.demo.Service.MessageService;
import com.example.demo.model.Message;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.security.web.csrf.CsrfToken;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MessageController {
    private final MessageService messageService;

    public MessageController(MessageService messageService) {
        this.messageService = messageService;
    }

    @GetMapping("/home")
    public String messages(Model model, HttpServletRequest request) {
        CsrfToken csrfToken = (CsrfToken) request.getAttribute(CsrfToken.class.getName());
        model.addAttribute("csrfToken", csrfToken);
        model.addAttribute("messages", messageService.allMessages());
        return "home";
    }

    @PostMapping("/home/message/create")
    public String messageFromNetwork(@ModelAttribute Message message) {
        messageService.createMessage(message);
        return "redirect:/home";
    }
}
