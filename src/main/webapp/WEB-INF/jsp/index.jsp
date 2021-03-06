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
			<div id="urHere">管理中心</div>
			<div id="index" class="mainBox"
				style="padding-top: 18px; height: auto !important; height: 550px; min-height: 550px;">
				<div id="douApi"></div>
				<div class="indexBox">
					<div class="boxTitle">单页面快速管理</div>
					<ul class="ipage">

						<a href="page.php?rec=edit&id=1">公司简介</a>

						<a href="page.php?rec=edit&id=2" class="child1">企业荣誉</a>

						<a href="page.php?rec=edit&id=3" class="child1">发展历程</a>

						<a href="page.php?rec=edit&id=4" class="child1">联系我们</a>

						<a href="page.php?rec=edit&id=5">人才招聘</a>

						<a href="page.php?rec=edit&id=6">营销网络</a>
						<div class="clear"></div>
					</ul>
				</div>
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="indexBoxTwo">
					<tr>
						<td width="65%" valign="top" class="pr">
							<div class="indexBox">
								<div class="boxTitle">网站基本信息</div>
								<ul>
									<table width="100%" border="0" cellspacing="0" cellpadding="7"
										class="tableBasic">
										<tr>
											<td width="120">单页面数：</td>
											<td><strong>6</strong></td>
											<td width="100">文章总数：</td>
											<td><strong>10</strong></td>
										</tr>
										<tr>
											<td>商品总数：</td>
											<td><strong>15</strong></td>
											<td>系统语言：</td>
											<td><strong>zh_cn</strong></td>
										</tr>
										<tr>
											<td>URL 重写：</td>
											<td><strong>关闭<a href="system.php"
													class="cueRed ml">（点击开启）</a>
											</strong></td>
											<td>编码：</td>
											<td><strong>UTF-8</strong></td>
										</tr>
										<tr>
											<td>站点地图：</td>
											<td><strong>开启</strong></td>
											<td>站点模板：</td>
											<td><strong>default</strong></td>
										</tr>
										<tr>
											<td>DouPHP版本：</td>
											<td><strong>v1.3 Release 20160125</strong></td>
											<td>安装日期：</td>
											<td><strong>2016-02-25</strong></td>
										</tr>
									</table>
								</ul>
							</div>
						</td>
						<td valign="top" class="pl">
							<div class="indexBox">
								<div class="boxTitle">管理员 登录记录</div>
								<ul>
									<table width="100%" border="0" cellspacing="0" cellpadding="7"
										class="tableBasic">
										<tr>
											<th width="45%">IP地址</th>
											<th width="55%">操作时间</th>
										</tr>
										<tr>
											<td align="center">127.0.0.1</td>
											<td align="center">2016-02-25 23:29:08</td>
										</tr>
										<tr>
											<td align="center">127.0.0.1</td>
											<td align="center">2016-02-25 13:48:48</td>
										</tr>
										<tr>
											<td align="center">127.0.0.1</td>
											<td align="center">2013-10-16 09:43:01</td>
										</tr>
										<tr>
											<td align="center">127.0.0.1</td>
											<td align="center">2013-10-16 09:42:58</td>
										</tr>
									</table>
								</ul>
							</div>
						</td>
					</tr>
				</table>
				<div class="indexBox">
					<div class="boxTitle">服务器信息</div>
					<ul>
						<table width="100%" border="0" cellspacing="0" cellpadding="7"
							class="tableBasic">
							<tr>
								<td width="120" valign="top">版本：</td>
								<td valign="top">5.3.29</td>
								<td width="100" valign="top">MySQL 版本：</td>
								<td valign="top">5.5.40</td>
								<td width="100" valign="top">服务器操作系统：</td>
								<td valign="top">WINNT(127.0.0.1)</td>
							</tr>
							<tr>
								<td valign="top">文件上传限制：</td>
								<td valign="top">2M</td>
								<td valign="top">GD 库支持：</td>
								<td valign="top">是</td>
								<td valign="top">Web 服务器：</td>
								<td valign="top">Apache/2.4.10 (Win32) OpenSSL/0.9.8zb
									mod_fcgid/2.3.9</td>
							</tr>
						</table>
					</ul>
				</div>
				<div class="indexBox">
					<div class="boxTitle">系统开发</div>
					<ul>
						<table width="100%" border="0" cellspacing="0" cellpadding="7"
							class="tableBasic">
							<tr>
								<td width="120">官网：</td>
								<td><a href="#" target="_blank">http://www.yznu.cn</a></td>
							</tr>
							<tr>
								<td>开发者社区：</td>
								<td><a href="#" target="_blank">http://www.yznu.cn </a><em>（安装使用
										模板交流 BUG反馈 意见建议）</em></td>
							</tr>
							<tr>
								<td>贡献者：</td>
								<td>ysy</td>
							</tr>
							<tr>
								<td>系统使用协议：</td>
								<td><a href="#" target="_blank">http://www.yznu.cn</a><em></em></td>
							</tr>
						</table>
					</ul>
				</div>

			</div>
		</div>
		<!--主体内容部分结束-->
		<div class="clear"></div>
		<!--底部开始-->
			<%@ include file="include/footer.jsp"%>
		<!--底部结束-->
		<div class="clear"></div>

	</div>
	<!--end-->

</body>
<script type="text/javascript">
$("#indexli").addClass("cur");
</script>
</html>
