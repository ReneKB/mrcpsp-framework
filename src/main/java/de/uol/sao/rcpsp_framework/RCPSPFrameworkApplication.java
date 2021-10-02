package de.uol.sao.rcpsp_framework;

import de.uol.sao.rcpsp_framework.model.Benchmark;
import de.uol.sao.rcpsp_framework.services.BenchmarkLoaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

import java.util.Arrays;

@SpringBootApplication
public class RCPSPFrameworkApplication {

    @Autowired
    BenchmarkLoaderService benchmarkLoaderService;

    public static void main(String[] args) {
        SpringApplication.run(RCPSPFrameworkApplication.class, args);
    }

    @Bean
    public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
        return args -> {
            Benchmark benchmark = benchmarkLoaderService.loadBenchmark("j301_1.mm");
            System.out.println(Arrays.asList(args));
        };
    }

}
