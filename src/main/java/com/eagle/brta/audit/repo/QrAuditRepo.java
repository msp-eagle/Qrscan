package com.eagle.brta.audit.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.eagle.brta.audit.model.QrAudit;

@Repository
public interface QrAuditRepo extends CrudRepository<QrAudit, Long> {

}
