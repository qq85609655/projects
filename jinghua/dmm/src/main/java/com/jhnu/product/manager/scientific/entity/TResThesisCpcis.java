package com.jhnu.product.manager.scientific.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * TResThesisCpcis entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "T_RES_THESIS_CPCIS", schema = "DM_MOSDC_HTU")
public class TResThesisCpcis implements java.io.Serializable {

	// Fields
	@CloumnAs(name = "ID")
	private String id;
	@CloumnAs(name = "论文编号")
	private String thesisId;
	@CloumnAs(name = "收录年份")
	private String year;
	@CloumnAs(name = "会议信息")
	private String conference;
	@CloumnAs(name = "会议时间")
	private String conferenceTime;
	@CloumnAs(name = "备注")
	private String remark;

	// Constructors

	/** default constructor */
	public TResThesisCpcis() {
	}

	/** minimal constructor */
	public TResThesisCpcis(String id, String thesisId) {
		this.id = id;
		this.thesisId = thesisId;
	}

	/** full constructor */
	public TResThesisCpcis(String id, String thesisId, String year,
			String conference, String conferenceTime, String remark) {
		this.id = id;
		this.thesisId = thesisId;
		this.year = year;
		this.conference = conference;
		this.conferenceTime = conferenceTime;
		this.remark = remark;
	}

	// Property accessors
	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 20)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "THESIS_ID", nullable = false, length = 20)
	public String getThesisId() {
		return this.thesisId;
	}

	public void setThesisId(String thesisId) {
		this.thesisId = thesisId;
	}

	@Column(name = "YEAR_", length = 4)
	public String getYear() {
		return this.year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	@Column(name = "CONFERENCE", length = 200)
	public String getConference() {
		return this.conference;
	}

	public void setConference(String conference) {
		this.conference = conference;
	}

	@Column(name = "CONFERENCE_TIME", length = 10)
	public String getConferenceTime() {
		return this.conferenceTime;
	}

	public void setConferenceTime(String conferenceTime) {
		this.conferenceTime = conferenceTime;
	}

	@Column(name = "REMARK", length = 100)
	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}