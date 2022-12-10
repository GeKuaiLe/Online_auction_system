package com.entity.view;

import com.entity.ChengjiaotongzhiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 成交通知
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-09 17:01:15
 */
@TableName("chengjiaotongzhi")
public class ChengjiaotongzhiView  extends ChengjiaotongzhiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ChengjiaotongzhiView(){
	}
 
 	public ChengjiaotongzhiView(ChengjiaotongzhiEntity chengjiaotongzhiEntity){
 	try {
			BeanUtils.copyProperties(this, chengjiaotongzhiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
