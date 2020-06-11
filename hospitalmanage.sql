/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : hospitalmanage

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2019-01-04 17:42:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `attributename` varchar(32) DEFAULT NULL COMMENT '集合名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='属性';

-- ----------------------------
-- Records of attribute
-- ----------------------------
INSERT INTO `attribute` VALUES ('1', '学历');
INSERT INTO `attribute` VALUES ('2', '政治面貌');
INSERT INTO `attribute` VALUES ('3', '婚姻状况');
INSERT INTO `attribute` VALUES ('4', '职务');
INSERT INTO `attribute` VALUES ('5', '职称');
INSERT INTO `attribute` VALUES ('6', '药品类型');
INSERT INTO `attribute` VALUES ('7', '药品剂型');
INSERT INTO `attribute` VALUES ('8', '医保类别');
INSERT INTO `attribute` VALUES ('9', '银行');
INSERT INTO `attribute` VALUES ('10', '学习专业');
INSERT INTO `attribute` VALUES ('11', '使用状态');
INSERT INTO `attribute` VALUES ('12', '费用类别');
INSERT INTO `attribute` VALUES ('13', '项目类型');
INSERT INTO `attribute` VALUES ('14', '处方性质');
INSERT INTO `attribute` VALUES ('15', '处方类型');
INSERT INTO `attribute` VALUES ('16', '处方分类');
INSERT INTO `attribute` VALUES ('17', '供应商级别');
INSERT INTO `attribute` VALUES ('18', '床位级别');
INSERT INTO `attribute` VALUES ('19', '收费方式');
INSERT INTO `attribute` VALUES ('20', '化验仪器');
INSERT INTO `attribute` VALUES ('21', '参保类型');
INSERT INTO `attribute` VALUES ('22', '结算方式');
INSERT INTO `attribute` VALUES ('23', '模板类型');
INSERT INTO `attribute` VALUES ('24', '用药方式');
INSERT INTO `attribute` VALUES ('25', '用药频率');

