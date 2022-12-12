package com.heartpet.action;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.heartpet.model.AnimalDTO;

@Repository
public class AnimalDAOImpl implements AnimalDAO{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insert(AnimalDTO dto) {
		return sqlSession.insert("animal_insert", dto);
	}

	@Override
	public int update(AnimalDTO dto) {
		return sqlSession.update("animal_update", dto);
	}
	
	@Override
	public int updateStatus(AnimalDTO dto) {
		return sqlSession.update("animal_updateStatus",dto);
	}

	@Override
	public void delete(int id) {
		sqlSession.delete("animal_delete", id);
		
	}

	@Override
	public List<AnimalDTO> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("animal_list");
	}

	@Override
	public List<AnimalDTO> listTag(String animal_tag) {
		return sqlSession.selectList("animal_listTag", animal_tag);
	}
	
	@Override
	public List<AnimalDTO> listTagUser(String animal_tag) {
		return sqlSession.selectList("animal_listTagUser",animal_tag);
	}

	@Override
	public AnimalDTO content(int id) {
		return sqlSession.selectOne("animal_content", id);
	}

	@Override
	public List<AnimalDTO> search() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public int count() {
		return sqlSession.selectOne("animal_count");
	}

	//////////////////////////////////////////////////////
	// Review에서 사용 @남윤지
	//////////////////////////////////////////////////////
	@Override
	public List<String> animalName(List<Integer> animal_no) {
		return this.sqlSession.selectOne("animal_name", animal_no);
	}	
	
}
