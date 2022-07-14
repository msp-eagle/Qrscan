package com.eagle.qrscan.audit.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.eagle.qrscan.audit.model.QrAudit;

@Repository
public interface QrAuditRepo extends CrudRepository<QrAudit, Long> {

}
