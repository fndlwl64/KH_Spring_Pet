package com.heartpet.action;

import java.util.List;


import com.heartpet.model.WishDTO;
import com.heartpet.model.WishVO;

public interface WishDAO {

	/* public List<WishDTO> list(); */
    public WishDTO content(int wish_no);
    public int check(WishDTO dto);
    public int insert(WishDTO dto);
    public int delete(WishDTO dto);
    
    

}
