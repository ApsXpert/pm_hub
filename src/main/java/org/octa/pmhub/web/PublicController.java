package org.octa.pmhub.web;

import org.octa.pmhub.service.api.VerificationTokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/web/op")
public class PublicController {
	@Autowired
	private VerificationTokenService tokenService;

	@GetMapping("confirm")
	public ResponseEntity<?> confirmAccount(@RequestParam("token") String token) {
		tokenService.verify(token);
		return new ResponseEntity<>(HttpStatus.OK);
	}
}