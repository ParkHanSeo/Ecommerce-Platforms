package com.naedam.admin.recruit.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.naedam.admin.board.model.vo.Post;
import com.naedam.admin.recruit.model.vo.SearchDTO;
import com.naedam.admin.recruit.model.vo.recruitContentsDTO;
import com.naedam.admin.recruit.model.vo.recruitDTO;

public interface RecruitDao {

	// 게시글 목록
	public List<Post> getRecruitList(Map<String, Object> map, int offset, int limit) throws Exception;

	// 게시글 총 갯수
	public Object getTotalCount(Map<String, Object> map);

	// 게시글 삭제
	public int deleteRecruit(int recruitNum);

	// 게시글 등록
	public int insertRecruit(recruitDTO recruit);

	// 게시글 상세내용 등록
	public int insertRecruitContents(recruitContentsDTO recruitContentsDTO);

	// 게시글 수정을 위한 게시글 조회
	public recruitDTO getRecruitData(int recruitNo);

	// 게시글 수정을 위한 상세내용 조회
	public List<recruitContentsDTO> getContentsData(int recruitNo);


	
}
