package com.staceyboot.springbootdemo.model;

import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "commoditys")
public class Commoditys {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "commoditys_id")
	private Integer commoditysId;
	
	@Column(name = "commoditys_category")
	private String commoditysCategory;
	
	@Column(name = "commoditys_title")
	private String commoditysTitle;
	
	@Column(name = "commoditys_introduce")
	private String commoditysIntroduce;
	
	@Column(name = "commoditys_price")
	private Integer commoditysPrice;
	
	@Column(name = "commoditys_sale_price")
	private Integer commoditysSalePrice;
	
	@Column(name = "commoditys_quantity")
	private Integer commoditysQuantity;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@Column(name = "commoditys_added_time")
	private Date commoditysAddedTime;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@Column(name = "commoditys_takedown_time")
	private Date commoditysTakedownTime;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "commoditys", cascade = CascadeType.ALL)
	private Set<CommoditysImg> commoditysImg = new LinkedHashSet<CommoditysImg>();
	
	public Integer getCommoditysId() {
		return commoditysId;
	}

	public void setCommoditysId(Integer commoditysId) {
		this.commoditysId = commoditysId;
	}

	public String getCommoditysCategory() {
		return commoditysCategory;
	}

	public void setCommoditysCategory(String commoditysCategory) {
		this.commoditysCategory = commoditysCategory;
	}

	public String getCommoditysTitle() {
		return commoditysTitle;
	}

	public void setCommoditysTitle(String commoditysTitle) {
		this.commoditysTitle = commoditysTitle;
	}

	public String getCommoditysIntroduce() {
		return commoditysIntroduce;
	}

	public void setCommoditysIntroduce(String commoditysIntroduce) {
		this.commoditysIntroduce = commoditysIntroduce;
	}

	public Integer getCommoditysPrice() {
		return commoditysPrice;
	}

	public void setCommoditysPrice(Integer commoditysPrice) {
		this.commoditysPrice = commoditysPrice;
	}

	public Integer getCommoditysSalePrice() {
		return commoditysSalePrice;
	}

	public void setCommoditysSalePrice(Integer commoditysSalePrice) {
		this.commoditysSalePrice = commoditysSalePrice;
	}

	public Integer getCommoditysQuantity() {
		return commoditysQuantity;
	}

	public void setCommoditysQuantity(Integer commoditysQuantity) {
		this.commoditysQuantity = commoditysQuantity;
	}

	public Date getCommoditysAddedTime() {
		return commoditysAddedTime;
	}

	public void setCommoditysAddedTime(Date commoditysAddedTime) {
		this.commoditysAddedTime = commoditysAddedTime;
	}

	public Date getCommoditysTakedownTime() {
		return commoditysTakedownTime;
	}

	public void setCommoditysTakedownTime(Date commoditysTakedownTime) {
		this.commoditysTakedownTime = commoditysTakedownTime;
	}

	public Set<CommoditysImg> getCommoditysImg() {
		return commoditysImg;
	}

	public void setCommoditysImg(Set<CommoditysImg> commoditysImg) {
		this.commoditysImg = commoditysImg;
	}
	
}
