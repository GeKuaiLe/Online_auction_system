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


import com.dao.CanyujingpaiDao;
import com.entity.CanyujingpaiEntity;
import com.service.CanyujingpaiService;
import com.entity.vo.CanyujingpaiVO;
import com.entity.view.CanyujingpaiView;

@Service("canyujingpaiService")
public class CanyujingpaiServiceImpl extends ServiceImpl<CanyujingpaiDao, CanyujingpaiEntity> implements CanyujingpaiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CanyujingpaiEntity> page = this.selectPage(
                new Query<CanyujingpaiEntity>(params).getPage(),
                new EntityWrapper<CanyujingpaiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CanyujingpaiEntity> wrapper) {
		  Page<CanyujingpaiView> page =new Query<CanyujingpaiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<CanyujingpaiVO> selectListVO(Wrapper<CanyujingpaiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public CanyujingpaiVO selectVO(Wrapper<CanyujingpaiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<CanyujingpaiView> selectListView(Wrapper<CanyujingpaiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CanyujingpaiView selectView(Wrapper<CanyujingpaiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
