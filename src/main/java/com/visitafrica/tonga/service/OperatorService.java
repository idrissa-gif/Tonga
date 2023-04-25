package com.visitafrica.tonga.service;

import com.visitafrica.tonga.model.Operator;
import com.visitafrica.tonga.repository.OperatorRepository;
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

    public Operator getOperatorById(Long operatorId) {
        return operatorRepository.findById(operatorId).get();
    }

    public void updateOperator(Operator operator) {
        operatorRepository.updateOperator(operator.getId(), operator.getName(), operator.getTours(), operator.getCountries(),operator.getRate(),operator.getImage(),operator.getDescription());
    }

    public long getOperatorCount() {
        return operatorRepository.count();
    }
}