package com.yys.sb1.dto;

import com.yys.sb1.entity.ClaimVoucher;
import com.yys.sb1.entity.ClaimVoucherItem;

import java.util.List;

public class ClaimVoucherInfo {

    private ClaimVoucher claimVoucher;
    private List<ClaimVoucherItem> items;

    public ClaimVoucher getClaimVoucher() {
        return claimVoucher;
    }

    public void setClaimVoucher(ClaimVoucher claimVoucher) {
        this.claimVoucher = claimVoucher;
    }

    public List<ClaimVoucherItem> getItems() {
        return items;
    }

    public void setItems(List<ClaimVoucherItem> items) {
        this.items = items;
    }
}
