package razorpay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

@Configuration
@PropertySource("classpath:application.properties")
public class AppConfig {

	@Autowired
	private Environment env;

	@Bean
	public RazorpayService razorpayService() {
		RazorpayService razorpayService = new RazorpayService();
		razorpayService.setRazorpayApiKey(env.getProperty("razorpay.api.key"));
		razorpayService.setRazorpayApiSecret(env.getProperty("razorpay.api.secret"));
		return razorpayService;
	}

	// Other bean definitions and configuration methods...
}
