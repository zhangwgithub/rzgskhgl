<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--左侧边栏导航开始-->
		<div id="dcLeft">
			<div id="menu">
				<%-- <ul class="top">
					<li  id="indexli"><a href="${basePath}admin/index"><i class="home"></i><em>管理首页</em></a></li>
				</ul> --%>
				<shiro:authenticated>
				<shiro:hasAnyRoles  name="ADMIN,SUPERADMIN">
					<ul>
							<li id="resli""><a href="${basePath}admin/resource/list"><i
									class="nav"></i><em>资源管理</em></a></li>
							<li id="roleli"><a href="${basePath}admin/role/list"><i
									class="show"></i><em>角色管理</em></a></li>
							<li id="userli"><a href="${basePath}admin/user/list"><i
									class="page"></i><em>用户管理</em></a></li>
					</ul>
				</shiro:hasAnyRoles >
				<ul>
						<li id="customerli"><a href="${basePath}admin/customer/list"><i
											class="page"></i><em>客户管理</em></a></li>
						<li id="productli"><a href="${basePath}admin/product/list"><i
								class="productCat"></i><em>产品管理</em></a></li>
								
				</ul>
				<shiro:hasRole name="SUPERADMIN">
				<ul class="bot">
					<li id="datali"><a href="${basePath}admin/backup/index"><i class="backup"></i><em>数据备份</em></a></li>
					<li id="managerli"><a href="${basePath}admin/manager/list"><i class="manager"></i><em>网站管理员</em></a></li>
					<li id="opli"><a href="${basePath}admin/record/list"><i class="managerLog"></i><em>操作记录</em></a></li>
				</ul>
				</shiro:hasRole>
				</shiro:authenticated>
			</div>
		</div>
		<!--左侧边栏导航结束-->