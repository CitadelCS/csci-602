package edu.citadel.main;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.annotation.Order;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
public class RestApiApplicationTests {

	@Test
	@Order(1)
	public void contextLoads() {}

}

