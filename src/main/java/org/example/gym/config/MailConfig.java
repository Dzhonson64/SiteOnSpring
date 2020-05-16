package org.example.gym.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
public class MailConfig {
    @Bean
    public JavaMailSender getMailSemder(){
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();

        return mailSender;
    }
}
