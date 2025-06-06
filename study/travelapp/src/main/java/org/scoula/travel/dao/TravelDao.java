package org.scoula.travel.dao;

import org.scoula.travel.domain.TravelImageVo;
import org.scoula.travel.domain.TravelVO;

import java.util.List;
import java.util.Optional;

public interface TravelDao {
    void insert(TravelVO travel);

    void insertImage(TravelImageVo image);

    int getTotalCount();

    List<String> getDistricts();

    List<TravelVO> getTravels();

    List<TravelVO> getTravels(int page);

    List<TravelVO> getTravels(String district);

    Optional<TravelVO> getTravel(Long no);
}
