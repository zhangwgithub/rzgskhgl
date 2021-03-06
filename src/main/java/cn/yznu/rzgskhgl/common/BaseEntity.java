package cn.yznu.rzgskhgl.common;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;


@SuppressWarnings("serial")
@MappedSuperclass
public class BaseEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	/** 创建时间 */
	@Column(name = "create_date", columnDefinition =( "datetime default null comment '创建人时间'"))
	private java.util.Date createDate;

	/** 创建人id */
	@Column(name = "create_by", columnDefinition =( "varchar(32) default null comment '创建人id'"))
	private java.lang.String createBy;

	/** 创建人名称 */
	@Column(name = "create_name", columnDefinition =( "varchar(32) default null comment '创建人名称'"))
	private java.lang.String createName;

	/** 修改时间 */
	@Column(name = "update_date", columnDefinition =( "datetime default null comment '修改时间'"))
	private java.util.Date updateDate;

	/** 修改人 */
	@Column(name = "update_by", columnDefinition =( "varchar(32) default null comment '修改人'"))
	private java.lang.String updateBy;

	/** 修改人名称 */
	@Column(name = "update_name", columnDefinition =( "varchar(32) default null comment '修改人名称'"))
	private java.lang.String updateName;

	/**
	 * 是否逻辑删除 0:已删除 1：未删除
	 */
	@Column(name = "is_enable", columnDefinition =( "int(11) default null comment '是否逻辑删除 0:已删除 1：未删除'"))
	private Integer isEnable;


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public java.util.Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(java.util.Date createDate) {
		this.createDate = createDate;
	}

	public java.lang.String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(java.lang.String createBy) {
		this.createBy = createBy;
	}

	public java.lang.String getCreateName() {
		return createName;
	}

	public void setCreateName(java.lang.String createName) {
		this.createName = createName;
	}

	public java.util.Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(java.util.Date updateDate) {
		this.updateDate = updateDate;
	}

	public java.lang.String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(java.lang.String updateBy) {
		this.updateBy = updateBy;
	}

	public java.lang.String getUpdateName() {
		return updateName;
	}

	public void setUpdateName(java.lang.String updateName) {
		this.updateName = updateName;
	}

	public Integer getIsEnable() {
		return isEnable;
	}

	public void setIsEnable(Integer isEnable) {
		this.isEnable = isEnable;
	}

}
