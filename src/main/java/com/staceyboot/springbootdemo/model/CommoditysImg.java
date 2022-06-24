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
@Table(name = "commoditys_img")
public class CommoditysImg {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "commoditys_img_id")
	private Integer commoditysImgId;
	
	@Lob
	@Column(name = "commoditys_img_file")
	private byte[] commoditysImgFile;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "fk_commoditys_id", referencedColumnName = "commoditys_id")
	private Commoditys commoditys;

	public Integer getCommoditysImgId() {
		return commoditysImgId;
	}

	public void setCommoditysImgId(Integer commoditysImgId) {
		this.commoditysImgId = commoditysImgId;
	}

	public byte[] getCommoditysImgFile() {
		return commoditysImgFile;
	}

	public void setCommoditysImgFile(byte[] commoditysImgFile) {
		this.commoditysImgFile = commoditysImgFile;
	}

	public Commoditys getCommoditys() {
		return commoditys;
	}

	public void setCommoditys(Commoditys commoditys) {
		this.commoditys = commoditys;
	}
	
	
	
}
