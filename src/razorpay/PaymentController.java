package razorpay;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.razorpay.Payment;
import com.razorpay.PaymentClient;
import com.razorpay.RazorpayClient;

@Controller
public class PaymentController {

	@Autowired
	private RazorpayService razorpayService;

	@RequestMapping(value = "/payment-options", method = RequestMethod.GET)
	public String showPaymentOptions(Model model) {
		try {
			RazorpayClient razorpayClient = new RazorpayClient(razorpayService.getRazorpayApiKey(),
					razorpayService.getRazorpayApiSecret());

			PaymentClient paymentClient = razorpayClient.payments; // Use the 'payments' client instance

			JSONArray paymentMethods = new JSONArray();

			List<Payment> payments = paymentClient.fetchAll();
			System.out.println("entered");
			System.out.println(payments + "hello");
			for (Payment payment : payments) {

				JSONObject method = new JSONObject();
				method.put("name", (Object) payment.get("name")); // Explicitly cast to Object
				// Add other details as needed
				System.out.println(payment);
				paymentMethods.put(method);
			}

			model.addAttribute("paymentMethods", paymentMethods);
		} catch (Exception e) {
			System.out.println(e);
			model.addAttribute("errorMessage", "Failed to retrieve payment options");
		}

		return "payment-options";
	}

	// Other controller methods...
}
