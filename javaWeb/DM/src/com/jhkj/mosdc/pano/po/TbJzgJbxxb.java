package com.jhkj.mosdc.pano.po;

// Generated 2013-10-30 15:26:24 by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * TbJzgJbxxb generated by hbm2java
 */
@Entity
@Table(name = "TB_JZG_JBXXB", schema = "MOSDC_PANO")
public class TbJzgJbxxb implements java.io.Serializable {

	private long id;
	private String zgh;
	private String xm;
	private String sfzh;
	private String csrq;
	private Long xbId;
	private Long mzId;
	private Long xxId;
	private Long hyzkId;
	private Long jg;
	private String jtzz;
	private String hkszd;
	private Long hkxzId;
	private Long whcdId;
	private String rdrq;
	private Long zzmmId;
	private Long xwId;
	private String cjgzny;
	private String lxrq;
	private String cjrq;
	private Long bzlbId;
	private String dabh;
	private String lxdh;
	private Long zwlbId;
	private Long xzjbId;
	private Long jzglbId;
	private Long zyjszwId;
	private Long zyjszcId;
	private Long grjsdjId;
	private Long gwlId;
	private Long yrxsId;
	private Long yxId;
	private Long zyId;
	private Long bmId;
	private Long dqztId;
	private String xxdm;
	private Long jxzzjgId;
	private String sjtbsj;
	private String tbfs;

	public TbJzgJbxxb() {
	}

	public TbJzgJbxxb(long id, String zgh, String xm) {
		this.id = id;
		this.zgh = zgh;
		this.xm = xm;
	}

	public TbJzgJbxxb(long id, String zgh, String xm, String sfzh, String csrq,
			Long xbId, Long mzId, Long xxId, Long hyzkId, Long jg, String jtzz,
			String hkszd, Long hkxzId, Long whcdId, String rdrq, Long zzmmId,
			Long xwId, String cjgzny, String lxrq, String cjrq, Long bzlbId,
			String dabh, String lxdh, Long zwlbId, Long xzjbId, Long jzglbId,
			Long zyjszwId, Long zyjszcId, Long grjsdjId, Long gwlId,
			Long yrxsId, Long yxId, Long zyId, Long bmId, Long dqztId,
			String xxdm, Long jxzzjgId, String sjtbsj, String tbfs) {
		this.id = id;
		this.zgh = zgh;
		this.xm = xm;
		this.sfzh = sfzh;
		this.csrq = csrq;
		this.xbId = xbId;
		this.mzId = mzId;
		this.xxId = xxId;
		this.hyzkId = hyzkId;
		this.jg = jg;
		this.jtzz = jtzz;
		this.hkszd = hkszd;
		this.hkxzId = hkxzId;
		this.whcdId = whcdId;
		this.rdrq = rdrq;
		this.zzmmId = zzmmId;
		this.xwId = xwId;
		this.cjgzny = cjgzny;
		this.lxrq = lxrq;
		this.cjrq = cjrq;
		this.bzlbId = bzlbId;
		this.dabh = dabh;
		this.lxdh = lxdh;
		this.zwlbId = zwlbId;
		this.xzjbId = xzjbId;
		this.jzglbId = jzglbId;
		this.zyjszwId = zyjszwId;
		this.zyjszcId = zyjszcId;
		this.grjsdjId = grjsdjId;
		this.gwlId = gwlId;
		this.yrxsId = yrxsId;
		this.yxId = yxId;
		this.zyId = zyId;
		this.bmId = bmId;
		this.dqztId = dqztId;
		this.xxdm = xxdm;
		this.jxzzjgId = jxzzjgId;
		this.sjtbsj = sjtbsj;
		this.tbfs = tbfs;
	}

	@Id
	@Column(name = "ID", unique = true, nullable = false, precision = 16, scale = 0)
	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Column(name = "ZGH", nullable = false, length = 20)
	public String getZgh() {
		return this.zgh;
	}

	public void setZgh(String zgh) {
		this.zgh = zgh;
	}

