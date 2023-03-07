package com.devsuperior.dslearnbds.entities;

import java.time.Instant;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.devsuperior.dslearnbds.entities.pk.EnrollmentPK;

@Entity
@Table(name = "tb_enrollment")
public class Enrollment {
	
	@EmbeddedId
	private EnrollmentPK id = new EnrollmentPK();
	
	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant enrollmentInstant;
	
	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant refundInstant;
	
	private boolean available;
	private boolean onlyUpdate;
	
	public Enrollment() {
	}

	public Enrollment(User user, Offer ofefer, Instant enrollmentInstant, Instant refundInstant, boolean available, boolean onlyUpdate) {
		super();
		id.setUser(user);
		id.setOffer(ofefer);
		this.enrollmentInstant = enrollmentInstant;
		this.refundInstant = refundInstant;
		this.available = available;
		this.onlyUpdate = onlyUpdate;
	}

	public User getStudent() {
		return id.getUser();
	}
	
	public void setStudent(User user) {
		id.setUser(user);
	}
	
	public Offer getOffer() {
		return id.getOffer();
	}
	
	public void setOffer(Offer offer) {
		id.setOffer(offer);
	}

	public Instant getEnrollmentInstant() {
		return enrollmentInstant;
	}

	public void setEnrollmentInstant(Instant enrollmentInstant) {
		this.enrollmentInstant = enrollmentInstant;
	}

	public Instant getRefundInstant() {
		return refundInstant;
	}

	public void setRefundInstant(Instant refundInstant) {
		this.refundInstant = refundInstant;
	}

	public boolean isAvailable() {
		return available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

	public boolean isOnlyUpdate() {
		return onlyUpdate;
	}

	public void setOnlyUpdate(boolean onlyUpdate) {
		this.onlyUpdate = onlyUpdate;
	}
}