package com.lec.spring.domain;

import java.util.HashMap;
import java.util.List;
 
import org.apache.ibatis.annotations.Mapper;


public interface ServiceCenterDAO {
	public int insertServiceCenter (ServiceCenterDTO ServiceCenter);
    public int updateServiceCenter (ServiceCenterDTO ServiceCenter);
    public int deleteServiceCenter (int num);
    public ServiceCenterDTO selectOneServiceCenter(int num);
    public List<ServiceCenterDTO> selectSearchServiceCenter (HashMap<String, Object> params);
    public List<ServiceCenterDTO> selectAllServiceCenter();
    
}
