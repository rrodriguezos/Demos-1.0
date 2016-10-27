<%--
 * action-1.jsp
 *
 * Copyright (C) 2013 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<display:table name="demos" id="row" pagesize="5" requestURI="${requestUri}" class="displaytag">
	
	<spring:message code="demo.title" var="titleHeader" />
	<display:column property="title" title="${titleHeader}" />>
		
	<spring:message code="demo.momentReleased" var="momentReleasedHeader" />
	<display:column property="momentReleased" title="${momentReleasedHeader}" />
	
	<spring:message code="demo.display" var="display" />
	<display:column title="${display}">
			<input type="button" value="<spring:message code="demo.display" />" 
					onclick="javascript: window.location.assign('demo/display.do?demoId=${row.id}')" />
	</display:column>
	
	<spring:message code="demo.descriptions" var="descriptionsHeader" />
	<display:column title="${descriptionsHeader}">
			<input type="button" value="<spring:message code="demo.descriptions" />" 
					onclick="javascript: window.location.assign('description/list.do?demoId=${row.id}')" />
	</display:column>
	
	<spring:message code="demo.resources" var="resourcesHeader" />
	<display:column title="${resourcesHeader}">
			<input type="button" value="<spring:message code="demo.resources" />" 
					onclick="javascript: window.location.assign('resource/list.do?demoId=${row.id}')" />
	</display:column>
	

</display:table>