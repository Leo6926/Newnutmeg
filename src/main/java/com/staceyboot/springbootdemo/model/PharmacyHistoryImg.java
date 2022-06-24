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
@Table(name = "pharmacy_history_img")
public class PharmacyHistoryImg {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "p_history_img_id")
	private Integer pHistoryImgId;
	
	@Lob
	@Column(name = "p_history_img_file")
	private byte[] pHistoryImgFile;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name ="fk_p_history_id", referencedColumnName = "p_history_id")
	private PharmacyHistory pharmacyHistory;

	public Integer getpHistoryImgId() {
		return pHistoryImgId;
	}

	public void setpHistoryImgId(Integer pHistoryImgId) {
		this.pHistoryImgId = pHistoryImgId;
	}

	public byte[] getpHistoryImgFile() {
		return pHistoryImgFile;
	}

	public void setpHistoryImgFile(byte[] pHistoryImgFile) {
		this.pHistoryImgFile = pHistoryImgFile;
	}
	
	
	
}
