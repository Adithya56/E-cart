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
	public String showPaymentPage(Model model) {
		// Generate the order and get the order ID
		try {
			System.out.println("entered.......");
			int amountInPaise = 1000; // Amount in paise (e.g., ₹10)
			String currency = "INR";
			String orderId = razorpayService.createOrder(amountInPaise, currency);
			System.out.println(orderId);
			System.out.println("hii");
			model.addAttribute("orderId", orderId);
			model.addAttribute("amount", amountInPaise);
			model.addAttribute("currency", currency);
		} catch (Exception e) {
			// Handle exception if order creation fails
			System.out.println(e);
			return "error";
		}
		return "payment";

	}
}
