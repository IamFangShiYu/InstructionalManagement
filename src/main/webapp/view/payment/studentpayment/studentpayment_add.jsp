<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>

<%@ include file="/view/public/common.jspf" %>

</head>
<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">财务管理</a></li>
        <li>学员缴费</li>
        <li>添加账单</li>
    </ul>
</div>




<form action="${pageContext.request.contextPath}/payment/studentpayment/add.action" class="form-horizontal">
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="保存"/>
            <input  type="reset" class="btn  btn-danger" value="取消"/>
            <a href="${pageContext.request.contextPath }/payment/studentpayment/list.action" class="btn btn-success">返回上一级</a>
        </div>
    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<input type="text" name="paymentId" readonly="readonly" class="form-control input-sm" placeholder="请输入编号"/>
                </div>
            </div>       
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">学生编号</label>
                <div class="col-sm-9">
                	<input type="text" name="studentId" class="form-control input-sm" placeholder="请输入学生编号"/>
                </div>
            </div>
        </div>

    </div>
    <!-- 开始2 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">经办人编号</label>
                <div class="col-sm-5">
                	<input type="text" name="staffId" class="form-control input-sm" placeholder="请输入经办人编号"/>
                </div>
            </div>       
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">缴费情况</label>
                <div class="col-sm-5">
                	<input type="text" name="paymentSitutation" class="form-control input-sm" placeholder="缴费情况"/>
                </div>
            </div>     
        </div>
    </div>
    <!-- 结束2 -->
    <!-- 开始3 -->  
    <div class="row">     
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">缴费方式</label>
                <div class="col-sm-4">
                		<select class="form-control input-sm"  name="paymentMenthod">
                        	<option value="1">现金</option>
                        	<option value="2">网银</option>
                        	<option value="3">支付宝</option>
                        </select>
                </div>
            </div>
        </div>        
        <div class="col-sm-5">
            
        	<div class="form-group">
            	<label class="col-sm-3 control-label">缴费日期</label>
                <div class="col-sm-9">
                	<input type="text" name="paymentTime" onclick="WdatePicker()" readonly="readonly" class="form-control input-sm" placeholder="请输入缴费日期"/>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束3 -->   
    

    <!-- 开始4 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">应缴金额</label>
                <div class="col-sm-9">
                <input type="text" name="paymentShouldAmount" class="form-control input-sm" placeholder="请输入应缴金额"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">优惠金额</label>
                <div class="col-sm-9">
                <input type="text" name="paymentDiscountAmount" class="form-control input-sm" placeholder="请输入优惠金额"/>
                </div>
            </div>
        </div>
    </div>
    <!-- 结束4 -->     
    <!-- 开始4 -->
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">实缴金额</label>
                <div class="col-sm-9">
                	<input type="text" name="paymentRealAmount" class="form-control input-sm" placeholder="请输入实缴金额"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">欠款</label>
                <div class="col-sm-9">
                <input type="text" name="paymentDebtAmount" class="form-control input-sm" placeholder="请输入欠款"/>
                </div>
            </div>
        </div>
    </div>
    
     <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">备注</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">备注</label>
                <div class="col-sm-9">
                	<textarea class="form-control" name="paymentRemark"></textarea>
                </div>
            </div>
        
        </div>

    </div>
    
    
    
    
    
    
    
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="保存"/>
            <input  type="reset" class="btn  btn-danger" value="取消"/>
        </div>
    </div>
</form>

</body>
</html>
