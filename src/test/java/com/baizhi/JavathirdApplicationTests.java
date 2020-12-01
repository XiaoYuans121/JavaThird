package com.baizhi;

import com.baizhi.dao.UserDao;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class JavathirdApplicationTests {

    @Autowired
    private UserDao userDao;

    @Test
    void contextLoads() {
        userDao.findAll().forEach(s-> System.out.println(s));
    }

}
