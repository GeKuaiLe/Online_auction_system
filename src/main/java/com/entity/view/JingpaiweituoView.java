package com.entity.view;

import com.entity.JingpaiweituoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 竞拍委托
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-09 17:01:15
 */
@TableName("jingpaiweituo")
public class JingpaiweituoView  extends JingpaiweituoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JingpaiweituoView(){
	}
 
 	public JingpaiweituoView(JingpaiweituoEntity jingpaiweituoEntity){
 	try {
			BeanUtils.copyProperties(this, jingpaiweituoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
