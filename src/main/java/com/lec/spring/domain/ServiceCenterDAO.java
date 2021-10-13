package com.lec.spring.domain;

import java.util.HashMap;
import java.util.List;
 
import org.apache.ibatis.annotations.Mapper;


public interface ServiceCenterDAO {
		
		//문의 조회
		public abstract List<ServiceCenterDTO> selectServiceCenter();
		public abstract List<ServiceCenterDTO> selectServiceCenterInfo(int uid);
		//유저
		public abstract List<UserDTO> selectMemInfo(int uid);
		public abstract List<UserDTO> selectMemInfoAll();
		//문의 글
		public abstract int ServiceCenterViewCnt(int uid);
		public abstract int insertServiceCenter(ServiceCenterDTO dto); 
		public abstract int updateServiceCenter(ServiceCenterDTO dto);
		public abstract int deleteServiceCenter(int uid);
		//파일
//		public abstract int insertServiceCenterFile(List<ServiceCenterFileDTO> ServiceCenterFile);
//		public abstract List<ServiceCenterFileDTO> ServiceCenterFile(int uid);
//		public abstract int undeleteServiceCenterFile(List<Integer> uid);
//		public abstract int deleteServiceCenterFile(int uid);
}

