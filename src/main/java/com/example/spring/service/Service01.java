package com.example.spring.service;

import com.example.spring.mapper.Mapper09;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class Service01 {

    private final Mapper09 mapper09;

    @Transactional
    public void transferMoney1(Integer money) {
        mapper09.updateMoney1(money);
        mapper09.updateMoney2(money);
    }

    @Transactional
    public void transferMoney2(Integer money) {
        mapper09.updateMoney1(money);
        int a = 0;
        int b = 5 / a;
        mapper09.updateMoney2(money);
    }

    @Transactional
    public void transferMoney3(Integer money) throws ClassNotFoundException {

    }

    @Transactional
    public void transferMoney4(Integer money) {
        mapper09.updateMoney1(money);
        try {
            Class.forName("j.l.String");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        mapper09.updateMoney2(money);
    }
}
