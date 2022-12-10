package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JingpaiweituoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JingpaiweituoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JingpaiweituoView;


/**
 * 竞拍委托
 *
 * @author 
 * @email 
 * @date 2021-05-09 17:01:15
 */
public interface JingpaiweituoService extends IService<JingpaiweituoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JingpaiweituoVO> selectListVO(Wrapper<JingpaiweituoEntity> wrapper);
   	
   	JingpaiweituoVO selectVO(@Param("ew") Wrapper<JingpaiweituoEntity> wrapper);
   	
   	List<JingpaiweituoView> selectListView(Wrapper<JingpaiweituoEntity> wrapper);
   	
   	JingpaiweituoView selectView(@Param("ew") Wrapper<JingpaiweituoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JingpaiweituoEntity> wrapper);
   	
}

