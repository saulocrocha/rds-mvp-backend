package br.com.somos.mvp_rds_backend.configurations;

import okhttp3.OkHttpClient;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

@Configuration
public class HttpClientBuilderFactory {

    @Bean
    @Scope(value = ConfigurableBeanFactory.SCOPE_SINGLETON)
    public OkHttpClient.Builder okHttpClient() {
        return new OkHttpClient.Builder();
    }

}
