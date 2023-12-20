package com.tenco.toyproject.repository.interfaces.mng;

import com.tenco.toyproject.dto.MngIndexDTO;
import com.tenco.toyproject.repository.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MngIndexRepository {
    List<MngIndexDTO> findByCreatedAt();

    User findByUsernameAndLevel(String username);
}