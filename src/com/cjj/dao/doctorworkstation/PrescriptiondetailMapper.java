package com.cjj.dao.doctorworkstation;

import java.util.List;

import com.cjj.po.Prescriptiondetail;
import com.cjj.vo.PrescriptiondetailVo;

public interface PrescriptiondetailMapper {
    int insert(Prescriptiondetail record);
    List<PrescriptiondetailVo> findByPrescriptionid(Integer id);
    List<PrescriptiondetailVo> findZyByPrescriptionId(Integer id);
    List<PrescriptiondetailVo> findXyByPrescriptionId(Integer id);
    List<Prescriptiondetail> findByRegisterid(Integer id);
    Prescriptiondetail selectByPrimaryKey(Integer id);
    int updateByPrimaryKeySelective(Prescriptiondetail record);
    int deleteByPrescriptionid(Integer id);
}