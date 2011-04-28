<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.HashMap"%>
<%
	String title = "Modify Stock Order";
%>
<%@ include file="/includes/header.jsp"%>
<link rel="stylesheet" href="/ireport/script/example.css"
	TYPE="text/css" MEDIA="screen">
<link rel="stylesheet" href="/ireport/script/example-print.css"
	TYPE="text/css" MEDIA="print">
<script type="text/javascript" src="/ireport/script/tabber.js"></script>
<style type="text/css">
.tabberlive .tabbertab {
	height: 300px;
	width: 800px;
}
</style>
<form id="info" name="info" action="<%=request.getContextPath()%>/pages/stock-order-update"
	method="post">
	<%	
	HashMap<String,String> data = (HashMap<String,String>)request.getAttribute("data");
	ArrayList<String> comboTypeSO = (ArrayList<String>) request
			.getAttribute("comboTypeSO");
	ArrayList<String> comboJenisTransaksi = (ArrayList<String>) request
	.getAttribute("comboJenisTransaksi");
	ArrayList<String> comboTipeTransaksi = (ArrayList<String>) request
	.getAttribute("comboTipeTransaksi");		

%> 
<input type="hidden" name="NO_SO_SMS" value="<%=data.get("NO_SO_SMS") %>">
<input type="hidden" name="KODE_CUST" value="<%=data.get("KODE_CUST") %>">
<input type="hidden" name="KODE_CAB" value="<%=data.get("KODE_CAB") %>">
<img
	src="<%=request.getContextPath()%>/images/icons/system-users.png">
<b>Stock Order Information</b> <br>
<br>
<div class="tabber">

<div class="tabbertab">
<h2>Type Sales Order</h2>
<p>
<table>
	<tr>
		<td>Type Sales Order</td>
		<td><select name=type_so>
		<% for(String combo : comboTypeSO){ %>
    <option value="<%=combo.split(",")[1] %>" <%if(combo.split(",")[1].equals(data.get("KODE_TYPESO"))){ %> selected<%} %>><%=combo.split(",")[0] %></option>
    <% } %>        
</select></td>				
	</tr>
	<tr>
		<td>Purchase Order</td>
		<td>PO.<input name="po" type="text" value="<%=data.get("NO_PO")%>">
		</td>
	</tr>
	<tr>
		<td>Tanggal PO</td>
		<td><input name="tanggal_po" readonly type="text" value="<%=data.get("TGL_PO")%>">
		</td>
	</tr>
	<tr>
		<td>Jenis Transaksi</td>
		<td><select name=jenis_transaksi>
		<% for(String combo : comboJenisTransaksi){ %>
    <option value="<%=combo.split(",")[1] %>" <%if(combo.split(",")[1].equals(data.get("KODE_TRN"))){ %> selected<%} %>><%=combo.split(",")[0] %></option>
    <% } %>        
</select></td>		
	</tr>	
</table>
</p>

</div>


<div class="tabbertab">
<h2>Detail Barang</h2>
<p>
<table>
	<tr>
		<td>Kode Barang</td>
		<td><input name="kode_barang" size="50" readonly type="text" value="<%=data.get("KODE_BAR")%>">&nbsp;<a onclick="OpenPop_UpList('<%=request.getContextPath()%>/pages/list?title=Cari%20Kode%20Barang&tableTitle=Daftar%20Barang%20Audit&itemName=kode_barang&showFields=kode_bar,nama_bar&queryData=kodeBarangQuery');return false;" href="">Look up</a>
		</td>
	</tr>
	<tr>
		<td>Quantity SO</td>
		<td><input name="quantity_so" type="text" value="<%=data.get("QTY_SO")%>" onkeypress='return onlyNumbers(event)'>
		</td>
	</tr>	
</table>
</p>
</div>


<div class="tabbertab">

<h2>Register SO</h2>
<p>
<table>
	<tr>
		<td>Type Delivery</td>
		<td><select name="tipe_transaksi">
		<% for(String combo : comboTipeTransaksi){ %>
    <option value="<%=combo.split(",")[1] %>" <%if(combo.split(",")[1].equals(data.get("KODE_TYPEDO"))){ %> selected<%} %>><%=combo.split(",")[0] %></option>
    <% } %>        
</select></td>
		</td>
	</tr>
	<tr>
		<td>Tanggal Sales Order</td>
		<td><input name="tanggal_so" readonly type="text" value="<%=data.get("TGL_SO_SMS")%>">
		</td>
	</tr>
	<tr>
		<td>Type Bayar</td>
		<td><select name="tipe_bayar">
		<option value="tunai" <%if(data.get("TYPE_BAYAR").equals("0.0")){ %> selected <%} %>>tunai</option>
	    <option value="kredit" <%if(data.get("TYPE_BAYAR").equals("1.0")){ %> selected <%} %>>kredit</option>
</select></td>
		</td>
	</tr>	
	<tr>
		<td>Catatan</td>
		<td><input name="catatan" type="text" value="<%=data.get("KET_SO")%>">
		</td>
	</tr>
</table>
</p>
</div>

</div>
<input type="submit" value="Modify" name="Action">
<input type="submit" value="Delete" name="Action">
</form>
<%@ include file="/includes/footer.jsp"%>