	@Column(name = "XM", nullable = false, length = 60)
	public String getXm() {
		return this.xm;
	}

	public void setXm(String xm) {
		this.xm = xm;
	}

	@Column(name = "SFZH", length = 60)
	public String getSfzh() {
		return this.sfzh;
	}

	public void setSfzh(String sfzh) {
		this.sfzh = sfzh;
	}

	@Column(name = "CSRQ", length = 10)
	public String getCsrq() {
		return this.csrq;
	}

	public void setCsrq(String csrq) {
		this.csrq = csrq;
	}

	@Column(name = "XB_ID", precision = 16, scale = 0)
	public Long getXbId() {
		return this.xbId;
	}

	public void setXbId(Long xbId) {
		this.xbId = xbId;
	}

	@Column(name = "MZ_ID", precision = 16, scale = 0)
	public Long getMzId() {
		return this.mzId;
	}

	public void setMzId(Long mzId) {
		this.mzId = mzId;
	}

	@Column(name = "XX_ID", precision = 16, scale = 0)
	public Long getXxId() {
		return this.xxId;
	}

	public void setXxId(Long xxId) {
		this.xxId = xxId;
	}

	@Column(name = "HYZK_ID", precision = 16, scale = 0)
	public Long getHyzkId() {
		return this.hyzkId;
	}

	public void setHyzkId(Long hyzkId) {
		this.hyzkId = hyzkId;
	}

	@Column(name = "JG", precision = 16, scale = 0)
	public Long getJg() {
		return this.jg;
	}

	public void setJg(Long jg) {
		this.jg = jg;
	}

	@Column(name = "JTZZ", length = 200)
	public String getJtzz() {
		return this.jtzz;
	}

	public void setJtzz(String jtzz) {
		this.jtzz = jtzz;
	}

	@Column(name = "HKSZD", length = 200)
	public String getHkszd() {
		return this.hkszd;
	}

	public void setHkszd(String hkszd) {
		this.hkszd = hkszd;
	}

	@Column(name = "HKXZ_ID", precision = 16, scale = 0)
	public Long getHkxzId() {
		return this.hkxzId;
	}

	public void setHkxzId(Long hkxzId) {
		this.hkxzId = hkxzId;
	}

	@Column(name = "WHCD_ID", precision = 16, scale = 0)
	public Long getWhcdId() {
		return this.whcdId;
	}

	public void setWhcdId(Long whcdId) {
		this.whcdId = whcdId;
	}

	@Column(name = "RDRQ", length = 10)
	public String getRdrq() {
		return this.rdrq;
	}

	public void setRdrq(String rdrq) {
		this.rdrq = rdrq;
	}

	@Column(name = "ZZMM_ID", precision = 16, scale = 0)
	public Long getZzmmId() {
		return this.zzmmId;
	}

	public void setZzmmId(Long zzmmId) {
		this.zzmmId = zzmmId;
	}

	@Column(name = "XW_ID", precision = 16, scale = 0)
	public Long getXwId() {
		return this.xwId;
	}

	public void setXwId(Long xwId) {
		this.xwId = xwId;
	}

	@Column(name = "CJGZNY", length = 10)
	public String getCjgzny() {
		return this.cjgzny;
	}

	public void setCjgzny(String cjgzny) {
		this.cjgzny = cjgzny;
	}

	@Column(name = "LXRQ", length = 10)
	public String getLxrq() {
		return this.lxrq;
	}

	public void setLxrq(String lxrq) {
		this.lxrq = lxrq;
	}

	@Column(name = "CJRQ", length = 10)
	public String getCjrq() {
		return this.cjrq;
	}

	public void setCjrq(String cjrq) {
		this.cjrq = cjrq;
	}

	@Column(name = "BZLB_ID", precision = 16, scale = 0)
	public Long getBzlbId() {
		return this.bzlbId;
	}

	public void setBzlbId(Long bzlbId) {
		this.bzlbId = bzlbId;
	}

	@Column(name = "DABH", length = 30)
	public String getDabh() {
		return this.dabh;
	}

