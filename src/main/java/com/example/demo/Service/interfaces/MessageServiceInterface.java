package com.example.demo.Service.interfaces;

import com.example.demo.model.Message;

import java.util.List;

public interface MessageServiceInterface {
    List<Message> allMessages();
    void createMessage(Message message);
    void deleteMessage(Message message);

}
