package com.visitafrica.tonga.service;

import com.visitafrica.tonga.model.Book;
import com.visitafrica.tonga.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {
    @Autowired
    private BookRepository bookRepository;
    public List<Book> getBooks() {
        return bookRepository.findAll();
    }

    public long getBookCount() {
        return bookRepository.count();
    }
}
