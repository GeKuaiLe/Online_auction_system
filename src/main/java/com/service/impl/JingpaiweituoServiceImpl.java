package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JingpaiweituoDao;
import com.entity.JingpaiweituoEntity;
import com.service.JingpaiweituoService;
import com.entity.vo.JingpaiweituoVO;
import com.entity.view.JingpaiweituoView;

@Service("jingpaiweituoService")
public class JingpaiweituoServiceImpl extends ServiceImpl<JingpaiweituoDao, JingpaiweituoEntity> implements JingpaiweituoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JingpaiweituoEntity> page = this.selectPage(
                new Query<JingpaiweituoEntity>(params).getPage(),
                new EntityWrapper<JingpaiweituoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JingpaiweituoEntity> wrapper) {
		  Page<JingpaiweituoView> page =new Query<JingpaiweituoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JingpaiweituoVO> selectListVO(Wrapper<JingpaiweituoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JingpaiweituoVO selectVO(Wrapper<JingpaiweituoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JingpaiweituoView> selectListView(Wrapper<JingpaiweituoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JingpaiweituoView selectView(Wrapper<JingpaiweituoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
