package com.biz.iolist.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.iolist.domain.ProductDTO;
import com.biz.iolist.persistence.ProductDao;

@Service
public class ProductService {
	
	@Autowired
	SqlSession sqlSession;
	
	public List<ProductDTO> getAllList() {
		ProductDao productDao = sqlSession.getMapper(ProductDao.class);
		List<ProductDTO> proList = productDao.selectAll();
		return proList;
	}
	
	public ProductDTO findByPCode(String p_code) {
		ProductDao productDao = sqlSession.getMapper(ProductDao.class);
		ProductDTO pDTO = productDao.findByPCode(p_code);
		return pDTO;
	}
	
	public int insert(ProductDTO productDTO) {
		ProductDao productDao = sqlSession.getMapper(ProductDao.class);
		
		String p_code = productDao.getPCode();
		String p_code_num = p_code.substring(1);
		int int_pcode = Integer.valueOf(p_code_num) + 1;
		
		p_code = p_code.substring(0, 1);
		p_code += String.format("%04d", int_pcode);
		productDTO.setP_code(p_code);
		
		int ret = productDao.insert(productDTO);
		return ret;
	}

	public int update(ProductDTO productDTO) {
		ProductDao productDao = sqlSession.getMapper(ProductDao.class);
		int ret = productDao.update(productDTO);
		return ret;
	}
	
	public int delete(String p_code) {
		ProductDao productDao = sqlSession.getMapper(ProductDao.class);
		int ret = productDao.delete(p_code);
		return ret;
	}
	
	
}