package com.visitafrica.tongaclient.service;

import com.visitafrica.tongaclient.model.Book;
import com.visitafrica.tongaclient.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookService {
    @Autowired
    BookRepository bookRepository;
    public void save(Book book) {
        bookRepository.save(book);
    }


}
