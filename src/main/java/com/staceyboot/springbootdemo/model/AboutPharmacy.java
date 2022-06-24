package com.staceyboot.springbootdemo.model;


import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;



@Entity
@Table(name="about_pharmacy")
public class AboutPharmacy {
	
	@Id
	@Column(name = "aboutp_id")
	private Integer aboutPId;
	
	@Column(name = "aboutp_title")
	private String aboutPTitle;
	
	@Column(name = "aboutp_context")
	private String aboutPContent;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "aboutPharmacy", cascade = CascadeType.ALL)
	private Set<AboutPharmacyImg> aboutPharmacyImg = new LinkedHashSet<AboutPharmacyImg>();
	
	public AboutPharmacy() {}

	public Integer getAboutPId() {
		return aboutPId;
	}

	public void setAboutPId(Integer aboutPId) {
		this.aboutPId = aboutPId;
	}

	public String getAboutPTitle() {
		return aboutPTitle;
	}

	public void setAboutPTitle(String aboutPTitle) {
		this.aboutPTitle = aboutPTitle;
	}

	public String getAboutPContent() {
		return aboutPContent;
	}

	public void setAboutPContent(String aboutPContent) {
		this.aboutPContent = aboutPContent;
	}

	public Set<AboutPharmacyImg> getAboutPharmacyImg() {
		return aboutPharmacyImg;
	}

	public void setAboutPharmacyImg(Set<AboutPharmacyImg> aboutPharmacyImg) {
		this.aboutPharmacyImg = aboutPharmacyImg;
	}




	
	
}
