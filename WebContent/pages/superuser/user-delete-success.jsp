<%@page import="common.DateFormatter" %>
<%@page import="web.UserSession" %>
<%@page import="web.User" %>
<%@page import="web.HttpConstants" %>
<%
String title = "User Search";
String message = (String)request.getParameter("message");
%>
<%@ include file="/includes/header.jsp" %>
<table>
    <tr>
		<td>
			<img src="<%=request.getContextPath()%>/images/icons/system-lock-screen.png">			
<% if (message.equalsIgnoreCase("reset")){ %>
    <b>Reset Password</b>
<%
} else { %>
    <b>Delete User</b>
<% 
}%>
		</td>
	</tr>
	<tr>
		<td>
<% 
if (message.equalsIgnoreCase("reset")){ %>
    User password has been reset sucessfully. It will be 'telkomsel<%=request.getParameter("nik")%>'.
<%
} else { %>
    Users have been Deleted successfully.
<% 
}%>
    </td>
	    </tr>
</table>
<%@ include file="/includes/footer.jsp" %>