-- ----------------------------
-- Table structure for attributedetail
-- ----------------------------
DROP TABLE IF EXISTS `attributedetail`;
CREATE TABLE `attributedetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `attributeid` int(11) DEFAULT NULL COMMENT '属性id',
  `detailname` varchar(32) DEFAULT NULL COMMENT '明细名称',
  `detailenname` varchar(32) DEFAULT NULL COMMENT '明细英文名称',
  `note` varchar(64) DEFAULT NULL COMMENT '备注',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=486 DEFAULT CHARSET=utf8 COMMENT='属性明细';

-- ----------------------------
-- Records of attributedetail
-- ----------------------------
INSERT INTO `attributedetail` VALUES ('1', '1', '博士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('2', '1', '研究生', null, null, '1');
INSERT INTO `attributedetail` VALUES ('3', '1', '本科', null, null, '1');
INSERT INTO `attributedetail` VALUES ('4', '1', '专科', null, null, '1');
INSERT INTO `attributedetail` VALUES ('5', '1', '高中及以下', null, null, '1');
INSERT INTO `attributedetail` VALUES ('6', '2', '中共党员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('7', '2', '中共预备党员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('8', '2', '共青团员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('9', '2', '民革党员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('10', '2', '民盟盟员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('11', '2', '民建会员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('12', '2', '民进会员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('13', '2', '农工党党员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('14', '2', '致公党党员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('15', '2', '九三学社社员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('16', '2', '台盟盟员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('17', '2', '群众', null, null, '1');
INSERT INTO `attributedetail` VALUES ('18', '3', '未婚', null, null, '1');
INSERT INTO `attributedetail` VALUES ('19', '3', '已婚', null, null, '1');
INSERT INTO `attributedetail` VALUES ('20', '3', '离异', null, null, '1');
INSERT INTO `attributedetail` VALUES ('21', '3', '丧偶', null, null, '1');
INSERT INTO `attributedetail` VALUES ('22', '4', '院长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('23', '4', '常务副院长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('24', '4', '分管业务副院长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('25', '4', '分管行政副院长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('26', '4', '分管财务副院长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('27', '4', '分管药剂副院长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('28', '4', '总会计师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('29', '4', '公会主席', null, null, '1');
INSERT INTO `attributedetail` VALUES ('30', '4', '党委书记', null, null, '1');
INSERT INTO `attributedetail` VALUES ('31', '4', '纪委书记', null, null, '1');
INSERT INTO `attributedetail` VALUES ('32', '4', '党支部书记', null, null, '1');
INSERT INTO `attributedetail` VALUES ('33', '4', '团委书记', null, null, '1');
INSERT INTO `attributedetail` VALUES ('34', '4', '临床科主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('35', '4', '临床科三级医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('36', '4', '临床科二级医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('37', '4', '临床科一级II档医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('38', '4', '临床科一级I档医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('39', '4', '临床科进修医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('40', '4', '临床科见习医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('41', '4', '临床科总住院医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('42', '4', '临床科住院医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('43', '4', '门诊部主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('44', '4', '专家门诊医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('45', '4', '专科门诊医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('46', '4', '普通门诊II档医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('47', '4', '普通门诊I档医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('48', '4', '急诊科主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('49', '4', '急诊科医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('50', '4', '产科主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('51', '4', '产科医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('52', '4', '手术部主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('53', '4', '手术部三级医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('54', '4', '手术部二级医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('55', '4', '手术部一级医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('56', '4', '手术部总住院医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('57', '4', '手术部住院医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('58', '4', '妇幼保健主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('59', '4', '妇幼保健三级医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('60', '4', '妇幼保健二级医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('61', '4', '妇幼保健一级医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('62', '4', '前台服务中心主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('63', '4', '前台服务中心职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('64', '4', '前台导诊护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('65', '4', '临床护士长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('66', '4', '临床三级护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('67', '4', '临床二级护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('68', '4', '临床一级护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('69', '4', '临床助理护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('70', '4', '临床见习护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('71', '4', '手术部护士长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('72', '4', '手术部二级护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('73', '4', '手术部一级护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('74', '4', '手术部助理护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('75', '4', '手术部见习护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('76', '4', '消毒供应室主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('77', '4', '消毒供应室护士长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('78', '4', '消毒供应室护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('79', '4', '产科护士长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('80', '4', '助产士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('81', '4', '门诊护士长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('82', '4', '门诊二级护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('83', '4', '门诊一级护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('84', '4', '门诊见习护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('85', '4', '急诊护士长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('86', '4', '急诊二级护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('87', '4', '急诊一级护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('88', '4', '急诊助理护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('89', '4', '急诊一级护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('90', '4', '妇幼保健护士长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('91', '4', '妇幼保健二级护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('92', '4', '妇幼保健一级护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('93', '4', '功能科主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('94', '4', '功能科三级医（技）师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('95', '4', '功能科二级医（技）师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('96', '4', '功能科一级医（技）师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('97', '4', '放射科主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('98', '4', '放射科三级医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('99', '4', '放射科二级医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('100', '4', '放射科一级医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('101', '4', '放射科三级技师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('102', '4', '放射科二级技师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('103', '4', '放射科一级技师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('104', '4', '放射科工程技术人员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('105', '4', '检验科主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('106', '4', '三级检验技师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('107', '4', '二级检验技师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('108', '4', '一级检验技师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('109', '4', '病理科主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('110', '4', '病理科三级医（技）师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('111', '4', '病理科二级医（技）师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('112', '4', '病理科一级医（技）师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('113', '4', '高压氧科主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('114', '4', '高压氧科护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('115', '4', '高压氧科技术人员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('116', '4', '药剂科主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('117', '4', '三级药师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('118', '4', '二级药师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('119', '4', '一级药师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('120', '4', '见习药师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('121', '4', '院长办公室主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('122', '4', '院长办公室职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('123', '4', '综合档案室主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('124', '4', '专职档案员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('125', '4', '兼职档案员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('126', '4', '机要打字员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('127', '4', '车队队长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('128', '4', '汽车司机', null, null, '1');
INSERT INTO `attributedetail` VALUES ('129', '4', '党委办公室主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('130', '4', '党委办公室职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('131', '4', '人力资源部主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('132', '4', '人力资源部职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('133', '4', '保卫科主管', null, null, '1');
INSERT INTO `attributedetail` VALUES ('134', '4', '保卫科职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('135', '4', '保安员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('136', '4', '财务部主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('137', '4', '责任会计', null, null, '1');
INSERT INTO `attributedetail` VALUES ('138', '4', '总账报表会计', null, null, '1');
INSERT INTO `attributedetail` VALUES ('139', '4', '成本核算会计', null, null, '1');
INSERT INTO `attributedetail` VALUES ('140', '4', '往来核算会计', null, null, '1');
INSERT INTO `attributedetail` VALUES ('141', '4', '财务成果核算会计', null, null, '1');
INSERT INTO `attributedetail` VALUES ('142', '4', '基建会计', null, null, '1');
INSERT INTO `attributedetail` VALUES ('143', '4', '财产会计', null, null, '1');
INSERT INTO `attributedetail` VALUES ('144', '4', '药品会计', null, null, '1');
INSERT INTO `attributedetail` VALUES ('145', '4', '材料、低值易耗品核算会计', null, null, '1');
INSERT INTO `attributedetail` VALUES ('146', '4', '工资核算会计', null, null, '1');
INSERT INTO `attributedetail` VALUES ('147', '4', '稽核会计', null, null, '1');
INSERT INTO `attributedetail` VALUES ('148', '4', '物业管理会计', null, null, '1');
INSERT INTO `attributedetail` VALUES ('149', '4', '医院出纳', null, null, '1');
INSERT INTO `attributedetail` VALUES ('150', '4', '资金核算会计', null, null, '1');
INSERT INTO `attributedetail` VALUES ('151', '4', '票据管理员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('152', '4', '医疗保险财会管理', null, null, '1');
INSERT INTO `attributedetail` VALUES ('153', '4', '门诊收费员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('154', '4', '门诊挂号员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('155', '4', '住院收费员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('156', '4', '物价管理员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('157', '4', '科室经济管理员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('158', '4', '医教部主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('159', '4', '医务科科长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('160', '4', '质控科科长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('161', '4', '科教科科长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('162', '4', '院感科科长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('163', '4', '投诉管理科科长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('164', '4', '医保主办', null, null, '1');
INSERT INTO `attributedetail` VALUES ('165', '4', '医务科职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('166', '4', '质控科职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('167', '4', '科教科职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('168', '4', '院感科职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('169', '4', '质量管理部主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('170', '4', '质量管理部职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('171', '4', '护理部主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('172', '4', '护理部干事', null, null, '1');
INSERT INTO `attributedetail` VALUES ('173', '4', '保健部主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('174', '4', '计算机网络部主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('175', '4', '计算机网络部职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('176', '4', '药学部主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('177', '4', '药学部职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('178', '4', '设备科主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('179', '4', '设备科职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('180', '4', '医疗设备主管', null, null, '1');
INSERT INTO `attributedetail` VALUES ('181', '4', '医疗设备仓库保管员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('182', '4', '医疗设备采购员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('183', '4', '医疗设备维修人员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('184', '4', '医疗设备管理责任人', null, null, '1');
INSERT INTO `attributedetail` VALUES ('185', '4', '后勤保障部主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('186', '4', '后勤保障部职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('187', '4', '基建办主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('188', '4', '基建办职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('189', '4', '物资仓库主管', null, null, '1');
INSERT INTO `attributedetail` VALUES ('190', '4', '物资仓库职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('191', '4', '物资采购员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('192', '4', '食堂主管', null, null, '1');
INSERT INTO `attributedetail` VALUES ('193', '4', '病员食堂职工', null, null, '1');
INSERT INTO `attributedetail` VALUES ('194', '4', '职工食堂职工', null, null, '1');
INSERT INTO `attributedetail` VALUES ('195', '4', '食堂厨师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('196', '4', '配餐员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('197', '4', '营养室主管', null, null, '1');
INSERT INTO `attributedetail` VALUES ('198', '4', '营养室职工', null, null, '1');
INSERT INTO `attributedetail` VALUES ('199', '4', '供开水、热水职工', null, null, '1');
INSERT INTO `attributedetail` VALUES ('200', '4', '水、电、气、木工班主管', null, null, '1');
INSERT INTO `attributedetail` VALUES ('201', '4', '水、电、气、木工人', null, null, '1');
INSERT INTO `attributedetail` VALUES ('202', '4', '被服供应主管', null, null, '1');
INSERT INTO `attributedetail` VALUES ('203', '4', '被服供应职工', null, null, '1');
INSERT INTO `attributedetail` VALUES ('204', '4', '电梯主管', null, null, '1');
INSERT INTO `attributedetail` VALUES ('205', '4', '电梯工人', null, null, '1');
INSERT INTO `attributedetail` VALUES ('206', '4', '锅炉主管', null, null, '1');
INSERT INTO `attributedetail` VALUES ('207', '4', '锅炉工人', null, null, '1');
INSERT INTO `attributedetail` VALUES ('208', '4', '太平间工人', null, null, '1');
INSERT INTO `attributedetail` VALUES ('209', '4', '清洁工', null, null, '1');
INSERT INTO `attributedetail` VALUES ('210', '4', '信息统计科科长', null, null, '1');
INSERT INTO `attributedetail` VALUES ('211', '4', '市级妇幼卫生信息员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('212', '4', '统计员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('213', '4', '图书管理员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('214', '4', '病案室主办', null, null, '1');
INSERT INTO `attributedetail` VALUES ('215', '4', '病案室职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('216', '4', '健康教育科主任', null, null, '1');
INSERT INTO `attributedetail` VALUES ('217', '4', '健康教育科职员', null, null, '1');
INSERT INTO `attributedetail` VALUES ('218', '5', '主任医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('219', '5', '主任药师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('220', '5', '主任护师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('221', '5', '主任技师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('222', '5', '副主任医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('223', '5', '副主任药师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('224', '5', '副主任护师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('225', '5', '副主任技师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('226', '5', '主治医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('227', '5', '主管药师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('228', '5', '主管护师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('229', '5', '主管技师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('230', '5', '医师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('231', '5', '药师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('232', '5', '护师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('233', '5', '技师', null, null, '1');
INSERT INTO `attributedetail` VALUES ('234', '5', '医士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('235', '5', '药士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('236', '5', '护士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('237', '5', '技士', null, null, '1');
INSERT INTO `attributedetail` VALUES ('238', '6', '中药', null, null, '1');
INSERT INTO `attributedetail` VALUES ('239', '6', '西药', null, null, '1');
INSERT INTO `attributedetail` VALUES ('240', '6', '中成药', null, null, '1');
INSERT INTO `attributedetail` VALUES ('241', '7', '散剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('242', '7', '片剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('243', '7', '颗粒剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('244', '7', '胶囊剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('245', '7', '丸剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('246', '7', '溶液剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('247', '7', '浸出剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('248', '7', '乳剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('249', '7', '混悬剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('250', '7', '注射剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('251', '7', '喷雾剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('252', '7', '气雾剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('253', '7', '粉雾剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('254', '7', '洗剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('255', '7', '搽剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('256', '7', '软膏剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('257', '7', '硬膏剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('258', '8', '职工医保', null, null, '1');
INSERT INTO `attributedetail` VALUES ('259', '8', '城居医保', null, null, '1');
INSERT INTO `attributedetail` VALUES ('260', '8', '新农合', null, null, '1');
INSERT INTO `attributedetail` VALUES ('261', '9', '中国银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('262', '9', '中国工商银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('263', '9', '中国农业银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('264', '9', '中国建设银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('265', '9', '交通银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('266', '9', '中信银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('267', '9', '中国光大银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('268', '9', '华夏银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('269', '9', '中国民生银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('270', '9', '广发银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('271', '9', '深圳发展银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('272', '9', '招商银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('273', '9', '兴业银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('274', '9', '上海浦东发展银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('275', '9', '恒丰银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('276', '9', '浙商银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('277', '9', '渤海银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('278', '9', '中国邮政储蓄银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('279', '9', '中国进出口银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('280', '9', '中国农业发展银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('281', '9', '农商银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('282', '9', '中德住房储蓄银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('283', '9', '厦门国际银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('284', '9', '华一银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('285', '9', '华商银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('286', '9', '中信嘉华银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('287', '9', '汇丰银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('288', '9', '东亚银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('289', '9', '恒生银行 （中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('290', '9', '永亨银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('291', '9', '南洋商业银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('292', '9', '协和银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('293', '9', '大新银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('294', '9', '台湾永丰银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('295', '9', '台湾土地银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('296', '9', '国泰世华银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('297', '9', '彰化商业银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('298', '9', '台湾第一银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('299', '9', '合作金库银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('300', '9', '台湾工业银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('301', '9', '台北富邦银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('302', '9', '花旗银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('303', '9', '渣打银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('304', '9', '瑞穗实业银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('305', '9', '三井住友银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('306', '9', '星展银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('307', '9', '三菱东京日联银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('308', '9', '苏格兰皇家银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('309', '9', '韩国友利银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('310', '9', '大华银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('311', '9', '韩亚银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('312', '9', '韩国企业银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('313', '9', '德意志银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('314', '9', '东方汇理银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('315', '9', '宁波国际银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('316', '9', '华美银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('317', '9', '法国巴黎银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('318', '9', '新韩银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('319', '9', '韩国外换银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('320', '9', '泰国盘谷银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('321', '9', '菲律宾首都银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('322', '9', '正信银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('323', '9', '法国兴业银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('324', '9', '澳新银行（中国）', null, null, '1');
INSERT INTO `attributedetail` VALUES ('325', '9', '山口银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('326', '9', '横滨银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('327', '9', '名古屋银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('328', '9', '瑞士宝盛银行', null, null, '1');
INSERT INTO `attributedetail` VALUES ('329', '10', '哲学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('330', '10', '经济学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('331', '10', '财政学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('332', '10', '金融学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('333', '10', '经济与贸易', null, null, '1');
INSERT INTO `attributedetail` VALUES ('334', '10', '法学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('335', '10', '政治学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('336', '10', '社会学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('337', '10', '民族学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('338', '10', '马克思主义理论', null, null, '1');
INSERT INTO `attributedetail` VALUES ('339', '10', '公安学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('340', '10', '教育学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('341', '10', '体育学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('342', '10', '中国语言文学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('343', '10', '外国语言文学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('344', '10', '新闻传播学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('345', '10', '历史学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('346', '10', '数学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('347', '10', '物理学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('348', '10', '化学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('349', '10', '天文学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('350', '10', '地理科学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('351', '10', '大气科学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('352', '10', '海洋科学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('353', '10', '地球物理学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('354', '10', '地质学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('355', '10', '生物科学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('356', '10', '心理学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('357', '10', '统计学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('358', '10', '力学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('359', '10', '机械', null, null, '1');
INSERT INTO `attributedetail` VALUES ('360', '10', '仪器', null, null, '1');
INSERT INTO `attributedetail` VALUES ('361', '10', '材料', null, null, '1');
INSERT INTO `attributedetail` VALUES ('362', '10', '能源动力', null, null, '1');
INSERT INTO `attributedetail` VALUES ('363', '10', '电气', null, null, '1');
INSERT INTO `attributedetail` VALUES ('364', '10', '电子信息', null, null, '1');
INSERT INTO `attributedetail` VALUES ('365', '10', '自动化', null, null, '1');
INSERT INTO `attributedetail` VALUES ('366', '10', '计算机', null, null, '1');
INSERT INTO `attributedetail` VALUES ('367', '10', '土木', null, null, '1');
INSERT INTO `attributedetail` VALUES ('368', '10', '水利', null, null, '1');
INSERT INTO `attributedetail` VALUES ('369', '10', '测绘', null, null, '1');
INSERT INTO `attributedetail` VALUES ('370', '10', '化工与制药', null, null, '1');
INSERT INTO `attributedetail` VALUES ('371', '10', '地质', null, null, '1');
INSERT INTO `attributedetail` VALUES ('372', '10', '矿业', null, null, '1');
INSERT INTO `attributedetail` VALUES ('373', '10', '纺织', null, null, '1');
INSERT INTO `attributedetail` VALUES ('374', '10', '轻工', null, null, '1');
INSERT INTO `attributedetail` VALUES ('375', '10', '交通运输', null, null, '1');
INSERT INTO `attributedetail` VALUES ('376', '10', '海洋工程', null, null, '1');
INSERT INTO `attributedetail` VALUES ('377', '10', '航空航天', null, null, '1');
INSERT INTO `attributedetail` VALUES ('378', '10', '兵器', null, null, '1');
INSERT INTO `attributedetail` VALUES ('379', '10', '核工程', null, null, '1');
INSERT INTO `attributedetail` VALUES ('380', '10', '农业工程', null, null, '1');
INSERT INTO `attributedetail` VALUES ('381', '10', '林业工程', null, null, '1');
INSERT INTO `attributedetail` VALUES ('382', '10', '环境科学与工程', null, null, '1');
INSERT INTO `attributedetail` VALUES ('383', '10', '生物医学工程', null, null, '1');
INSERT INTO `attributedetail` VALUES ('384', '10', '食品科学与工程', null, null, '1');
INSERT INTO `attributedetail` VALUES ('385', '10', '建筑', null, null, '1');
INSERT INTO `attributedetail` VALUES ('386', '10', '安全科学与工程', null, null, '1');
INSERT INTO `attributedetail` VALUES ('387', '10', '生物工程', null, null, '1');
INSERT INTO `attributedetail` VALUES ('388', '10', '公安技术', null, null, '1');
INSERT INTO `attributedetail` VALUES ('389', '10', '植物生产', null, null, '1');
INSERT INTO `attributedetail` VALUES ('390', '10', '自然保护与环境生态', null, null, '1');
INSERT INTO `attributedetail` VALUES ('391', '10', '动物生产', null, null, '1');
INSERT INTO `attributedetail` VALUES ('392', '10', '动物医学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('393', '10', '林学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('394', '10', '水产', null, null, '1');
INSERT INTO `attributedetail` VALUES ('395', '10', '草学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('396', '10', '基础医学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('397', '10', '临床医学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('398', '10', '口腔医学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('399', '10', '公共卫生与预防医学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('400', '10', '中医学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('401', '10', '中西医结合', null, null, '1');
INSERT INTO `attributedetail` VALUES ('402', '10', '药学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('403', '10', '中药学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('404', '10', '法医学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('405', '10', '医学技术', null, null, '1');
INSERT INTO `attributedetail` VALUES ('406', '10', '护理学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('407', '10', '管理科学与工程', null, null, '1');
INSERT INTO `attributedetail` VALUES ('408', '10', '工商管理', null, null, '1');
INSERT INTO `attributedetail` VALUES ('409', '10', '农业经济管理', null, null, '1');
INSERT INTO `attributedetail` VALUES ('410', '10', '公共管理', null, null, '1');
INSERT INTO `attributedetail` VALUES ('411', '10', '图书情报与档案管理', null, null, '1');
INSERT INTO `attributedetail` VALUES ('412', '10', '物流管理与工程', null, null, '1');
INSERT INTO `attributedetail` VALUES ('413', '10', '电子商务', null, null, '1');
INSERT INTO `attributedetail` VALUES ('414', '10', '旅游管理', null, null, '1');
INSERT INTO `attributedetail` VALUES ('415', '10', '艺术学理论', null, null, '1');
INSERT INTO `attributedetail` VALUES ('416', '10', '音乐与舞蹈学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('417', '10', '戏剧与影视学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('418', '10', '美术学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('419', '10', '设计学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('420', '10', '军事思想及军事历史', null, null, '1');
INSERT INTO `attributedetail` VALUES ('421', '10', '战略学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('422', '10', '战役学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('423', '10', '战术学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('424', '10', '军队指挥学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('425', '10', '军制学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('426', '10', '军队政治工作学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('427', '10', '军事后勤学与军事装备学', null, null, '1');
INSERT INTO `attributedetail` VALUES ('428', '20', '医保', null, null, '1');
INSERT INTO `attributedetail` VALUES ('429', '20', '社保', null, null, '1');
INSERT INTO `attributedetail` VALUES ('430', '14', '公有处方', null, null, '1');
INSERT INTO `attributedetail` VALUES ('431', '14', '私有处方', null, null, '1');
INSERT INTO `attributedetail` VALUES ('432', '15', '西药处方', null, null, '1');
INSERT INTO `attributedetail` VALUES ('433', '15', '中药处方', null, null, '1');
INSERT INTO `attributedetail` VALUES ('434', '15', '中西结合处方', null, null, '1');
INSERT INTO `attributedetail` VALUES ('435', '16', '抗炎', null, null, '1');
INSERT INTO `attributedetail` VALUES ('436', '16', '抗体', null, null, '1');
INSERT INTO `attributedetail` VALUES ('437', '7', '糊剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('438', '7', '贴剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('439', '7', '滴剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('440', '7', '含漱剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('441', '7', '舌下片剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('442', '7', '膜剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('443', '7', '栓剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('444', '7', '长效制剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('445', '7', '海绵剂', null, null, '1');
INSERT INTO `attributedetail` VALUES ('446', '7', '其它剂型', null, null, '1');
INSERT INTO `attributedetail` VALUES ('447', '24', '口服', null, null, '1');
INSERT INTO `attributedetail` VALUES ('448', '24', '外用', null, null, '1');
INSERT INTO `attributedetail` VALUES ('449', '24', '皮下', 'H', null, '1');
INSERT INTO `attributedetail` VALUES ('450', '24', '皮内', 'ID', null, '1');
INSERT INTO `attributedetail` VALUES ('451', '24', '肌注', 'IM', null, '1');
INSERT INTO `attributedetail` VALUES ('452', '24', '静注', 'IV', null, '1');
INSERT INTO `attributedetail` VALUES ('453', '24', '静滴', 'VD', null, '1');
INSERT INTO `attributedetail` VALUES ('454', '24', '动注', 'IA', null, '1');
INSERT INTO `attributedetail` VALUES ('455', '24', '鞘内', 'IT', null, '1');
INSERT INTO `attributedetail` VALUES ('456', '24', '椎管', null, null, '1');
INSERT INTO `attributedetail` VALUES ('457', '24', '椎管内', 'IS', null, '1');
INSERT INTO `attributedetail` VALUES ('458', '24', '心内', 'IC', null, '1');
INSERT INTO `attributedetail` VALUES ('459', '25', '立刻', 'st!', null, '1');
INSERT INTO `attributedetail` VALUES ('460', '25', '每日一次', 'qd', null, '1');
INSERT INTO `attributedetail` VALUES ('461', '25', '每日两次', 'bid', null, '1');
INSERT INTO `attributedetail` VALUES ('462', '25', '每日三次', 'tid', null, '1');
INSERT INTO `attributedetail` VALUES ('463', '25', '每日四次', 'qid', null, '1');
INSERT INTO `attributedetail` VALUES ('464', '25', '每小时一次', 'qh', null, '1');
INSERT INTO `attributedetail` VALUES ('465', '25', '每两小时一次', 'q2h', null, '1');
INSERT INTO `attributedetail` VALUES ('466', '25', '每三小时一次', 'q3h', null, '1');
INSERT INTO `attributedetail` VALUES ('467', '25', '每四小时一次', 'q4h', null, '1');
INSERT INTO `attributedetail` VALUES ('468', '25', '每六小时一次', 'q6h', null, '1');
INSERT INTO `attributedetail` VALUES ('469', '25', '每晚一次', 'qn', null, '1');
INSERT INTO `attributedetail` VALUES ('470', '25', '每隔天一次', 'qod', null, '1');
INSERT INTO `attributedetail` VALUES ('471', '25', '每周一次', 'qw', null, '1');
INSERT INTO `attributedetail` VALUES ('472', '25', '每周两次', 'biw', null, '1');
INSERT INTO `attributedetail` VALUES ('473', '25', '临睡前', 'hs', null, '1');
INSERT INTO `attributedetail` VALUES ('474', '25', '上午', 'am', null, '1');
INSERT INTO `attributedetail` VALUES ('475', '25', '下午', 'pm', null, '1');
INSERT INTO `attributedetail` VALUES ('476', '25', '饭前', 'ac', null, '1');
INSERT INTO `attributedetail` VALUES ('477', '25', '饭后', 'pc', null, '1');
INSERT INTO `attributedetail` VALUES ('478', '25', '中午12点', '12n', null, '1');
INSERT INTO `attributedetail` VALUES ('479', '25', '午夜12点', '12mn', null, '1');
INSERT INTO `attributedetail` VALUES ('480', '25', '必要时（长期）', 'prn', null, '1');
INSERT INTO `attributedetail` VALUES ('481', '25', '紧急时（限用一次，12小时有效）', 'sos', null, '1');
INSERT INTO `attributedetail` VALUES ('482', '4', '测试', null, '测试', '2');
INSERT INTO `attributedetail` VALUES ('483', '4', '测试数据', null, '测试数据', '2');
INSERT INTO `attributedetail` VALUES ('484', '4', '测试数据', null, '测试数据', '2');
INSERT INTO `attributedetail` VALUES ('485', '4', '测试数据', null, '测试数据', '2');

-- ----------------------------
-- Table structure for charge
-- ----------------------------
DROP TABLE IF EXISTS `charge`;
CREATE TABLE `charge` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `prescriptionid` int(11) DEFAULT NULL COMMENT '处方id',
  `receiptcode` varchar(32) DEFAULT NULL COMMENT '收据号',
  `invoicecode` varchar(32) DEFAULT NULL COMMENT '发票号',
  `chargestatus` int(11) DEFAULT NULL COMMENT '收费状态',
  `discount` int(11) DEFAULT NULL COMMENT '折扣',
  `privilege` int(11) DEFAULT NULL COMMENT '优惠',
  `beforereceivable` decimal(8,2) DEFAULT NULL COMMENT '折前应收',
  `afterreceivable` decimal(8,2) DEFAULT NULL COMMENT '折后应收',
  `medicarecanpay` decimal(8,2) DEFAULT NULL COMMENT '医保可付',
  `cost` decimal(8,2) DEFAULT NULL COMMENT '费用',
  `operationpersonid` int(11) DEFAULT NULL COMMENT '操作人员id',
  `chargetime` datetime DEFAULT NULL COMMENT '收费时间',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='收费';

-- ----------------------------
-- Records of charge
-- ----------------------------
INSERT INTO `charge` VALUES ('11', '7', 'SFD36027747', 'FP96881876', '1', '100', '0', '30.00', null, '24.00', '30.00', '5', '2019-01-04 09:36:11', '1');
INSERT INTO `charge` VALUES ('12', '8', 'SFD61584030', 'FP90432994', '1', '100', '0', '30.00', null, '24.00', '30.00', '5', '2019-01-04 09:53:50', '1');
INSERT INTO `charge` VALUES ('13', '8', 'SFD58732819', 'FP94608092', '1', '100', '10', '30.00', null, '24.00', '29.70', '5', '2019-01-04 11:04:03', '1');
INSERT INTO `charge` VALUES ('14', '9', 'SFD11403101', 'FP87635355', '1', '100', '0', '12.00', null, '12.00', '12.00', '5', '2019-01-04 11:04:57', '1');
INSERT INTO `charge` VALUES ('15', '8', 'SFD47727654', 'FP47309982', '1', '100', '0', '30.00', null, '24.00', '30.00', '5', '2019-01-04 11:10:17', '1');
INSERT INTO `charge` VALUES ('16', '10', 'SFD70078081', 'FP16272810', '1', '100', '0', '12.00', null, '12.00', '12.00', '5', '2019-01-04 11:17:31', '1');
INSERT INTO `charge` VALUES ('17', '11', 'SFD80489983', 'FP55470229', '1', '100', '0', '4.00', null, '4.00', '4.00', '5', '2019-01-04 15:14:47', '1');
INSERT INTO `charge` VALUES ('18', '14', 'SFD69434906', 'FP14105077', '1', '100', '0', '9.00', null, '9.00', '9.00', '5', '2019-01-04 15:56:34', '1');

-- ----------------------------
-- Table structure for chargetype
-- ----------------------------
DROP TABLE IF EXISTS `chargetype`;
CREATE TABLE `chargetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `typecode` varchar(32) DEFAULT NULL COMMENT '类别编号',
  `typename` varchar(32) DEFAULT NULL COMMENT '类别名称',
  `itemmark` varchar(32) DEFAULT NULL COMMENT '项目标志',
  `discount` int(11) DEFAULT NULL COMMENT '类别折扣',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收费类别';

