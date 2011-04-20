<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title><s:text name="poHistTitle"/></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <!-- script type="text/javascript" src="./js/updateParentWindow.js"></script-->
  <body>
 	<s:form>
 		<s:text name="viList"/>
	    <div>
	    	<table border="1">
	    		<tr>
	    			<td colspan="5" align="center"><s:text name="poPlanInformation"/></td>	    			
	    		</tr>
	    		<tr>
				    <td><s:text name="poNo"/></td>
				    <td><s:text name="articleNo"/></td>
				    <td><s:text name="as"/></td>
				    <td><s:text name="planQty"/></td>
				    <td><s:text name="releaseDate"/></td>
	    		</tr>
	    		<s:iterator value="poPlanInfoList">
	    		<tr>
				    <td><s:property value="poNo"/></td>
				    <td><s:property value="itemNo"/></td>
				    <td><s:property value="as_"/></td>
				    <td><s:property value="planQty"/></td>
				    <td><s:property value="releaseDate"/></td>
	    		</tr>
	    		</s:iterator>
	    		
	    		<tr>
	    			<td colspan="7" align="center"><s:text name="testInfo"/></td>	    			
	    		</tr>
	    		<tr>
	    			<th><s:text name="articleNo"/></th>
	    			<th><s:text name="as"/></th>
	    			<th><s:text name="workstNr"/></th>
	    			<th><s:text name="workstDesc"/></th>
	    			<th><s:text name="testQty"/></th>
	    			<th><s:text name="passQty"/></th>
	    			<th><s:text name="failQty"/></th>
	    			<th><s:text name="side"/></th>
	    		</tr>
			          
			    <s:iterator value="poInformationList">			   		    			
				<tr>			    	
				    <td><s:property value="itemNr"/></td>
				    <td><s:property value="versionAS"/></td>
				    <td><s:property value="workstationNr"/></td>
				    <td><s:property value="workstationDescription"/></td>
				    <td><s:property value="testedQty"/></td>
				    <td><s:property value="passedQty"/></td>
				    <td><s:property value="failedQty"/></td>
				    <td><s:property value="side"/></td>
		
			    </tr>
			    </s:iterator>
			    
	    		<tr>	    		    		
	    			<td colspan="4"><s:submit key="closeWindow" onclick="window.opener=null;window.close();"/></td>    			
	    		</tr>
	    	</table>
	    </div>
	</s:form>
  </body>
</html>
