package com.entity.vo;

import com.entity.CanyujingpaiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 参与竞拍
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-05-09 17:01:15
 */
public class CanyujingpaiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 商品名称
	 */
	
	private String shangpinmingcheng;
		
	/**
	 * 商品分类
	 */
	
	private String shangpinfenlei;
		
	/**
	 * 当前价格
	 */
	
	private String dangqianjiage;
		
	/**
	 * 是否加价
	 */
	
	private String shifoujiajia;
		
	/**
	 * 出价
	 */
	
	private Integer chujia;
		
	/**
	 * 出价时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date chujiashijian;
		
	/**
	 * 卖家账号
	 */
	
	private String maijiazhanghao;
		
	/**
	 * 卖家姓名
	 */
	
	private String maijiaxingming;
		
	/**
	 * 账号
	 */
	
	private String zhanghao;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
				
	
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
	 * 设置：当前价格
	 */
	 
	public void setDangqianjiage(String dangqianjiage) {
		this.dangqianjiage = dangqianjiage;
	}
	
	/**
	 * 获取：当前价格
	 */
	public String getDangqianjiage() {
		return dangqianjiage;
	}
				
	
	/**
	 * 设置：是否加价
	 */
	 
	public void setShifoujiajia(String shifoujiajia) {
		this.shifoujiajia = shifoujiajia;
	}
	
	/**
	 * 获取：是否加价
	 */
	public String getShifoujiajia() {
		return shifoujiajia;
	}
				
	
	/**
	 * 设置：出价
	 */
	 
	public void setChujia(Integer chujia) {
		this.chujia = chujia;
	}
	
	/**
	 * 获取：出价
	 */
	public Integer getChujia() {
		return chujia;
	}
				
	
	/**
	 * 设置：出价时间
	 */
	 
	public void setChujiashijian(Date chujiashijian) {
		this.chujiashijian = chujiashijian;
	}
	
	/**
	 * 获取：出价时间
	 */
	public Date getChujiashijian() {
		return chujiashijian;
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
	 * 设置：账号
	 */
	 
	public void setZhanghao(String zhanghao) {
		this.zhanghao = zhanghao;
	}
	
	/**
	 * 获取：账号
	 */
	public String getZhanghao() {
		return zhanghao;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
			
}
