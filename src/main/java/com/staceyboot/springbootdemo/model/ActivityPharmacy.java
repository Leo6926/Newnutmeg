package com.staceyboot.springbootdemo.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "activity")
public class ActivityPharmacy {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@DateTimeFormat(pattern = "yyyy-MM-dd") // 從資料庫取出後轉格式
	@Temporal(TemporalType.DATE) // 存進去的資料型別
	@Column(name = "activity_date", columnDefinition = "datetime")
	private Date date;

	@Column(name = "activity_subject", columnDefinition = "nvarchar(50)")
	private String subject;

	@Column(name = "activity_text", columnDefinition = "nvarchar(2000)")
	private String text;

		public ActivityPharmacy() {
	}

		@PrePersist
		public void onCreate() {
			if (date == null) {
				date = new Date();
			}
		}
		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public Date getDate() {
			return date;
		}

		public void setDate(Date date) {
			this.date = date;
		}

		public String getSubject() {
			return subject;
		}

		public void setSubject(String subject) {
			this.subject = subject;
		}

		public String getText() {
			return text;
		}

		public void setText(String text) {
			this.text = text;
		}

		@Override
		public String toString() {
			StringBuilder builder = new StringBuilder();
			builder.append("ActivityPharmacy [id=");
			builder.append(id);
			builder.append(", date=");
			builder.append(date);
			builder.append(", subject=");
			builder.append(subject);
			builder.append(", text=");
			builder.append(text);
			builder.append("]");
			return builder.toString();
		}


}
