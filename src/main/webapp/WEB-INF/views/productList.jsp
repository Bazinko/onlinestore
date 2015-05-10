<%@ include file="/common/taglibs.jsp"%>
<form:form commandName="product">
<table border="0" align="center">
	<tr >
		<td>&nbsp;</td>
		<td><label>List of products</label></td>
		<td>&nbsp;</td>
	</tr>
	<tr valign="top">
		<td>&nbsp;</td>
		<td>
			<fieldset>
				<legend>Searching:</legend>
				<table border="0">	
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
				  	</tr>						  
					<tr>
						<td>Search: </td>
						<td><form:input path="name" maxlength="50"/></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					 <tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
						    <input type="button" id="add" name="add"
						    	onclick="location.href='<c:url value="/productView.htm"/>'"
						        value="add"/>
						</td>
						<td>&nbsp;</td>
						<td><input type="submit" id="search" name="search"  value="search"/></td>
						<td>&nbsp;</td>				
					</tr>				  					  
				</table>	
			</fieldset>					
		</td>
		<td>&nbsp;</td>									
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>	
		<td>&nbsp;</td>	
	</tr>
	<tr>
		<td>&nbsp;</td>	
		<td valign="top">		
			<table>
				<thead>
					<tr>
						<td>Name</td>
						<td>Price</td>
					</tr>								
				</thead>
				<tbody>
					<c:forEach var="product" items="${products}">
						<tr>
							<td><a href="productView.htm?idProduct=${product.idProduct}"><c:out value="${product.name}"/></a></td>
							<td>$ <c:out value="${product.price}"/></td>																
						</tr>								
					</c:forEach>																																																					
				</tbody>
			</table>												
		</td>
		<td>&nbsp;</td>			
	</tr>		
</table>	
</form:form>



				