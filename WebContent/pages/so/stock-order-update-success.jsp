
<%
	String title = "Delete Stock Order";
	String[] deleteData = (String[])request.getAttribute("deletedData");
%>
<%@ include file="/includes/header.jsp"%>
<b><%=request.getAttribute("message")%></b>
<br><br>
<table class="item"
	style="background-image: url('<%=request.getContextPath()%>/images/item-header-space.jpg'); background-repeat: repeat-x;"
	width=400>
	<tr>
		<td class="item-header">No</td>
		<td class="item-header">No. SO</td>		
		<td class="item-header">No. PO</td>								
	</tr>
<%for (String delData : deleteData){ %>
	<tr>
		<td class="item"><%=delData.split(";")[0]%></td>
		<td class="item"><%=delData.split(";")[1]%></td>
		<td class="item"><%=delData.split(";")[2]%></td>		
	</tr>
	<% } %>
</table>

<%@ include file="/includes/footer.jsp"%>