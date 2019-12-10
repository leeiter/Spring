package com.biz.iolist.persistence;

import java.util.List;

import com.biz.iolist.domain.ProductDTO;

public interface ProductDao {

	public List<ProductDTO> selectAll();
	public List<ProductDTO> findAll();

	public String getPCode();
	public ProductDTO findByPCode(String p_code);
	
	public int insert(ProductDTO productDTO);
	public int update(ProductDTO productDTO);
	public int delete(String p_code);
	
}