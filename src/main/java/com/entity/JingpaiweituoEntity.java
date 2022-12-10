package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 竞拍委托
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-05-09 17:01:15
 */
@TableName("jingpaiweituo")
public class JingpaiweituoEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JingpaiweituoEntity() {
		
	}
	
	public JingpaiweituoEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 商品名称
	 */
					
	private String shangpinmingcheng;
	
	/**
	 * 商品分类
	 */
					
	private String shangpinfenlei;
	
	/**
	 * 规格
	 */
					
	private String guige;
	
	/**
	 * 理想价格
	 */
					
	private String lixiangjiage;
	
	/**
	 * 图片
	 */
					
	private String tupian;
	
	/**
	 * 商品介绍
	 */
					
	private String shangpinjieshao;
	
	/**
	 * 卖家账号
	 */
					
	private String maijiazhanghao;
	
	/**
	 * 卖家姓名
	 */
					
	private String maijiaxingming;
	
	/**
	 * 联系方式
	 */
					
	private String lianxifangshi;
	
	/**
	 * 是否审核
	 */
					
	private String sfsh;
	
	/**
	 * 审核回复
	 */
					
	private String shhf;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：商品名称
	 */
	public void setShangpinmingcheng(String shangpinmingcheng) {
		this.shangpinmingcheng = shangpinmingcheng;
	}
	/**
	 * 获取：商品名称
	 */
	public String getShangpinmingcheng() {
		return shangpinmingcheng;
	}
	/**
	 * 设置：商品分类
	 */
	public void setShangpinfenlei(String shangpinfenlei) {
		this.shangpinfenlei = shangpinfenlei;
	}
	/**
	 * 获取：商品分类
	 */
	public String getShangpinfenlei() {
		return shangpinfenlei;
	}
	/**
	 * 设置：规格
	 */
	public void setGuige(String guige) {
		this.guige = guige;
	}
	/**
	 * 获取：规格
	 */
	public String getGuige() {
		return guige;
	}
	/**
	 * 设置：理想价格
	 */
	public void setLixiangjiage(String lixiangjiage) {
		this.lixiangjiage = lixiangjiage;
	}
	/**
	 * 获取：理想价格
	 */
	public String getLixiangjiage() {
		return lixiangjiage;
	}
	/**
	 * 设置：图片
	 */
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
	/**
	 * 设置：商品介绍
	 */
	public void setShangpinjieshao(String shangpinjieshao) {
		this.shangpinjieshao = shangpinjieshao;
	}
	/**
	 * 获取：商品介绍
	 */
	public String getShangpinjieshao() {
		return shangpinjieshao;
	}
	/**
	 * 设置：卖家账号
	 */
	public void setMaijiazhanghao(String maijiazhanghao) {
		this.maijiazhanghao = maijiazhanghao;
	}
	/**
	 * 获取：卖家账号
	 */
	public String getMaijiazhanghao() {
		return maijiazhanghao;
	}
	/**
	 * 设置：卖家姓名
	 */
	public void setMaijiaxingming(String maijiaxingming) {
		this.maijiaxingming = maijiaxingming;
	}
	/**
	 * 获取：卖家姓名
	 */
	public String getMaijiaxingming() {
		return maijiaxingming;
	}
	/**
	 * 设置：联系方式
	 */
	public void setLianxifangshi(String lianxifangshi) {
		this.lianxifangshi = lianxifangshi;
	}
	/**
	 * 获取：联系方式
	 */
	public String getLianxifangshi() {
		return lianxifangshi;
	}
	/**
	 * 设置：是否审核
	 */
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
	/**
	 * 设置：审核回复
	 */
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}

}
