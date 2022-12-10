package com.dao;

import com.entity.JingpaiweituoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JingpaiweituoVO;
import com.entity.view.JingpaiweituoView;


/**
 * 竞拍委托
 * 
 * @author 
 * @email 
 * @date 2021-05-09 17:01:15
 */
public interface JingpaiweituoDao extends BaseMapper<JingpaiweituoEntity> {
	
	List<JingpaiweituoVO> selectListVO(@Param("ew") Wrapper<JingpaiweituoEntity> wrapper);
	
	JingpaiweituoVO selectVO(@Param("ew") Wrapper<JingpaiweituoEntity> wrapper);
	
	List<JingpaiweituoView> selectListView(@Param("ew") Wrapper<JingpaiweituoEntity> wrapper);

	List<JingpaiweituoView> selectListView(Pagination page,@Param("ew") Wrapper<JingpaiweituoEntity> wrapper);
	
	JingpaiweituoView selectView(@Param("ew") Wrapper<JingpaiweituoEntity> wrapper);
	
}
