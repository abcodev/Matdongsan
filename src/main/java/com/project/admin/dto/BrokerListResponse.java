package com.project.admin.dto;

import com.project.admin.vo.BrokerEnroll;
import com.project.common.template.PageInfoCombine;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BrokerListResponse {

    List<BrokerEnroll> brokerEnrollList;
    private PageInfoCombine pageInfoCombine;
}
