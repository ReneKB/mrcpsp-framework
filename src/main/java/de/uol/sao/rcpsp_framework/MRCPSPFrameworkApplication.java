package de.uol.sao.rcpsp_framework;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class MRCPSPFrameworkApplication {

    public static void main(String[] args) {
        SpringApplicationBuilder builder = new SpringApplicationBuilder(MRCPSPFrameworkApplication.class);
        builder.headless(false);
        ConfigurableApplicationContext context = builder.run(args);
    }

}
