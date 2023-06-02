package razorpay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PaymentController {

	@Autowired
	private RazorpayService razorpayService;

	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String showPaymentOptions(Model model) {
		// try {
		// RazorpayClient razorpayClient = new RazorpayClient(razorpayService.getRazorpayApiKey(),
		// razorpayService.getRazorpayApiSecret());
		//
		// // PaymentClient paymentClient = razorpayClient.payments; // Use the 'payments' client instance
		// JSONObject obj = new JSONObject();
		// obj.put("amount", 1000);
		// obj.put("currency", "INR");
		// obj.put("reciept", "hello123");
		// obj.put("payment-_capture", true);
		// Order order = razorpayClient.orders.create(obj);
		// System.out.println(order.toString());
		/*
		 * orderId=order.get("id"); orderId=razorpayService.createOrder(1000, "INR");
		 */
		/*
		 * JSONArray paymentMethods = new JSONArray();
		 * 
		 * List<Payment> payments = paymentClient.fetchAll(); System.out.println("entered"); System.out.println(payments
		 * + "hello"); for (Payment payment : payments) {
		 * 
		 * JSONObject method = new JSONObject(); method.put("name", (Object) payment.get("name")); // Explicitly cast to
		 * Object // Add other details as needed System.out.println(payment); paymentMethods.put(method); }
		 * 
		 * model.addAttribute("paymentMethods", paymentMethods);
		 */
		// } catch (Exception e) {
		// System.out.println(e);
		// model.addAttribute("errorMessage", "Failed to retrieve payment options");
		// }
		return "payment";
	}
}
