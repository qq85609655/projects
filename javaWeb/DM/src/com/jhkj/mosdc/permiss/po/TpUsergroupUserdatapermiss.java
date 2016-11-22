/*
 * 
 * Copyright (c) 2009 HZH All Rights Reserved.
 */
package com.jhkj.mosdc.permiss.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import java.io.Serializable;

/**
 * 系统表-用户数据权限表<br>
 * TableName: TP_USERGROUP_USERDATAPERMISS<br>
 * @author Hibernate Tools 3.4.0.CR1
 * @version 1.0
 * @since 2014-4-26 18:07:56
 */
@Entity
@Table(name = "TP_USERGROUP_USERDATAPERMISS")
public class TpUsergroupUserdatapermiss implements Serializable {
	/**
	 * ID
	 */
	private Long id;
	/**
	 * 用户ID
	 */
	private Long userId;
	/**
	 * 用户组ID
	 */
	private Long usergroupId;
	/**
	 * 班级ID
	 */
	private Long bjId;

	public TpUsergroupUserdatapermiss() {
	}

	public TpUsergroupUserdatapermiss(Long id) {
		this.id = id;
	}

	public TpUsergroupUserdatapermiss(Long id, Long userId, Long usergroupId,
			Long bjId) {
		this.id = id;
		this.userId = userId;
		this.usergroupId = usergroupId;
		this.bjId = bjId;
	}

	/**  
	 * set ID.
	 * @return ID
	 */
	@Id
	@Column(name = "ID", unique = true, nullable = false, precision = 16, scale = 0)
	public Long getId() {
		return this.id;
	}

	/**
	 * get ID.
	 * @param id ID
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**  
	 * set 用户ID.
	 * @return 用户ID
	 */

	@Column(name = "USER_ID", precision = 16, scale = 0)
	public Long getUserId() {
		return this.userId;
	}

	/**
	 * get 用户ID.
	 * @param userId 用户ID
	 */
	public void setUserId(Long userId) {
		this.userId = userId;
	}

	/**  
	 * set 用户组ID.
	 * @return 用户组ID
	 */

	@Column(name = "USERGROUP_ID", precision = 16, scale = 0)
	public Long getUsergroupId() {
		return this.usergroupId;
	}

	/**
	 * get 用户组ID.
	 * @param usergroupId 用户组ID
	 */
	public void setUsergroupId(Long usergroupId) {
		this.usergroupId = usergroupId;
	}

	/**  
	 * set 班级ID.
	 * @return 班级ID
	 */

	@Column(name = "BJ_ID", precision = 16, scale = 0)
	public Long getBjId() {
		return this.bjId;
	}

	/**
	 * get 班级ID.
	 * @param bjId 班级ID
	 */
	public void setBjId(Long bjId) {
		this.bjId = bjId;
	}

}