package com.staceyboot.springbootdemo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="prescriptionQ")
public class PrescriptionQ {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="Q_id")
	private Integer id;
	
	@Column(name="question_topic")
	private String question_topic;
	
	@Column(name="question_answer")
	private String question_answer;
	
//	@OneToMany(fetch=FetchType.LAZY, mappedBy = "prescriptionQ", cascade = CascadeType.ALL)
//	private Set<PrescriptionA> pa= new LinkedHashSet<PrescriptionA>();
	

	public PrescriptionQ() {
	}



	public Integer getid() {
		return id;
	}



	public void setid(Integer id) {
		this.id = id;
	}



	public String getQuestion_topic() {
		return question_topic;
	}



	public void setQuestion_topic(String question_topic) {
		this.question_topic = question_topic;
	}



	public String getQuestion_answer() {
		return question_answer;
	}



	public void setQuestion_answer(String question_answer) {
		this.question_answer = question_answer;
	}



	public PrescriptionQ(Integer id, String question_topic, String question_answer) {
		super();
		this.id = id;
		this.question_topic = question_topic;
		this.question_answer = question_answer;
	}


	



//	public Set<PrescriptionA> getPa() {
//		return pa;
//	}
//
//
//
//	public void setPa(Set<PrescriptionA> pa) {
//		this.pa = pa;
//	}



	




	
	
	
	
	
	
	
}
