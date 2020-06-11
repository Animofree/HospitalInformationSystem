package com.cjj.dao.doctorworkstation;

import java.util.List;

import com.cjj.po.Prescriptiontemplatedetail;
import com.cjj.vo.PrescriptiontemplatedetailVo;

public interface PrescriptiontemplatedetailMapper {
    int insert(Prescriptiontemplatedetail record);
    
    List<PrescriptiontemplatedetailVo> findByTemplateid(Integer id);
    Prescriptiontemplatedetail selectByPrimaryKey(Integer id);
    int updateByPrimaryKeySelective(Prescriptiontemplatedetail record);
    int deleteByPrescriptionid(Integer id);
}