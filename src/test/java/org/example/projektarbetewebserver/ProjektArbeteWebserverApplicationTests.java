package org.example.projektarbetewebserver;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest(properties = {
        "app.jwt.secret=test-secret-key-that-is-long-enough-for-jwt",
        "app.jwt.expiration-ms=3600000"
})
class ProjektArbeteWebserverApplicationTests {

    @Test
    void contextLoads() {
    }

}
