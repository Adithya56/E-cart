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
		return "payment";
	}
}
