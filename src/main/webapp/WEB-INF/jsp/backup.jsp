<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<meta name="Copyright" content="Douco Design." />

</head>
<body>
	<!--
      作者：z.y.q.d
      时间：2016-10-21
      描述：后台管理
    -->
	<!--start-->
	<div id="dcWrap">
		<!--头部导航开始-->
		<%@ include file="include/header.jsp"%>
		<!--头部导航结束-->

		<!--左侧边栏导航开始-->
		<%@ include file="include/leftMenu.jsp"%>
		<!--左侧边栏导航结束-->


<!--主体内容部分开始-->
 <div id="dcMain">
   <!-- 当前位置 -->
  <div id="urHere">管理中心<b>></b><strong>数据备份</strong> </div>   
  <div class="mainBox" style="height:auto!important;height:550px;min-height:550px;">
    <h3><!-- <a href="backup.html?rec=restore" class="actionBtn">恢复备份</a> -->数据备份</h3>
        <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
     <form name="myform" method="post" action="backup.php?rec=backup">
      <tr>
       <th align="center">
        <input name='chkall' type='checkbox' id='chkall' onclick='selectcheckbox(this.form)' value='check' checked>
       </th>
       <th align="left">数据表名</th>
       <th align="center">类型</th>
       <th align="center">记录数</th>
       <th align="center">数据</th>
       <th align="center">索引</th>
       <th align="center">碎片</th>
      </tr>
            <tr>
       <td align="center"><input type=checkbox name=tables[] value=dou_admin checked></td>
       <td align="left">user</td>
       <td align="center">MyISAM</td>
       <td align="center">${user }</td>
       <td align="center">84</td>
       <td align="center">2048</td>
       <td align="center">0</td>
      </tr>
            <tr>
       <td align="center"><input type=checkbox name=tables[] value=dou_admin_log checked></td>
       <td align="left">user_role</td>
       <td align="center">MyISAM</td>
       <td align="center">${userRole }</td>
       <td align="center">660</td>
       <td align="center">4096</td>
       <td align="center">0</td>
      </tr>
        <tr>
       <td align="center"><input type=checkbox name=tables[] value=dou_admin_log checked></td>
       <td align="left">role</td>
       <td align="center">MyISAM</td>
       <td align="center">${role }</td>
       <td align="center">660</td>
       <td align="center">4096</td>
       <td align="center">0</td>
      </tr>
            <tr>
       <td align="center"><input type=checkbox name=tables[] value=dou_article checked></td>
       <td align="left">role_resource</td>
       <td align="center">MyISAM</td>
       <td align="center">${roleResource }</td>
       <td align="center">45KB</td>
       <td align="center">2048</td>
       <td align="center">0</td>
      </tr>
            <tr>
       <td align="center"><input type=checkbox name=tables[] value=dou_article_category checked></td>
       <td align="left">resource</td>
       <td align="center">MyISAM</td>
       <td align="center">${resource }</td>
       <td align="center">140</td>
       <td align="center">2048</td>
       <td align="center">0</td>
      </tr>
            <tr>
       <td align="center"><input type=checkbox name=tables[] value=dou_config checked></td>
       <td align="left">product</td>
       <td align="center">MyISAM</td>
       <td align="center">${product }</td>
       <td align="center">2284</td>
       <td align="center">1024</td>
       <td align="center">0</td>
      </tr>
          <tr>
       <td align="center"><input type=checkbox name=tables[] value=dou_config checked></td>
       <td align="left">customer</td>
       <td align="center">MyISAM</td>
       <td align="center">${customer }</td>
       <td align="center">2284</td>
       <td align="center">1024</td>
       <td align="center">0</td>
      </tr>
            <tr>
       <td align="center"><input type=checkbox name=tables[] value=dou_nav checked></td>
       <td align="left">product_order</td>
       <td align="center">MyISAM</td>
       <td align="center">${order }</td>
       <td align="center">1284</td>
       <td align="center">2048</td>
       <td align="center">0</td>
      </tr>
            <tr>
       <td align="center"><input type=checkbox name=tables[] value=dou_page checked></td>
       <td align="left">send_sms</td>
       <td align="center">MyISAM</td>
       <td align="center">${sendSms }</td>
       <td align="center">2148</td>
       <td align="center">2048</td>
       <td align="center">0</td>
      </tr>
           
            <tr>
       <td align="center"><input type=checkbox name=tables[] value=dou_page checked></td>
       <td align="left">record</td>
       <td align="center">MyISAM</td>
       <td align="center">${record }</td>
       <td align="center">2148</td>
       <td align="center">2048</td>
       <td align="center">0</td>
      </tr>
           
      <tr>
       <td height="26" colspan="7">
        <input type="hidden" name="token" value="82ace968" />
        <input type="hidden" name="totalsize" value="118">
        <input type="button" name="submit" class="btn" value="确定备份"  onClick="backUp()">
       </td>
      </tr>
     </form>
    </table>
           </div>
 </div>
<!--主体内容部分结束-->

<div class="clear"></div>
<!--底部开始-->
<div id="dcFooter">
 <div id="footer">
  <div class="line"></div>
  <ul>
   版权所有 © 2017 毕业设计，并保留所有权利。
  </ul>
 </div>
</div>
<!--底部结束-->
<div class="clear"></div> 

</div>
<!--end-->
</body>
<script type="text/javascript">
function backUp(){
	$.get("all", function(data){
		alert("数据已备份到：" + data)
	});
}


</script>
</html>
