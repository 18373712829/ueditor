<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.baidu.ueditor.ActionEnter"
    pageEncoding="UTF-8"%>
<%@ page import="com.thinkgem.jeesite.common.config.Global" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%

    request.setCharacterEncoding( "utf-8" );
	response.setHeader("Content-Type" , "text/html");

	String rootPath = application.getRealPath( "/" );



	String action = request.getParameter("action");
	//Global.getConfig("imgPath")为配置的绝对路径，比如我公司项目所有图片资源都存在/pic
	String result = new ActionEnter( request, Global.getConfig("imgPath")+"/", rootPath ).exec();
      //在下面判断如果是列出文件或图片的，替换物理路径的“/”
	if( action!=null && (action.equals("listfile") || action.equals("listimage") ) ){
		rootPath = rootPath.replace("\\", "/");
		result = result.replaceAll(Global.getConfig("imgPath"), "");
	}
	out.write( result );
%>
