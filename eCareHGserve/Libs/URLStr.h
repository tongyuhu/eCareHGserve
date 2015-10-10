//
//  URLStr.h
//  eCareHG
//
//  Created by tongyuhu on 15/10/9.
//  Copyright (c) 2015年 JinYanFeng. All rights reserved.
//

#ifndef eCareHG_URLStr_h
#define eCareHG_URLStr_h

#define HOST_REQUEST_ADDRESS @"http://121.40.126.172:8080/service/"

 
#pragma mark - 个人中心 用户

// 1.validateCurrentPhone –验证当前手机是否已经注册接口
#define UU_user_validateRepeat @"user/validateRepeat"

// 2.sendSMS –获取短信验证码接口
#define UU_user_getSeccode @"user/getSeccode"

// 3.updatePassword –修改密码接口
#define UU_user_updatePwdViaSMS @"user/updatePwdViaSMS"

// 4.regist –注册接口
#define UU_user_regist @"user/regist"

// 5.login –登录接口
#define UU_user_login @"user/login"

// 6.queryUserInfo –查询用户基本信息接口
#define UU_user @"user"

// 7.addUserArchives –添加家庭护理档案接口
#define UU_userArchives_add @"userArchives/add"

// 8.updateUserArchives –修改家庭护理档案接口
#define UU_userArchives_update @"userArchives/update"

// 9.queryUserArchives –查询家庭护理档列表案接口
#define UU_userArchives_list @"userArchives/list"

// 10.removeUserArchives –删除家庭护理档案接口
#define UU_userArchives_remove @"userArchives/remove"

// 11.editUserInfo –编辑用户基本信息接口
#define UU_user_edit @"user/edit"


#pragma mark - 个人中心 服务端

//1.validateCurrentPhone –验证当前手机是否已经注册接口
#define US_paramedic_validateRepeat @"paramedic/validateRepeat"
//
//2.sendSMS –获取短信验证码兼验证重复注册接口
#define US_paramedic_sendMsg @"paramedic/sendMsg"
//
//3.updatePassword –修改密码接口
#define US_paramedic_updatePassword @"paramedic/updatePassword"
//
//4.regist –注册接口
#define US_paramedic_regist @"paramedic/regist"
//
//5.login –登录接口
#define US_paramedic_login @"paramedic/login"
//
//6.queryParamedicInfo –查询服务人员基本信息接口
#define US_service_paramedic @"service/paramedic"
//
//7.validateVerifyCode –验证码验证接口
#define US_paramedic_validateVerifyCode @"paramedic/validateVerifyCode"
//
//8.validatePassword –登录密码验证接口
#define US_paramedic_validatePassword @"paramedic/validatePassword"
//
//9.bindingDebitCard –银行卡绑定接口
#define US_paramedic_bindingFinanceAccount @"paramedic/bindingFinanceAccount"
//
//10.bindingPhone –手机重新绑定接口
#define US_paramedic_bindingPhone @"paramedic/bindingPhone"
//
//11.resetPassword –个人中心修改密码接口
#define US_paramedic_resetPassword @"paramedic/resetPassword"
//
//12.edit –编辑接口
#define US_paramedic_edit @"paramedic/edit"
//
//13.addItem –添加服务项目接口
#define US_serviceItem_add @"serviceItem/add"
//
//14.updateQuote –修改服务项目报价及区域接口
#define US_serviceItem_updateQuote @"serviceItem/updateQuote"
//
//15.getServiceItemlist –查询服务项目列表接口
#define US_serviceItem_list @"serviceItem/list"
//
//16.getServiceItem –查询服务项目接口
#define US_serviceItem @"serviceItem"
//
//17.getParamedicList –服务人员筛选接口
#define US_paramedic_search @"paramedic/search"
//
//18.getParamedicDetail –服务人员详情接口
#define US_paramedic_getDetail @"paramedic/getDetail"
//
//19.getUserIntegralList –积分详情接口
#define US_userIntegral_list @"userIntegral/list"

#pragma mark - 个人中心 公共

//1.upload –图片上传接口
#define UC_common_upload @"common/upload";


#pragma mark - 订单模块 用户
//1.createFastOrder –创建快速订单接口
#define UU_order_createFastOrder @"order/createFastOrder"
//
//2.createReserveOrder –创建预约订单接口
#define UU_order_createReserveOrder @"order/createReserveOrder"
//
//3.queryOrderStaff –查询接单人员接口
#define UU_order_queryOrderStaff @"order/queryOrderStaff"
//
//4.queryUserOrder –查询用户订单接口
#define UU_order_queryUserOrder @"order/queryUserOrder"
//
//5.queryOrderTrack –查询订单跟踪接口
#define UU_order_queryOrderTrack @"order/queryOrderTrack"
//
//6.userConfirmOrder –用户确认订单接口
#define UU_order_userConfirmOrder @"order/userConfirmOrder"
//
//7.userConfirmFinish –用户确认完成订单接口
#define UU_order_userConfirmFinish @"order/userConfirmFinish"



#pragma mark - 订单模块 服务


//1.paramedicStartOrder –服务人员开始服务接口
#define US_order_paramedicStartOrder @"order/paramedicStartOrder"
//
//2.queryReserveOrder –预约订单查询接口
#define US_order_queryReserveOrder @"order/queryReserveOrder"
//
//3.paramedicConfirmOrder –服务人员确定接单接口
#define US_order_paramedicConfirmOrder @"order/paramedicConfirmOrder"

#pragma mark - 支付模块
//1.consume –银联支付接口
#define U_transaction_topay @"transaction/topay"
//
//2.refundConsume –银联退款接口
#define U_transaction_dorefund @"transaction/dorefund"
//
//2.alipay_pay –支付宝支付异步通知地址
#define U_alipay_pay_topay @"alipay_pay/topay"


#pragma mark - 聊天室
//1.create –创建聊天室接口
#define U_chatroom_add @"chatroom/add"
//
//2.delete –删除聊天室接口
#define U_chatroom_remove @"chatroom/remove"
//
//3.getToken –获取聊天室Token接口
#define U_chatroom_getToken @"chatroom/getToken"
//
//4.apply –申请加入聊天室接口
#define U_chatroom_apply @"chatroom/apply"
//
//5.approve –聊天室申请审批接口
#define U_chatroom_approve @"chatroom/approve"
//
//6.search –聊天室搜索接口
#define U_chatroom_search @"chatroom/search"
//
//7.delay –聊天室延时接口
#define U_chatroom_delay @"chatroom/delay"
 


#endif
