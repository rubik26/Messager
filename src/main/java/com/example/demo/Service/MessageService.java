package com.example.demo.Service;

import com.example.demo.Service.interfaces.MessageServiceInterface;
import com.example.demo.model.Message;
import org.springframework.stereotype.Service;
import com.example.demo.repo.MessageRepo;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class MessageService implements MessageServiceInterface {

    private final MessageRepo messageRepo;

    public MessageService(MessageRepo messageRepo) {
        this.messageRepo = messageRepo;
    }

    public List<Message> allMessages(){
        return messageRepo.findAll();
    }

    public void createMessage(Message message){
        message.setTimeCreate(LocalDateTime.now());
        messageRepo.save(message);
    }

    public void deleteMessage(Message message){
        messageRepo.delete(message);
    }
}
