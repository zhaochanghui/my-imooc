package com.yys.sb1.dao;

import com.yys.sb1.entity.ClaimVoucherItem;
import com.yys.sb1.entity.ClaimVoucherItem;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("claimVoucherItemDao")
public interface ClaimVoucherItemDao {

    void insert(ClaimVoucherItem claimVoucherItem);
    void update(ClaimVoucherItem claimVoucherItem);
    void delete(int id);
    List<ClaimVoucherItem> selectByClaimVoucher(int cvid);  //根据报销单编号进行查询
}