	public void setDabh(String dabh) {
		this.dabh = dabh;
	}

	@Column(name = "LXDH", length = 30)
	public String getLxdh() {
		return this.lxdh;
	}

	public void setLxdh(String lxdh) {
		this.lxdh = lxdh;
	}

	@Column(name = "ZWLB_ID", precision = 16, scale = 0)
	public Long getZwlbId() {
		return this.zwlbId;
	}

	public void setZwlbId(Long zwlbId) {
		this.zwlbId = zwlbId;
	}

	@Column(name = "XZJB_ID", precision = 16, scale = 0)
	public Long getXzjbId() {
		return this.xzjbId;
	}

	public void setXzjbId(Long xzjbId) {
		this.xzjbId = xzjbId;
	}

	@Column(name = "JZGLB_ID", precision = 16, scale = 0)
	public Long getJzglbId() {
		return this.jzglbId;
	}

	public void setJzglbId(Long jzglbId) {
		this.jzglbId = jzglbId;
	}

	@Column(name = "ZYJSZW_ID", precision = 16, scale = 0)
	public Long getZyjszwId() {
		return this.zyjszwId;
	}

	public void setZyjszwId(Long zyjszwId) {
		this.zyjszwId = zyjszwId;
	}

	@Column(name = "ZYJSZC_ID", precision = 16, scale = 0)
	public Long getZyjszcId() {
		return this.zyjszcId;
	}

	public void setZyjszcId(Long zyjszcId) {
		this.zyjszcId = zyjszcId;
	}

	@Column(name = "GRJSDJ_ID", precision = 16, scale = 0)
	public Long getGrjsdjId() {
		return this.grjsdjId;
	}

	public void setGrjsdjId(Long grjsdjId) {
		this.grjsdjId = grjsdjId;
	}

	@Column(name = "GWL_ID", precision = 16, scale = 0)
	public Long getGwlId() {
		return this.gwlId;
	}

	public void setGwlId(Long gwlId) {
		this.gwlId = gwlId;
	}

	@Column(name = "YRXS_ID", precision = 16, scale = 0)
	public Long getYrxsId() {
		return this.yrxsId;
	}

	public void setYrxsId(Long yrxsId) {
		this.yrxsId = yrxsId;
	}

	@Column(name = "YX_ID", precision = 16, scale = 0)
	public Long getYxId() {
		return this.yxId;
	}

	public void setYxId(Long yxId) {
		this.yxId = yxId;
	}

	@Column(name = "ZY_ID", precision = 16, scale = 0)
	public Long getZyId() {
		return this.zyId;
	}

	public void setZyId(Long zyId) {
		this.zyId = zyId;
	}

	@Column(name = "BM_ID", precision = 16, scale = 0)
	public Long getBmId() {
		return this.bmId;
	}

	public void setBmId(Long bmId) {
		this.bmId = bmId;
	}

	@Column(name = "DQZT_ID", precision = 16, scale = 0)
	public Long getDqztId() {
		return this.dqztId;
	}

	public void setDqztId(Long dqztId) {
		this.dqztId = dqztId;
	}

	@Column(name = "XXDM", length = 12)
	public String getXxdm() {
		return this.xxdm;
	}

	public void setXxdm(String xxdm) {
		this.xxdm = xxdm;
	}

	@Column(name = "JXZZJG_ID", precision = 16, scale = 0)
	public Long getJxzzjgId() {
		return this.jxzzjgId;
	}

	public void setJxzzjgId(Long jxzzjgId) {
		this.jxzzjgId = jxzzjgId;
	}

	@Column(name = "SJTBSJ", length = 30)
	public String getSjtbsj() {
		return this.sjtbsj;
	}

	public void setSjtbsj(String sjtbsj) {
		this.sjtbsj = sjtbsj;
	}

	@Column(name = "TBFS", length = 30)
	public String getTbfs() {
		return this.tbfs;
	}

	public void setTbfs(String tbfs) {
		this.tbfs = tbfs;
	}

}