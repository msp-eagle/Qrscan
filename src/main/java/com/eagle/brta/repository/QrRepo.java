package com.eagle.brta.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.eagle.brta.model.QrModel;

@Repository
public interface QrRepo extends CrudRepository<QrModel, Long> {

    Iterable<QrModel> findAllByOrderByEd2ValiddateAsc();


}
