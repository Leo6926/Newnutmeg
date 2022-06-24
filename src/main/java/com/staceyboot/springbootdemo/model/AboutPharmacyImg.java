package com.staceyboot.springbootdemo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "about_pharmacy_img")
public class AboutPharmacyImg {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "aboutp_img_id")
	private Integer abountPImgId;
	
	@Lob
	@Column(name = "aboutp_img_file")
	private byte[] aboutPImgFile;
		
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "fk_aboutp_id", referencedColumnName = "aboutp_id")
	private AboutPharmacy aboutPharmacy;
	
	public AboutPharmacyImg() {}

	public Integer getAbountPImgId() {
		return abountPImgId;
	}

	public void setAbountPImgId(Integer abountPImgId) {
		this.abountPImgId = abountPImgId;
	}

	public byte[] getAboutPImgFile() {
		return aboutPImgFile;
	}

	public void setAboutPImgFile(byte[] aboutPImgFile) {
		this.aboutPImgFile = aboutPImgFile;
	}

	
}




