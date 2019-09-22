package org.octa.pmhub.web;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.octa.pmhub.event.RegistrationCompleteEvent;
import org.octa.pmhub.model.User;
import org.octa.pmhub.service.api.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponentsBuilder;

@Controller
@RequestMapping("web/auth")
public class AuthController {

	@Autowired
	private UserService userService;

	@Autowired
	ApplicationEventPublisher eventPublisher;

	@GetMapping("login")
	public ModelAndView loadLoginPage() {
		ModelAndView model = new ModelAndView();

		model.setViewName("loginPage");

		return model;
	}

	@PostMapping("signup")
	public ModelAndView signup(@ModelAttribute("user") User user, UriComponentsBuilder ucBuilder,
			HttpServletRequest request, Locale locale) {

		User persistedUser = userService.save(user);
		String server = "http://" + request.getLocalName() + ":" + request.getLocalPort() + request.getContextPath()
				+ "/web/op/confirm";
		eventPublisher.publishEvent(new RegistrationCompleteEvent(persistedUser, locale, server));

		return new ModelAndView("redirect:signup-success");
	}

	@GetMapping("signup-success")
	public ModelAndView signupSuccess() {
		ModelAndView model = new ModelAndView();
		model.setViewName("signupSuccessPage");
		return model;
	}

}
