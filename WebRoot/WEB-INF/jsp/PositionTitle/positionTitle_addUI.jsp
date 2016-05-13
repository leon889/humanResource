<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
     <script src = "<%=basePath %>js/jquery-1.11.2.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/common.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/main.css"/>
    <script type="text/javascript" src="<%=basePath %>js/libs/modernizr.min.js"></script>
    <script type="text/javascript">
    function check()
    {
    	var name = $("#name").val() ; 

    	if(name == "")
    		{
    		alert("名称不能为空") ; 
    		return false ; 
    		}
    }
    
    </script>
</head>
<body>

<jsp:include page="../Home/home_top.jsp"></jsp:include>
<jsp:include page="../Home/home_left.jsp"></jsp:include>

<div class="container clearfix">
    
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="/jscss/admin/design/">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="/jscss/admin/design/">作品管理</a><span class="crumb-step">&gt;</span><span>新增作品</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="positionTitleAction_add.action" method="post" id="myform" name="myform" >
                    <table class="insert-tab" width="100%">
                        <tbody>
                            <tr>
                                <th><i class="require-red">*</i>职称</th>
                                <td>
                                    <input id = "name" class="common-text required" id="title" name="positionTitle.name" size="50" value="" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>职位</th>
                                <td>
                                	<select class="common-text required" name = "positionID
                                	" style="width:440px;height:30px">
                                	<s:iterator value="#positionList">	
                                	<option value="${id}" >${name}</option>
                                	</s:iterator>
                                	
                                	</select>
                                   <!-- <input class="common-text required" id="title" name="positionTitle.password" size="50" value="" type="password">
                               		 --> 
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red"></i>描述</th>
                                <td>
                                <input type="text" name = "positionTitle.description" size = "50"/>
                                </td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" onclick = "return check()" value="提交" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>