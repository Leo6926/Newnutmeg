package com.staceyboot.springbootdemo.model;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "pharmacy_history")
public class PharmacyHistory {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "p_history_id")
	private Integer pHistoryId;
	
	@Column(name = "p_history_title")
	private String pHistoryTitle;
	
	@Column(name = "p_history_content")
	private String pHistoryContent;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "pharmacyHistory", cascade=CascadeType.ALL)
	private Set<PharmacyHistoryImg> pharmacyHistoryImg = new LinkedHashSet<PharmacyHistoryImg>();
	
	public Integer getpHistoryId() {
		return pHistoryId;
	}

	public void setpHistoryId(Integer pHistoryId) {
		this.pHistoryId = pHistoryId;
	}

	public String getpHistoryTitle() {
		return pHistoryTitle;
	}

	public void setpHistoryTitle(String pHistoryTitle) {
		this.pHistoryTitle = pHistoryTitle;
	}

	public String getpHistoryContent() {
		return pHistoryContent;
	}

	public void setpHistoryContent(String pHistoryContent) {
		this.pHistoryContent = pHistoryContent;
	}

	public Set<PharmacyHistoryImg> getPharmacyHistoryImg() {
		return pharmacyHistoryImg;
	}

	public void setPharmacyHistoryImg(Set<PharmacyHistoryImg> pharmacyHistoryImg) {
		this.pharmacyHistoryImg = pharmacyHistoryImg;
	}
	
	
	
}
