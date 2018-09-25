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
	//Global.getConfig("imgPath")为配置的绝对路径
	String result = new ActionEnter( request, Global.getConfig("imgPath")+"/", rootPath ).exec();
	out.write( result );
%>
