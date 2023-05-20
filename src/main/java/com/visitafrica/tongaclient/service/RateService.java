package com.visitafrica.tongaclient.service;

import com.visitafrica.tongaclient.model.Rate;
import com.visitafrica.tongaclient.repository.RateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RateService {
    @Autowired
    private RateRepository rateRepository;

    public Rate find() {
        return rateRepository.find();
    }
}
