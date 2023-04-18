package com.visitafrica.tongaclient.service;


import com.visitafrica.tongaclient.model.Operator;
import com.visitafrica.tongaclient.repository.OperatorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OperatorService {

    @Autowired
    private OperatorRepository operatorRepository;

    public Operator saveOperator(Operator operator) {
        return operatorRepository.save(operator);
    }

    public List<Operator> findOperators() {
        return operatorRepository.findAll();
    }
    public Operator findByName(String name)
    {
        return operatorRepository.findByName(name);
    }

}