package org.octa.pmhub.model;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name = "VerificationToken", catalog = "pm_hub")
public class VerificationToken implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private static final int EXPIRATION = 60 * 24;

	private int userId;
	private String token;
	private Date expiryDatetime;
	private Date verifiedDatetime;
	private User user;
	
	public VerificationToken() {}
	
	public VerificationToken(String token, User user) {
		this.token = token;
		this.user = user;
		this.expiryDatetime = calculateExpiryDate();
	}
	
	public VerificationToken(int userId, String token, Date expiryDatetime) {
		this.userId = userId;
		this.token = token;
		this.expiryDatetime = expiryDatetime;
	}

	@GenericGenerator(name = "pm_hub.VerificationTokenIdGenerator", strategy = "foreign", parameters = @Parameter(name = "property", value = "user"))
	@Id
	@GeneratedValue(generator = "pm_hub.VerificationTokenIdGenerator")
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Column(name = "token", nullable = false, length = 200)
	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "expiryDatetime", nullable = false, length = 19)
	public Date getExpiryDatetime() {
		return expiryDatetime;
	}

	public void setExpiryDatetime(Date expiryDatetime) {
		this.expiryDatetime = expiryDatetime;
	}
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "verifiedDatetime", nullable = false, length = 19)
	public Date getVerifiedDatetime() {
		return verifiedDatetime;
	}

	public void setVerifiedDatetime(Date verifiedDatetime) {
		this.verifiedDatetime = verifiedDatetime;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	private Date calculateExpiryDate() {
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Timestamp(cal.getTime().getTime()));
		cal.add(Calendar.MINUTE, EXPIRATION);
		return new Date(cal.getTime().getTime());
	}

}
