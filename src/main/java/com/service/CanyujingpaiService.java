package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.CanyujingpaiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.CanyujingpaiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.CanyujingpaiView;


/**
 * 参与竞拍
 *
 * @author 
 * @email 
 * @date 2021-05-09 17:01:15
 */
public interface CanyujingpaiService extends IService<CanyujingpaiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<CanyujingpaiVO> selectListVO(Wrapper<CanyujingpaiEntity> wrapper);
   	
   	CanyujingpaiVO selectVO(@Param("ew") Wrapper<CanyujingpaiEntity> wrapper);
   	
   	List<CanyujingpaiView> selectListView(Wrapper<CanyujingpaiEntity> wrapper);
   	
   	CanyujingpaiView selectView(@Param("ew") Wrapper<CanyujingpaiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<CanyujingpaiEntity> wrapper);
   	
}

