package org.scoula.travel.dao;

import org.scoula.travel.domain.TravelImageVo;
import org.scoula.travel.domain.TravelVO;

public interface TravelDao {
    void insert(TravelVO travel);
    void insertImage(TravelImageVo image);
}
