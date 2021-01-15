package com.claim.wordsOfWisdom;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;

@SpringBootApplication
@ComponentScan(basePackages="com.claim")
public class WordsOfWisdoApplication {

	public static void main(String[] args) {
		SpringApplication.run(WordsOfWisdoApplication.class, args);
	}

}