-- ----------------------------
-- Records of chargetype
-- ----------------------------
INSERT INTO `chargetype` VALUES ('1', '001', '西药费', '药费', '100', '', '1');
INSERT INTO `chargetype` VALUES ('2', '002', '中药费', '药费', '100', '', '1');
INSERT INTO `chargetype` VALUES ('11', '5566', '记录', '药费', '55', '55', '2');
INSERT INTO `chargetype` VALUES ('12', '33', '33', '33', '33', '33', '2');
INSERT INTO `chargetype` VALUES ('13', '44', '44', '44', '44', '44', '2');
INSERT INTO `chargetype` VALUES ('14', '', '', '', null, '', '2');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `departmentcode` varchar(32) DEFAULT NULL COMMENT '编号',
  `departmentname` varchar(32) DEFAULT NULL COMMENT '名称',
  `pinyincode` varchar(16) DEFAULT NULL COMMENT '拼音简码',
  `wubicode` varchar(16) DEFAULT NULL COMMENT '五笔简码',
  `registersum` decimal(8,2) DEFAULT NULL COMMENT '挂号金额',
  `site` varchar(64) DEFAULT NULL COMMENT '科室位置',
  `isregister` int(11) DEFAULT NULL COMMENT '是否允许挂号',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='科室';

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '001', '院办', 'YB', null, null, 'X楼X室', '2', '1', '');
INSERT INTO `department` VALUES ('2', '002', '党办', 'DB', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('3', '003', '住院办', 'ZYB', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('4', '004', '内科', 'NK', null, '3.00', 'X楼X室', '1', '1', '测试数据');
INSERT INTO `department` VALUES ('5', '005', '外科', 'WK', null, '3.00', 'X楼X室', '1', '1', '测试数据');
INSERT INTO `department` VALUES ('6', '006', '儿科', 'EK', null, '3.00', 'X楼X室', '1', '1', '测试数据');
INSERT INTO `department` VALUES ('7', '007', '妇产科', 'FCK', null, '3.00', 'X楼X室', '1', '1', '测试数据');
INSERT INTO `department` VALUES ('8', '008', '眼科', 'YK', null, '3.00', 'X楼X室', '1', '1', '测试数据');
INSERT INTO `department` VALUES ('9', '009', '牙科', 'YK', null, '3.00', 'X楼X室', '1', '1', '测试数据');
INSERT INTO `department` VALUES ('10', '010', '五官科', 'WGK', null, '3.00', 'X楼X室', '1', '1', '测试数据');
INSERT INTO `department` VALUES ('11', '011', '泌尿科', 'MNK', null, '3.00', 'X楼X室', '1', '1', '测试数据');
INSERT INTO `department` VALUES ('12', '012', '消化科', 'XHK', null, '3.00', 'X楼X室', '1', '1', '测试数据');
INSERT INTO `department` VALUES ('13', '013', '检验科', 'JYK', null, '3.00', 'X楼X室', '1', '1', '测试数据');
INSERT INTO `department` VALUES ('14', '014', '急诊科', 'JZK', null, '3.00', 'X楼X室', '1', '1', '测试数据');
INSERT INTO `department` VALUES ('15', '015', '保健科', 'BJK', null, '3.00', 'X楼X室', '1', '1', '测试数据');
INSERT INTO `department` VALUES ('16', '016', '药剂科', 'YJK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('17', '017', '放射科', 'FSK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('18', '018', '临床科', 'LCK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('19', '019', '功能科', 'GNK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('20', '020', '病理科', 'BLK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('21', '021', '手术室', 'SSS', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('22', '022', '护理部', 'HLB', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('23', '023', '营养科', 'YYK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('24', '024', '消毒器材供应室', 'XDQCGYS', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('25', '025', '质控科', 'ZGK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('26', '026', '院感科', 'YGK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('27', '027', '药学部', 'YXB', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('28', '028', '医务科', 'YWK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('29', '029', '人事科', 'RSK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('30', '030', '财务科', 'CWK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('31', '031', '科教科', 'KJK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('32', '032', '总务科', 'ZWK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('33', '033', '保卫科', 'BWK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('34', '034', '设备科', 'SBK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('35', '035', '供应科', 'GYK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('36', '036', '膳食科', 'SSK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('37', '037', '后勤部', 'HQB', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('38', '038', '病案室', 'BAS', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('39', '039', '统计室', 'TJS', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('40', '040', '图书室', 'TSS', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('41', '041', '健康教育科', 'JKJYK', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('42', '042', '计算机中心', 'JSJZX', null, null, 'X楼X室', '2', '1', '测试数据');
INSERT INTO `department` VALUES ('43', '042', 'fsdfsdsd', 'FSDFSDSD', null, '3.00', 'sdfdds', '1', '2', 'dsfdsdf');
INSERT INTO `department` VALUES ('44', '043', 'fsd', 'FSD', null, null, 'sfs', null, '2', 'dsdfs');

-- ----------------------------
-- Table structure for disease
-- ----------------------------
DROP TABLE IF EXISTS `disease`;
CREATE TABLE `disease` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `diseasecode` varchar(32) DEFAULT NULL COMMENT '疾病编号',
  `diseasename` varchar(32) DEFAULT NULL COMMENT '疾病名称',
  `diseaseexplain` varchar(256) DEFAULT NULL COMMENT '疾病说明',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='疾病档案';

-- ----------------------------
-- Records of disease
-- ----------------------------
INSERT INTO `disease` VALUES ('1', '001', '疾病A', '疾病A的说明', '1');
INSERT INTO `disease` VALUES ('2', '002', '疾病B', '疾病B的说明', '1');
INSERT INTO `disease` VALUES ('3', '003', '疾病C', '疾病C的说明', '1');

-- ----------------------------
-- Table structure for drug
-- ----------------------------
DROP TABLE IF EXISTS `drug`;
CREATE TABLE `drug` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chargetypeid` int(11) DEFAULT NULL COMMENT '收费类别id',
  `drugname` varchar(32) DEFAULT NULL COMMENT '药品名称',
  `drugcode` varchar(32) DEFAULT NULL COMMENT '药品编码',
  `barcode` varchar(32) DEFAULT NULL COMMENT '条形码',
  `medicalsciencecode` varchar(32) DEFAULT NULL COMMENT '医学编码',
  `enname` varchar(32) DEFAULT NULL COMMENT '英文名称',
  `origin` varchar(16) DEFAULT NULL COMMENT '产地',
  `approvalnumber` varchar(32) DEFAULT NULL COMMENT '批准文号',
  `pinyincode` varchar(16) DEFAULT NULL COMMENT '拼音简码',
  `wubicode` varchar(16) DEFAULT NULL COMMENT '五笔简码',
  `drugtypeid` int(11) DEFAULT NULL COMMENT '药品类型id',
  `agenttypeid` int(11) DEFAULT NULL COMMENT '药品剂型id',
  `dosageunit` varchar(16) DEFAULT NULL COMMENT '剂量单位',
  `unitdosage` varchar(16) DEFAULT NULL COMMENT '单位剂量',
  `norms` varchar(16) DEFAULT NULL COMMENT '规格',
  `inbulkbuyprice` decimal(8,2) DEFAULT NULL COMMENT '散装进价',
  `inbulkvipprice` decimal(8,2) DEFAULT NULL COMMENT '散会员价',
  `inbulksellprice` decimal(8,2) DEFAULT NULL COMMENT '散装售价',
  `packagebuyprice` decimal(8,2) DEFAULT NULL COMMENT '件装进价',
  `packagesellprice` decimal(8,2) DEFAULT NULL COMMENT '件装售价',
  `packagevipprice` decimal(8,2) DEFAULT NULL COMMENT '件会员价',
  `ismedicare` int(11) DEFAULT NULL COMMENT '是否医保',
  `medicaretypeid` int(11) DEFAULT NULL COMMENT '医保类别id',
  `medicarecode` int(11) DEFAULT NULL COMMENT '医保编码',
  `medicareprice` varchar(32) DEFAULT NULL COMMENT '医保价格',
  `isaddwater` int(11) DEFAULT NULL COMMENT '是否加水',
  `isST` int(11) DEFAULT NULL COMMENT '是否皮试',
  `isspecialdrug` int(11) DEFAULT NULL COMMENT '是否特殊药品',
  `shelfcode` varchar(32) DEFAULT NULL COMMENT '货架编号',
  `productiondata` date DEFAULT NULL COMMENT '生产日期',
  `expiration` int(11) DEFAULT NULL COMMENT '保质期',
  `supplierid` int(11) DEFAULT NULL COMMENT '供应商id',
  `usestatus` int(11) DEFAULT NULL COMMENT '使用状态',
  `manufacturer` varchar(64) DEFAULT NULL COMMENT '厂商名称',
  `applysymptom` varchar(32) DEFAULT NULL COMMENT '适用症状',
  `mainefficacy` varchar(64) DEFAULT NULL COMMENT '主要功效',
  `inventoryquantity` int(11) DEFAULT NULL COMMENT '库存数量',
  `inventoryprice` decimal(8,2) DEFAULT NULL COMMENT '库存单价',
  `typeinpersonnelid` int(11) DEFAULT NULL COMMENT '录入人员id',
  `typeindatetime` datetime DEFAULT NULL COMMENT '录入时间',
  `alterpersonnelid` int(11) DEFAULT NULL COMMENT '修改人员id',
  `alterdatetime` datetime DEFAULT NULL COMMENT '修改时间',
  `picture` varchar(128) DEFAULT NULL COMMENT '图片',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='药品';

-- ----------------------------
-- Records of drug
-- ----------------------------
INSERT INTO `drug` VALUES ('1', '1', '盐酸特比萘芬乳膏', '1', '1', '1', 'YanSuanTeBiNaiFenRuGao', null, '1', 'YSTBNFRG', null, '239', '256', '1', '1', '1', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2', '260', '1', '1', '2', '1', '1', '1', '2016-12-04', '1', '1', '1', '1', '1', '1', '36', '3.00', '5', '2016-12-04 09:59:34', '5', '2017-02-20 21:28:06', 'http://127.0.0.1:8089/hospitalmanage/20170220/93575578380129.jpg', '1');
INSERT INTO `drug` VALUES ('2', '1', '健胃消食片', '2', '2', '2', 'JianWeiXiaoShiPian', null, '2', 'JWXSP', null, '240', '242', '2', '2', '2', '2.00', '2.00', '2.00', '2.00', '2.00', '2.00', '1', '260', '2', '2', '2', '2', '2', '2', '2016-12-04', '2', '1', '1', '2', '2', '2', '31', '2.00', '5', '2016-12-04 11:06:59', '5', '2017-02-20 21:28:15', 'http://127.0.0.1:8089/hospitalmanage/20170220/93585007815857.jpg', '1');
INSERT INTO `drug` VALUES ('4', '1', '云南白药喷雾器', '3', '3', '3', '3', null, '3', 'YNBYPWQ', null, '240', '253', '3', '3', '3', '3.00', '3.00', '3.00', '3.00', '3.00', '3.00', '1', '260', '3', '3', '2', '1', '2', '3', '2016-12-01', '3', '1', '1', '3', '3', '3', '3', '3.00', '5', '2016-12-04 20:22:05', null, null, '/hospitalmanage/image/3363734269060.jpg', '1');
INSERT INTO `drug` VALUES ('5', '1', '藿香水', '3', '3', '33', 'sds', null, '2', 'HXS', null, '239', '246', '2', '3', '3', '2.00', '3.00', '2.00', '2.00', '2.00', '3.00', '1', '258', '4', '1', '2', '2', '2', '2', '2016-12-01', '2', '1', '1', '2', '2', '2', '9', '2.00', '5', '2016-12-06 19:33:45', '5', '2017-02-23 16:47:47', 'http://127.0.0.1:8089/hospitalmanage/20170220/93601237022397.jpg', '1');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `employeecode` varchar(64) DEFAULT NULL COMMENT '员工编号',
  `employeename` varchar(32) DEFAULT NULL COMMENT '姓名',
  `psw` varchar(32) DEFAULT NULL COMMENT '密码',
  `pinyincode` varchar(16) DEFAULT NULL COMMENT '拼音简码',
  `wubicode` varchar(16) DEFAULT NULL COMMENT '五笔简码',
  `jobtitleid` int(11) DEFAULT NULL COMMENT '职称id',
  `positionid` int(11) DEFAULT NULL COMMENT '职务id',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `departmentid` int(11) DEFAULT NULL COMMENT '所属科室id',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `idcard` varchar(18) DEFAULT NULL COMMENT '身份证',
  `address` varchar(128) DEFAULT NULL COMMENT '地址',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `inductiontime` datetime DEFAULT NULL COMMENT '入职时间',
  `dimissiontime` datetime DEFAULT NULL COMMENT '离职时间',
  `maxeducationid` int(11) DEFAULT NULL COMMENT '最高学历id',
  `majorid` int(11) DEFAULT NULL COMMENT '专业id',
  `politicsstatusid` int(11) DEFAULT NULL COMMENT '政治面貌id',
  `isoperator` int(11) DEFAULT NULL COMMENT '是否操作员',
  `isdoctor` int(11) DEFAULT NULL COMMENT '是否医生',
  `isnurse` int(11) DEFAULT NULL COMMENT '是否护士',
  `workstatus` int(11) DEFAULT NULL COMMENT '工作状态',
  `picture` varchar(128) DEFAULT NULL COMMENT '图片',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='员工';

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('5', 'admin', '赵医生', '202cb962ac59075b964b07152d234b70', 'ZYS', null, '218', '22', '2', '456', '1', '456', '456', '2', '2016-11-02', '2016-11-25 00:00:00', null, '3', '396', '8', '2', '2', '1', '1', 'http://127.0.0.1:8089/hospitalmanage/20170220/93674530641596.jpg', '2', '1');
INSERT INTO `employee` VALUES ('6', '001', '钱医生', '202cb962ac59075b964b07152d234b70', 'QYS', null, '218', '44', '1', '44', '4', '44', '44', '123321', '2016-11-03', '2016-11-10 00:00:00', null, '2', '397', '9', '1', '1', '2', '1', 'http://127.0.0.1:8089/hospitalmanage/20170220/93687381134042.jpg', '2131212', '1');
INSERT INTO `employee` VALUES ('7', '002', '张医生', '202cb962ac59075b964b07152d234b70', 'ZYS', null, '219', '45', '1', '66', '5', '66', '66', '66', '2016-11-02', '2016-11-19 00:00:00', '2016-11-12 00:00:00', '3', '400', '6', '1', '1', '2', '2', 'http://127.0.0.1:8089/hospitalmanage/20170220/93703097234797.jpg', '66', '1');
INSERT INTO `employee` VALUES ('8', '003', '李医生', '202cb962ac59075b964b07152d234b70', 'LYS', null, '218', '46', '1', '44', '6', '44', '44', '44', '2016-11-16', '2016-11-10 00:00:00', '2016-11-09 00:00:00', '3', '396', '9', '1', '1', '2', '1', 'http://127.0.0.1:8089/hospitalmanage/20170220/93730498107728.png', '44', '1');
INSERT INTO `employee` VALUES ('9', '004', '王医生', '202cb962ac59075b964b07152d234b70', 'WYS', null, '219', '46', '1', '55', '7', '55', '55', '55', '2016-11-02', '2016-11-11 00:00:00', null, '2', '405', '6', '1', '1', '2', '1', 'http://127.0.0.1:8089/hospitalmanage/20170220/93747116976363.png', '55', '1');
INSERT INTO `employee` VALUES ('10', '005', '孙医生', '202cb962ac59075b964b07152d234b70', 'SYS', null, '219', '47', '1', '77', '8', '77', '77', '77', '2016-11-02', '2016-11-10 00:00:00', null, '3', '406', '6', '1', '1', '2', '1', 'http://127.0.0.1:8089/hospitalmanage/20170220/93760688369745.jpg', '77', '2');
INSERT INTO `employee` VALUES ('11', '006', '田医生', '202cb962ac59075b964b07152d234b70', 'TYS', null, '218', '47', '1', '3', '9', '3', '3', '3', '1978-03-02', '2017-02-08 00:00:00', null, '1', '400', '6', '1', '1', '2', '1', 'http://127.0.0.1:8089/hospitalmanage/20170220/93310090000388.png', '2', '2');
INSERT INTO `employee` VALUES ('12', '007', '王医生', '202cb962ac59075b964b07152d234b70', 'WYS', null, '236', '154', '2', '13413311322', '30', '865133204@qq.com', '440923198005050345', '广东省广州市', '1980-05-05', '2017-03-15 00:00:00', null, '3', '330', '8', '1', '2', '1', '1', 'http://127.0.0.1:8089/hospitalmanage/20170315/29835237175954.jpg', '', '2');
INSERT INTO `employee` VALUES ('13', '010', '辛医生', '202cb962ac59075b964b07152d234b70', 'XYS', null, '223', '33', '1', '15589329554', '4', 'yinmeng525@outlook.com', '370112199405256736', '山东省济南市历下区', '2018-09-04', '2018-12-29 00:00:00', null, '1', '394', '6', '2', '1', '2', '1', 'http://127.0.0.1:8089/hospitalmanage/initial.jpg', '无', '2');
INSERT INTO `employee` VALUES ('14', '010', '王医生', '202cb962ac59075b964b07152d234b70', 'WYS', null, '218', '22', '1', '18827373434', '1', '1231231123@163.com', '372638192192183922', '北京', '2018-03-29', '2019-01-02 00:00:00', null, '1', '329', '6', '2', '1', '2', '1', 'http://127.0.0.1:8089/hospitalmanage/initial.jpg', '', '2');
INSERT INTO `employee` VALUES ('15', '100', '辛医生', '202cb962ac59075b964b07152d234b70', 'XYS', null, '218', '22', '1', '18827373434', '1', '111@store.com', '3821972821212', '北京', '2019-01-01', '2019-01-01 00:00:00', null, '1', '329', '6', '2', '1', '2', '1', 'http://127.0.0.1:8089/hospitalmanage/initial.jpg', '无', '2');
INSERT INTO `employee` VALUES ('16', '120', '尹医生', '202cb962ac59075b964b07152d234b70', 'YYS', null, '218', '22', '1', '15589329554', '1', 'yinmeng525@outlook.com', '234325676574443123', '山东省泰安市泰山区岱宗大街', '2018-12-12', '2019-01-05 00:00:00', null, '1', '329', '6', '2', '1', '2', '1', 'http://127.0.0.1:8089/hospitalmanage/initial.jpg', '无', '2');
INSERT INTO `employee` VALUES ('17', '130', '辛医生', '202cb962ac59075b964b07152d234b70', 'YS', null, '218', '22', '1', '15589329554', '1', 'yinmeng525@outlook.com', '370112199405256736', '收到', '2018-12-30', '2019-01-03 00:00:00', null, '1', '329', '6', '2', '1', '2', '1', 'http://127.0.0.1:8089/hospitalmanage/initial.jpg', '无', '1');

-- ----------------------------
-- Table structure for medicalrecord
-- ----------------------------
DROP TABLE IF EXISTS `medicalrecord`;
CREATE TABLE `medicalrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `registerid` int(11) DEFAULT NULL COMMENT '挂号id',
  `medicalrecordcode` varchar(32) DEFAULT NULL COMMENT '病历编号',
  `medicalrecordname` varchar(32) DEFAULT NULL COMMENT '病历名称',
  `doctorid` int(11) DEFAULT NULL COMMENT '医生id',
  `diseaseid` int(11) DEFAULT NULL COMMENT '疾病类型id',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  `patientappeal` varchar(256) DEFAULT NULL COMMENT '病人主诉',
  `medicalhistory` varchar(256) DEFAULT NULL COMMENT '病人病史',
  `physicalstatus` varchar(256) DEFAULT NULL COMMENT '体检情况',
  `primarydiagnosis` varchar(256) DEFAULT NULL COMMENT '初步诊断',
  `opinion` varchar(256) DEFAULT NULL COMMENT '处理意见',
  `recordtime` datetime DEFAULT NULL COMMENT '记录时间',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='病历';

-- ----------------------------
-- Records of medicalrecord
-- ----------------------------
INSERT INTO `medicalrecord` VALUES ('6', '37', 'BL80774234', '感冒', '6', '1', '无', '流涕', '无', '健康', '感冒', '静养', '2019-01-04 09:14:05', '1');
INSERT INTO `medicalrecord` VALUES ('7', '38', 'BL3214237', '流行性感冒', '6', '1', '感冒', '头疼、流涕、乏力', '流行性感冒', '流行性感冒', '流行性感冒', '点滴、吃药', '2019-01-04 09:35:12', '1');
INSERT INTO `medicalrecord` VALUES ('8', '40', 'BL22314886', '发烧', '6', '1', '无', '发烧', '无', '健康', '发烧', '静养', '2019-01-04 09:52:50', '1');
INSERT INTO `medicalrecord` VALUES ('9', '41', 'BL52112150', '感冒', '6', '1', '无', '流涕', '无', '健康', '感冒', '静养', '2019-01-04 11:02:45', '1');
INSERT INTO `medicalrecord` VALUES ('10', '42', 'BL37325231', '脚疼', '7', '2', '', '疼', '无', '良好', '扭伤', '手术', '2019-01-04 11:09:05', '1');
INSERT INTO `medicalrecord` VALUES ('11', '43', 'BL32720247', '发烧', '6', '1', '无', '发烧', '无', '健康', '发烧', '静养', '2019-01-04 11:16:43', '1');
INSERT INTO `medicalrecord` VALUES ('12', '45', 'BL33946453', '流行性感冒', '6', '1', '感冒', '头疼、流涕、乏力', '流行性感冒', '流行性感冒', '流行性感冒', '点滴、吃药', '2019-01-04 15:13:32', '1');
INSERT INTO `medicalrecord` VALUES ('13', '46', 'BL60816742', '流行性感冒', '6', '1', '感冒', '头疼、流涕、乏力', '流行性感冒', '流行性感冒', '流行性感冒', '点滴、吃药', '2019-01-04 15:45:13', '1');
INSERT INTO `medicalrecord` VALUES ('14', '47', 'BL28290386', '流行性感冒', '6', '1', '感冒', '头疼、流涕、乏力', '流行性感冒', '流行性感冒', '流行性感冒', '点滴、吃药', '2019-01-04 15:50:08', '1');
INSERT INTO `medicalrecord` VALUES ('15', '48', 'BL28835358', '发烧', '6', '1', '无', '发烧', '无', '健康', '发烧', '静养', '2019-01-04 15:54:43', '1');

-- ----------------------------
-- Table structure for medicalrecordtemplate
-- ----------------------------
DROP TABLE IF EXISTS `medicalrecordtemplate`;
CREATE TABLE `medicalrecordtemplate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `templatecode` varchar(32) DEFAULT NULL COMMENT '编号',
  `templatename` varchar(32) DEFAULT NULL COMMENT '名称',
  `doctorid` int(11) DEFAULT NULL COMMENT '医生id',
  `diseaseid` int(11) DEFAULT NULL COMMENT '疾病类型id',
  `fitstatus` varchar(128) DEFAULT NULL COMMENT '适合情况',
  `note` varchar(128) DEFAULT NULL COMMENT '模板备注',
  `patientappeal` varchar(256) DEFAULT NULL COMMENT '病人主诉',
  `medicalhistory` varchar(256) DEFAULT NULL COMMENT '病人病史',
  `physicalstatus` varchar(256) DEFAULT NULL COMMENT '体检情况',
  `primarydiagnosis` varchar(256) DEFAULT NULL COMMENT '初步诊断',
  `opinion` varchar(256) DEFAULT NULL COMMENT '处理意见',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='病历模板';

-- ----------------------------
-- Records of medicalrecordtemplate
-- ----------------------------
INSERT INTO `medicalrecordtemplate` VALUES ('14', 'BLMB25528105', '流行性感冒', '6', '1', '感冒', '感冒', '头疼、流涕、乏力', '流行性感冒', '流行性感冒', '流行性感冒', '点滴、吃药', '1');
INSERT INTO `medicalrecordtemplate` VALUES ('15', 'BLMB29273638', 'dsd', '5', '1', '双方的发生', '范德萨发生', '双方发生的', '双方发生大幅度', '多少分发的啥都是', '发生的所得税', '所得税法师法师打发', '2');
INSERT INTO `medicalrecordtemplate` VALUES ('16', 'BLMB26018120', '感冒', '6', '1', '感冒', '无', '流涕', '无', '健康', '感冒', '静养', '1');
INSERT INTO `medicalrecordtemplate` VALUES ('17', 'BLMB9532220', '发烧', '6', '1', '发烧', '无', '发烧', '无', '健康', '发烧', '静养', '1');
INSERT INTO `medicalrecordtemplate` VALUES ('18', 'BLMB21275416', '头痛', '9', '3', '头痛', '无', '头痛', '无', '健康', '头痛', '静养', '1');
INSERT INTO `medicalrecordtemplate` VALUES ('19', 'BLMB91291975', '脚疼', '7', '2', '无', '', '疼', '无', '良好', '扭伤', '手术', '1');

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cardcode` varchar(32) DEFAULT NULL COMMENT '病人卡号',
  `patientname` varchar(32) DEFAULT NULL COMMENT '病人名称',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `maritalstatusid` int(11) DEFAULT NULL COMMENT '婚姻状况id',
  `job` varchar(16) DEFAULT NULL COMMENT '职业',
  `patienttypeid` int(11) DEFAULT NULL COMMENT '病人类别id',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `insuretypeid` int(11) DEFAULT NULL COMMENT '参保类型id',
  `medicarecode` varchar(32) DEFAULT NULL COMMENT '医保卡号',
  `viptypeid` int(11) DEFAULT NULL COMMENT '会员类型id',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(128) DEFAULT NULL COMMENT '联系地址',
  `taboo` varchar(64) DEFAULT NULL COMMENT '个人忌讳',
  `drugallergyhistory` varchar(64) DEFAULT NULL COMMENT '药物过敏史',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='病人资料';

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES ('29', '41039112', '孙某某', '1', '19', '工人', '1', '30', '428', '12324783143', '1', '15589329554', '山东省济南市', null, '青霉素');
INSERT INTO `patient` VALUES ('30', '77195747', '张凤某', '1', '18', '学生', '1', '11', '0', '997349795', '1', '13584685197', '山东省泰安市泰山区岱宗大街', null, '无');
INSERT INTO `patient` VALUES ('31', '16919924', '张凤某', '1', '18', '学生', '1', '13', '428', '135563775', '1', '15589329554', '山东省泰安市泰山区岱宗大街', null, '无');
INSERT INTO `patient` VALUES ('32', '9771567', '李某某', '1', '18', '学生', '1', '20', '428', '43710743769', '1', '15589329554', '山东省泰安市泰山区岱宗大街', null, '青霉素');
INSERT INTO `patient` VALUES ('33', '35499750', '张某', '1', '18', '学生', '1', '15', '428', '5346785643', '1', '15589329554', '山东省泰安市泰山区岱宗大街', null, '青霉素');
INSERT INTO `patient` VALUES ('34', '39997900', '王某某', '1', '18', '学生', '1', '19', '428', '423426732', '1', '15589329554', '山东省泰安市泰山区岱宗大街', null, '青霉素');
INSERT INTO `patient` VALUES ('35', '25853893', '张三', '1', '18', '学生', '1', '19', '428', '18782382328', '1', '18827373434', '山东省济南市历下区', null, '无');
INSERT INTO `patient` VALUES ('36', '50466197', '王世超', '1', '18', '学生', '1', '22', '429', '213232736722', '1', '13584685197', '北京', null, '无');
INSERT INTO `patient` VALUES ('37', '29488572', '李世民', '1', '19', '工人', '1', '30', '428', '354645343453', '1', '13584685197', '北京', null, '青霉素');
INSERT INTO `patient` VALUES ('38', '85706632', '孙某某某', '1', '18', '学生', '1', '10', '428', '34435645234', '1', '15566279319', '山东省泰安市泰山区岱宗大街', null, '青霉素');
INSERT INTO `patient` VALUES ('39', '21257043', '辛某某', '1', '18', '学生', '1', '21', '428', '2354534234234', '1', '15566279319', '山东省泰安市泰山区岱宗大街', null, '青霉素');
INSERT INTO `patient` VALUES ('40', '31466448', '孙某某', '1', '18', '学生', '1', '20', '428', '1344645435243', '1', '15589329554', '山东省泰安市泰山区岱宗大街', null, '青霉素');
INSERT INTO `patient` VALUES ('41', '87403100', '刘某某', '1', '18', '学生', '1', '20', '428', '12334434266', '1', '18854303537', '山东省泰安市泰山区岱宗大街', null, '阿奇霉素');

-- ----------------------------
-- Table structure for patienttype
-- ----------------------------
DROP TABLE IF EXISTS `patienttype`;
CREATE TABLE `patienttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `typecode` varchar(32) DEFAULT NULL COMMENT '类别编号',
  `typename` varchar(32) DEFAULT NULL COMMENT '类别名称',
  `typediscount` int(11) DEFAULT NULL COMMENT '类别折扣',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='病人类别';

-- ----------------------------
-- Records of patienttype
-- ----------------------------
INSERT INTO `patienttype` VALUES ('1', '01', '普通病人', '100', '1', '');
INSERT INTO `patienttype` VALUES ('2', '02', '港澳台病人', '150', '1', null);
INSERT INTO `patienttype` VALUES ('3', '03', '外国病人', '200', '1', '');
INSERT INTO `patienttype` VALUES ('4', '456', '测试数据', '98', '2', '测试数据');
INSERT INTO `patienttype` VALUES ('5', '4', '5', '4', '2', '4');
INSERT INTO `patienttype` VALUES ('6', '004', '测试', '100', '1', '无');

-- ----------------------------
-- Table structure for prescription
-- ----------------------------
DROP TABLE IF EXISTS `prescription`;
CREATE TABLE `prescription` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `registerid` int(11) DEFAULT NULL COMMENT '挂号id',
  `prescriptioncode` varchar(32) DEFAULT NULL COMMENT '处方单号',
  `prescriptionname` varchar(32) DEFAULT NULL COMMENT '名称',
  `doctorid` int(11) DEFAULT NULL COMMENT '医生id',
  `natureid` int(11) DEFAULT NULL COMMENT '处方性质id',
  `prescriptiontypeid` int(11) DEFAULT NULL COMMENT '处方类型id',
  `classifyid` int(11) DEFAULT NULL COMMENT '处方分类id',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  `diagnosis` varchar(128) DEFAULT NULL COMMENT '处方诊断',
  `prescriptiontime` datetime DEFAULT NULL COMMENT '处方时间',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='处方';

-- ----------------------------
-- Records of prescription
-- ----------------------------
INSERT INTO `prescription` VALUES ('6', '37', 'CFD14544596', '流行性感冒', '6', '430', '434', '436', '感冒', '感冒', '2019-01-04 09:15:11', '1');
INSERT INTO `prescription` VALUES ('7', '38', 'CFD65212219', '流行性感冒', '6', '430', '434', '436', '感冒', '感冒', '2019-01-04 09:35:54', '2');
INSERT INTO `prescription` VALUES ('8', '40', 'CFD1309371', '流行性感冒', '6', '430', '434', '436', '感冒', '感冒', '2019-01-04 09:53:18', '1');
INSERT INTO `prescription` VALUES ('9', '41', 'CFD39392364', '发烧', '7', '430', '434', '435', '无', '发烧', '2019-01-04 11:03:25', '2');
INSERT INTO `prescription` VALUES ('10', '43', 'CFD53591005', '发烧', '7', '430', '434', '435', '无', '发烧', '2019-01-04 11:17:08', '1');
INSERT INTO `prescription` VALUES ('11', '45', 'CFD12974379', '头痛', '7', '430', '432', '435', '无', '吃药', '2019-01-04 15:14:16', '2');
INSERT INTO `prescription` VALUES ('12', '46', 'CFD33095798', '头痛', '7', '430', '432', '435', '', '吃药', '2019-01-04 15:46:29', '2');
INSERT INTO `prescription` VALUES ('13', '47', 'CFD65390899', '头痛', '7', '430', '432', '435', '', '吃药', '2019-01-04 15:51:25', '1');
INSERT INTO `prescription` VALUES ('14', '48', 'CFD37017583', '头痛', '7', '430', '432', '435', '', '吃药', '2019-01-04 15:56:07', '1');

-- ----------------------------
-- Table structure for prescriptiondetail
-- ----------------------------
DROP TABLE IF EXISTS `prescriptiondetail`;
CREATE TABLE `prescriptiondetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `prescriptionid` int(11) DEFAULT NULL COMMENT '处方id',
  `drugid` int(11) DEFAULT NULL COMMENT '药品id',
  `eachdosage` int(11) DEFAULT NULL COMMENT '每剂用量',
  `dosagequantity` int(11) DEFAULT NULL COMMENT '剂数',
  `medicineformid` int(11) DEFAULT NULL COMMENT '用药方式id',
  `medicinefrequencyid` int(11) DEFAULT NULL COMMENT '用药频率id',
  `medicineamount` int(11) DEFAULT NULL COMMENT '用药总量',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='处方明细';

-- ----------------------------
-- Records of prescriptiondetail
-- ----------------------------
INSERT INTO `prescriptiondetail` VALUES ('17', '6', '1', '3', '3', '448', '460', '6', '外用', '1');
INSERT INTO `prescriptiondetail` VALUES ('18', '6', '2', '3', '3', '447', '460', '6', '口服', '1');
INSERT INTO `prescriptiondetail` VALUES ('19', '6', '5', '3', '3', '447', '460', '6', '口服', '1');
INSERT INTO `prescriptiondetail` VALUES ('20', '7', '1', '3', '3', '448', '460', '6', '外用', '2');
INSERT INTO `prescriptiondetail` VALUES ('21', '7', '2', '3', '3', '447', '460', '6', '口服', '2');
INSERT INTO `prescriptiondetail` VALUES ('22', '7', '5', '3', '3', '447', '460', '6', '口服', '2');
INSERT INTO `prescriptiondetail` VALUES ('23', '8', '1', '3', '3', '448', '460', '6', '外用', '1');
INSERT INTO `prescriptiondetail` VALUES ('24', '8', '2', '3', '3', '447', '460', '6', '口服', '1');
INSERT INTO `prescriptiondetail` VALUES ('25', '8', '5', '3', '3', '447', '460', '6', '口服', '1');
INSERT INTO `prescriptiondetail` VALUES ('26', '9', '5', '3', '2', '447', '460', '6', '', '2');
INSERT INTO `prescriptiondetail` VALUES ('27', '10', '5', '3', '2', '447', '460', '6', '', '1');
INSERT INTO `prescriptiondetail` VALUES ('28', '11', '5', '1', '2', '447', '460', '2', '无', '2');
INSERT INTO `prescriptiondetail` VALUES ('29', '12', '2', '3', '2', '447', '460', '6', '无', '2');
INSERT INTO `prescriptiondetail` VALUES ('30', '13', '5', '2', '3', '447', '460', '6', '无', '1');
INSERT INTO `prescriptiondetail` VALUES ('31', '14', '4', '1', '3', '448', '460', '3', '无', '1');

-- ----------------------------
-- Table structure for prescriptiontemplate
-- ----------------------------
DROP TABLE IF EXISTS `prescriptiontemplate`;
CREATE TABLE `prescriptiontemplate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `templatename` varchar(32) DEFAULT NULL COMMENT '名称',
  `doctorid` int(11) DEFAULT NULL COMMENT '医生id',
  `natureid` int(11) DEFAULT NULL COMMENT '模板性质id',
  `prescriptiontypeid` int(11) DEFAULT NULL COMMENT '处方类型id',
  `classifyid` int(11) DEFAULT NULL COMMENT '模板分类id',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  `diagnosis` varchar(128) DEFAULT NULL COMMENT '处方诊断',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='处方模板';

-- ----------------------------
-- Records of prescriptiontemplate
-- ----------------------------
INSERT INTO `prescriptiontemplate` VALUES ('10', '流行性感冒', '6', '430', '434', '436', '感冒', '感冒', '2');
INSERT INTO `prescriptiontemplate` VALUES ('11', '1', '5', '430', '432', '435', '1', '1', '2');
INSERT INTO `prescriptiontemplate` VALUES ('12', '发烧', '7', '430', '434', '435', '无', '发烧', '2');
INSERT INTO `prescriptiontemplate` VALUES ('13', '头痛', '7', '430', '432', '435', '', '吃药', '1');

-- ----------------------------
-- Table structure for prescriptiontemplatedetail
-- ----------------------------
DROP TABLE IF EXISTS `prescriptiontemplatedetail`;
CREATE TABLE `prescriptiontemplatedetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `prescriptiontemplateid` int(11) DEFAULT NULL COMMENT '处方id',
  `drugid` int(11) DEFAULT NULL COMMENT '药品id',
  `eachdosage` int(11) DEFAULT NULL COMMENT '每剂用量',
  `dosagequantity` int(11) DEFAULT NULL COMMENT '剂数',
  `medicineformid` int(11) DEFAULT NULL COMMENT '用药方式id',
  `medicinefrequencyid` int(11) DEFAULT NULL COMMENT '用药频率id',
  `medicineamount` int(11) DEFAULT NULL COMMENT '用药总量',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='处方模板明细';

-- ----------------------------
-- Records of prescriptiontemplatedetail
-- ----------------------------
INSERT INTO `prescriptiontemplatedetail` VALUES ('18', '10', '1', '3', '3', '448', '460', '9', '', '2');
INSERT INTO `prescriptiontemplatedetail` VALUES ('19', '10', '2', '3', '3', '447', '460', '9', '', '2');
INSERT INTO `prescriptiontemplatedetail` VALUES ('20', '10', '5', '3', '3', '447', '460', '9', '', '2');
INSERT INTO `prescriptiontemplatedetail` VALUES ('21', '10', '1', '3', '3', '448', '460', '6', '外用', '2');
INSERT INTO `prescriptiontemplatedetail` VALUES ('22', '10', '2', '3', '3', '447', '460', '6', '口服', '2');
INSERT INTO `prescriptiontemplatedetail` VALUES ('23', '10', '5', '3', '3', '447', '460', '6', '口服', '2');
INSERT INTO `prescriptiontemplatedetail` VALUES ('24', '11', '2', '1', '1', '447', '459', '1', '1', '2');
INSERT INTO `prescriptiontemplatedetail` VALUES ('25', '11', '2', '1', '1', '447', '459', '1', '1', '2');
INSERT INTO `prescriptiontemplatedetail` VALUES ('26', '11', '2', '1', '1', '447', '459', '1', '1', '2');
INSERT INTO `prescriptiontemplatedetail` VALUES ('27', '10', '1', '3', '3', '448', '460', '6', '外用', '2');
INSERT INTO `prescriptiontemplatedetail` VALUES ('28', '10', '2', '3', '3', '447', '460', '6', '口服', '2');
INSERT INTO `prescriptiontemplatedetail` VALUES ('29', '10', '5', '3', '3', '447', '460', '6', '口服', '2');
INSERT INTO `prescriptiontemplatedetail` VALUES ('30', '12', '5', '3', '2', '447', '460', '6', '', '2');

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `patientid` int(11) DEFAULT NULL COMMENT '病人id',
  `registertypeid` int(11) DEFAULT NULL COMMENT '挂号类别id',
  `registercode` varchar(32) DEFAULT NULL COMMENT '挂号单号',
  `departmentid` int(11) DEFAULT NULL COMMENT '科室id',
  `doctorid` int(11) DEFAULT NULL COMMENT '医生id',
  `registersum` decimal(8,2) DEFAULT NULL COMMENT '挂号金额',
  `registertime` datetime DEFAULT NULL COMMENT '挂号时间',
  `registerstatus` int(11) DEFAULT NULL COMMENT '挂号状态',
  `registerpersonid` int(11) DEFAULT NULL COMMENT '挂号人员id',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='挂号';

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO `register` VALUES ('37', '29', null, 'GHD94159232', '4', '6', '10.00', '2019-01-04 09:12:38', '3', '5', '2', null);
INSERT INTO `register` VALUES ('38', '31', null, 'GHD13088537', '5', '7', null, '2019-01-04 09:33:07', '3', '5', '2', null);
INSERT INTO `register` VALUES ('39', '32', null, 'GHD37039937', '4', '6', '25.00', '2019-01-04 09:42:55', '1', '5', '2', null);
INSERT INTO `register` VALUES ('40', '33', null, 'GHD21379102', '4', '6', '10.00', '2019-01-04 09:52:02', '3', '5', '2', null);
INSERT INTO `register` VALUES ('41', '29', null, 'GHD95977741', '4', '6', '25.00', '2019-01-04 10:49:35', '3', '5', '2', null);
INSERT INTO `register` VALUES ('42', '35', null, 'GHD47126511', '4', '6', '7.00', '2019-01-04 11:07:40', '2', '5', '2', null);
INSERT INTO `register` VALUES ('43', '36', null, 'GHD79555432', '4', '6', '10.00', '2019-01-04 11:16:10', '3', '5', '2', null);
INSERT INTO `register` VALUES ('44', '37', null, 'GHD72523091', '5', '7', '25.00', '2019-01-04 11:23:37', '1', '5', '1', null);
INSERT INTO `register` VALUES ('45', '38', null, 'GHD34792937', '4', '6', '25.00', '2019-01-04 15:12:55', '3', '5', '1', null);
INSERT INTO `register` VALUES ('46', '39', null, 'GHD68272361', '5', '7', '100.00', '2019-01-04 15:44:41', '3', '5', '1', null);
INSERT INTO `register` VALUES ('47', '40', null, 'GHD63854569', '5', '7', '100.00', '2019-01-04 15:49:31', '3', '5', '2', null);
INSERT INTO `register` VALUES ('48', '41', null, 'GHD47771733', '5', '7', '25.00', '2019-01-04 15:54:06', '3', '5', '1', null);

-- ----------------------------
-- Table structure for registertype
-- ----------------------------
DROP TABLE IF EXISTS `registertype`;
CREATE TABLE `registertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `typecode` varchar(32) DEFAULT NULL COMMENT '编号',
  `typename` varchar(32) DEFAULT NULL COMMENT '类别名称',
  `typesum` decimal(8,2) DEFAULT NULL COMMENT '类别金额',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='挂号类别';

-- ----------------------------
-- Records of registertype
-- ----------------------------
INSERT INTO `registertype` VALUES ('1', '001', '正常就诊', '1.00', '', '1');
INSERT INTO `registertype` VALUES ('2', '002', '副高', '10.00', null, '1');
INSERT INTO `registertype` VALUES ('3', '003', '正高', '25.00', null, '1');
INSERT INTO `registertype` VALUES ('4', '004', '知名', '100.00', null, '1');
INSERT INTO `registertype` VALUES ('6', '456', '测试数据', '5.00', '测试数据', '2');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `resourcesuperiorid` int(11) DEFAULT NULL COMMENT '所属资源id',
  `resourcename` varchar(32) DEFAULT NULL COMMENT '资源名称',
  `resourceurl` varchar(256) DEFAULT NULL COMMENT '资源链接',
  `resourceicon` varchar(64) DEFAULT NULL COMMENT '资源图标',
  `rank` int(11) DEFAULT NULL COMMENT '排序值',
  `isvalid` int(11) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '0', '挂号登记', '/patientController/list.do', 'icon-desktop', null, '1');
INSERT INTO `resource` VALUES ('2', '0', '医生工作站', '', 'icon-edit', null, '1');
INSERT INTO `resource` VALUES ('3', '0', '收费管理', '/chargeController/list.do', 'icon-dollar', null, '1');
INSERT INTO `resource` VALUES ('5', '0', '基础信息', '', 'icon-file-alt', null, '1');
INSERT INTO `resource` VALUES ('6', '0', '人事管理', '', 'icon-user', null, '1');
INSERT INTO `resource` VALUES ('7', '3', '收费', '/chargeController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('8', '1', '查询', '/registerController/registerlist.do', null, null, '1');
INSERT INTO `resource` VALUES ('9', '8', '编辑', '', null, null, '2');
INSERT INTO `resource` VALUES ('10', '1', '保存病人', '/patientController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('13', '1', '挂号', '/registerController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('15', '2', '病历模板', '/medicalrecordtemplateController/list.do', null, null, '1');
INSERT INTO `resource` VALUES ('16', '3', '查询历史记录', '/chargeController/tohistory.do', null, null, '1');
INSERT INTO `resource` VALUES ('17', '3', '病历', 'medicalrecordController/list.do', null, null, '2');
INSERT INTO `resource` VALUES ('18', '3', '处方', 'prescriptionController/list.do', null, null, '2');
INSERT INTO `resource` VALUES ('19', '1', '查询历史记录', '/registerController/tohistory.do', null, null, '1');
INSERT INTO `resource` VALUES ('20', '4', '药品档案', '/drugController/list.do', null, null, '1');
INSERT INTO `resource` VALUES ('21', '2', '处方模板', '/prescriptiontemplateController/list.do', null, null, '1');
INSERT INTO `resource` VALUES ('22', '2', '病历', '/medicalrecordController/list.do', null, null, '1');
INSERT INTO `resource` VALUES ('23', '2', '处方', '/prescriptionController/list.do', null, null, '1');
INSERT INTO `resource` VALUES ('24', '19', '查询', '/registerController/historydatalist.do', null, null, '1');
INSERT INTO `resource` VALUES ('25', '19', '作废单据', '/registerController/delete.do', null, null, '1');
INSERT INTO `resource` VALUES ('26', '15', '查询', '/medicalrecordtemplateController/datalist.do', null, null, '1');
INSERT INTO `resource` VALUES ('27', '15', '新增', '/medicalrecordtemplateController/toadd.do,/medicalrecordtemplateController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('28', '15', '修改', '/medicalrecordtemplateController/toedit.do,/medicalrecordtemplateController/edit.do', null, null, '1');
INSERT INTO `resource` VALUES ('29', '15', '删除', '/medicalrecordtemplateController/delete.do', null, null, '1');
INSERT INTO `resource` VALUES ('30', '21', '查询', '/prescriptiontemplateController/datalist.do', null, null, '1');
INSERT INTO `resource` VALUES ('31', '21', '新增', '/prescriptiontemplateController/toadd.do,/prescriptiontemplateController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('32', '21', '修改', '/prescriptiontemplateController/toedit.do,/prescriptiontemplateController/edit.do', null, null, '1');
INSERT INTO `resource` VALUES ('33', '21', '删除', '/prescriptiontemplateController/delete.do', null, null, '1');
INSERT INTO `resource` VALUES ('34', '22', '查询', '/medicalrecordController/datalist.do', null, null, '1');
INSERT INTO `resource` VALUES ('35', '22', '病历录入', '/medicalrecordController/toadd.do,/medicalrecordController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('36', '22', '修改', '/medicalrecordController/toedit.do,/medicalrecordController/edit.do', null, null, '1');
INSERT INTO `resource` VALUES ('37', '22', '删除', '/medicalrecordController/delete.do', null, null, '1');
INSERT INTO `resource` VALUES ('38', '23', '查询', '/prescriptionController/datalist.do', null, null, '1');
INSERT INTO `resource` VALUES ('39', '23', '开处方', '/prescriptionController/toadd.do,/prescriptionController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('40', '23', '修改', '/prescriptionController/toedit.do,/prescriptionController/edit.do', null, null, '1');
INSERT INTO `resource` VALUES ('41', '23', '删除', '/prescriptionController/delete.do', null, null, '1');
INSERT INTO `resource` VALUES ('42', '16', '查询', '/chargeController/historydatalist.do', null, null, '1');
INSERT INTO `resource` VALUES ('45', '5', '挂号类别', '/registertypeController/list.do', null, null, '1');
INSERT INTO `resource` VALUES ('46', '5', '收费类别', '/chargetypeController/list.do', null, null, '1');
INSERT INTO `resource` VALUES ('47', '5', '病人类别', '/patienttypeController/list.do', null, null, '1');
INSERT INTO `resource` VALUES ('48', '6', '科室部门', '/departmentController/list.do', null, null, '1');
INSERT INTO `resource` VALUES ('50', '6', '员工档案', '/employeeController/list.do', null, null, '1');
INSERT INTO `resource` VALUES ('57', '52', '查询', '/resourceController/findresource.do', null, null, '1');
INSERT INTO `resource` VALUES ('58', '52', '新增', '/resourceController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('59', '52', '修改', '/resourceController/edit.do', null, null, '1');
INSERT INTO `resource` VALUES ('60', '52', '删除', '/resourceController/delete.do', null, null, '1');
INSERT INTO `resource` VALUES ('61', '52', '删除勾选', '/resourceController/deletemore.do', null, null, '1');
INSERT INTO `resource` VALUES ('71', '45', '查询', '/registertypeController/datalist.do', null, null, '1');
INSERT INTO `resource` VALUES ('72', '45', '新增', '/registertypeController/toadd.do,/registertypeController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('73', '45', '修改', '/registertypeController/toedit.do,/registertypeController/edit.do', null, null, '1');
INSERT INTO `resource` VALUES ('74', '45', '删除', '/registertypeController/delete.do', null, null, '1');
INSERT INTO `resource` VALUES ('75', '46', '查询', '/chargetypeController/datalist.do', null, null, '1');
INSERT INTO `resource` VALUES ('76', '46', '新增', '/chargetypeController/toadd.do,/chargetypeController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('77', '46', '修改', '/chargetypeController/toedit.do,/chargetypeController/edit.do', null, null, '1');
INSERT INTO `resource` VALUES ('78', '46', '删除', '/chargetypeController/delete.do', null, null, '1');
INSERT INTO `resource` VALUES ('79', '47', '查询', '/patienttypeController/datalist.do', null, null, '1');
INSERT INTO `resource` VALUES ('80', '47', '新增', '/patienttypeController/toadd.do,/patienttypeController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('81', '47', '修改', '/patienttypeController/toedit.do,/patienttypeController/edit.do', null, null, '1');
INSERT INTO `resource` VALUES ('82', '47', '删除', '/patienttypeController/delete.do', null, null, '1');
INSERT INTO `resource` VALUES ('83', '48', '查询', '/departmentController/datalist.do', null, null, '1');
INSERT INTO `resource` VALUES ('84', '48', '新增', '/departmentController/toadd.do,/departmentController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('85', '48', '修改', '/departmentController/toedit.do,/departmentController/edit.do', null, null, '1');
INSERT INTO `resource` VALUES ('86', '48', '删除', '/departmentController/delete.do', null, null, '1');
INSERT INTO `resource` VALUES ('91', '50', '查询', '/employeeController/datalist.do', null, null, '1');
INSERT INTO `resource` VALUES ('92', '50', '详情', '', null, null, '2');
INSERT INTO `resource` VALUES ('93', '50', '新增', '/employeeController/toadd.do,/employeeController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('94', '50', '修改', '/employeeController/toedit.do,/employeeController/edit.do', null, null, '1');
INSERT INTO `resource` VALUES ('95', '50', '重置密码', '/employeeController/resetpsw.do', null, null, '1');
INSERT INTO `resource` VALUES ('96', '51', '编辑', '/useunitController/edit.do', null, null, '1');
INSERT INTO `resource` VALUES ('97', '53', '查询', '/roleController/datalist.do', null, null, '1');
INSERT INTO `resource` VALUES ('98', '53', '新增', '/roleController/toadd.do,/roleController/add.do', null, null, '1');
INSERT INTO `resource` VALUES ('99', '53', '修改', '/roleController/toedit.do,/roleController/edit.do', null, null, '1');
INSERT INTO `resource` VALUES ('100', '53', '删除', '/roleController/delete.do', null, null, '1');
INSERT INTO `resource` VALUES ('101', '55', '查询角色', '/roleController/findrolepositon.do', null, null, '1');
INSERT INTO `resource` VALUES ('102', '55', '查询职务', '/roleController/findposition.do', null, null, '1');
INSERT INTO `resource` VALUES ('103', '55', '保存', '/roleController/addChild.do', null, null, '1');
INSERT INTO `resource` VALUES ('104', '56', '查询角色', '/roleController/findrole.do', null, null, '1');
INSERT INTO `resource` VALUES ('105', '56', '查询资源', '/resourceController/findresource.do', null, null, '1');
INSERT INTO `resource` VALUES ('106', '56', '保存', '/roleController/addChild.do', null, null, '1');
INSERT INTO `resource` VALUES ('107', '50', '删除', '/employeeController/delete.do', null, null, '1');

-- ----------------------------
-- Table structure for viptype
-- ----------------------------
DROP TABLE IF EXISTS `viptype`;
CREATE TABLE `viptype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `typecode` varchar(32) DEFAULT NULL COMMENT '类别编号',
  `typename` varchar(32) DEFAULT NULL COMMENT '类别名称',
  `typediscount` int(11) DEFAULT NULL COMMENT '类别折扣',
  `note` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of viptype
-- ----------------------------
INSERT INTO `viptype` VALUES ('1', '01', '普通卡', '100', null);
INSERT INTO `viptype` VALUES ('2', '02', '职工卡', '95', null);
