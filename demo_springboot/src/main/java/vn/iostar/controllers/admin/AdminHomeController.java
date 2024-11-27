package vn.iostar.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminHomeController {
	@GetMapping("/")
	public String index() {
		return "/home";
	}
}
