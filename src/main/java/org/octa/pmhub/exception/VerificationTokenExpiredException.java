package org.octa.pmhub.exception;

public class VerificationTokenExpiredException extends RuntimeException {

	private static final long serialVersionUID = 1L;

	public VerificationTokenExpiredException(String message) {
		super(message);
	}
}