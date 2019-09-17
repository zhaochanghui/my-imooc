package com.zch.oa.dao;

import com.zch.oa.entity.DealRecord;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("dealRecordDao")
public interface DealRecordDao {   //类似日志，不能删除，更新
    void insert(DealRecord dealRecord);
    List<DealRecord> selectByClaimVoucher(int cvid);  //根据报销单进行查询
}
