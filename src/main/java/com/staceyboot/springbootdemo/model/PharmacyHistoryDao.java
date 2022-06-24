package com.staceyboot.springbootdemo.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PharmacyHistoryDao extends JpaRepository<PharmacyHistory, Integer>{

}
