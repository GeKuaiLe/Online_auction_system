package com.dao;

import com.entity.CanyujingpaiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.CanyujingpaiVO;
import com.entity.view.CanyujingpaiView;


/**
 * 参与竞拍
 * 
 * @author 
 * @email 
 * @date 2021-05-09 17:01:15
 */
public interface CanyujingpaiDao extends BaseMapper<CanyujingpaiEntity> {
	
	List<CanyujingpaiVO> selectListVO(@Param("ew") Wrapper<CanyujingpaiEntity> wrapper);
	
	CanyujingpaiVO selectVO(@Param("ew") Wrapper<CanyujingpaiEntity> wrapper);
	
	List<CanyujingpaiView> selectListView(@Param("ew") Wrapper<CanyujingpaiEntity> wrapper);

	List<CanyujingpaiView> selectListView(Pagination page,@Param("ew") Wrapper<CanyujingpaiEntity> wrapper);
	
	CanyujingpaiView selectView(@Param("ew") Wrapper<CanyujingpaiEntity> wrapper);
	
}
