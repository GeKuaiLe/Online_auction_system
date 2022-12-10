package com.dao;

import com.entity.ChengjiaotongzhiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChengjiaotongzhiVO;
import com.entity.view.ChengjiaotongzhiView;


/**
 * 成交通知
 * 
 * @author 
 * @email 
 * @date 2021-05-09 17:01:15
 */
public interface ChengjiaotongzhiDao extends BaseMapper<ChengjiaotongzhiEntity> {
	
	List<ChengjiaotongzhiVO> selectListVO(@Param("ew") Wrapper<ChengjiaotongzhiEntity> wrapper);
	
	ChengjiaotongzhiVO selectVO(@Param("ew") Wrapper<ChengjiaotongzhiEntity> wrapper);
	
	List<ChengjiaotongzhiView> selectListView(@Param("ew") Wrapper<ChengjiaotongzhiEntity> wrapper);

	List<ChengjiaotongzhiView> selectListView(Pagination page,@Param("ew") Wrapper<ChengjiaotongzhiEntity> wrapper);
	
	ChengjiaotongzhiView selectView(@Param("ew") Wrapper<ChengjiaotongzhiEntity> wrapper);
	
}
