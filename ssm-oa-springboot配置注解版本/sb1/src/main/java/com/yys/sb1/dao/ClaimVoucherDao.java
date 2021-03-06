package com.yys.sb1.dao;

import com.yys.sb1.entity.ClaimVoucher;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("claimVoucherDao")
public interface ClaimVoucherDao {

    void insert(ClaimVoucher claimVoucher);
    void update(ClaimVoucher claimVoucher);
    void delete(int id);
    ClaimVoucher select(int id);
    List<ClaimVoucher> selectByCreateSn(String csn);
    List<ClaimVoucher> selectByNnextDealSn(String ndsn);
}
