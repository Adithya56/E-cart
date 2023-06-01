package razorpay;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

@Service
public class RazorpayService {

	@Value("${razorpay.api.key}")
	private String razorpayApiKey;

	@Value("${razorpay.api.secret}")
	private String razorpayApiSecret;

	public String createOrder(int amountInPaise, String currency) throws RazorpayException {
		System.out.println("oyy" + razorpayApiKey);
		System.out.println("enter1");
		RazorpayClient razorpayClient = new RazorpayClient("rzp_test_Xe8wdVU6XUBoBd", "Y0kKhdQLoVJQALAJ4iHNN0Sq");
		System.out.println("enter2");
		JSONObject orderRequest = new JSONObject();
		orderRequest.put("amount", amountInPaise);
		orderRequest.put("currency", currency);
		// Add additional order details if required

		Order order = razorpayClient.orders.create(orderRequest);
		return order.get("id").toString();
	}
}
