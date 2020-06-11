package com.cjj.dao.doctorworkstation;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Prescription;
import com.cjj.vo.PrescriptionVo;

public interface PrescriptionMapper {
    int insert(Prescription record);
    List<PrescriptionVo> manyConditionsFind(@Param("vo")PrescriptionVo record,
    		@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
    Prescription findRepetitionByCode(String prescriptioncode);
    int findmaxid();
    PrescriptionVo findByid(Integer id);
    List<PrescriptionVo> vagueFind(String contant);
    int updateByPrimaryKeySelective(Prescription record);
    int delete(Integer id);
}