package com.eagle.qrscan.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.eagle.qrscan.model.QrModel;

@Repository
public interface QrRepo extends CrudRepository<QrModel, Long> {

    Iterable<QrModel> findAllByOrderByEd2ValiddateAsc();


}
