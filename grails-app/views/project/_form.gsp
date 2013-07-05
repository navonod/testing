<%@ page import="autocomplete.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="project.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${projectInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="project.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${projectInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="project.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${projectInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'town', 'error')} required">
	<label for="town">
		<g:message code="project.town.label" default="Town" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="town" name="town.id" from="${autocomplete.Town.list()}" optionKey="id" required="" value="${projectInstance?.town?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'transactions', 'error')} ">
	<label for="transactions">
		<g:message code="project.transactions.label" default="Transactions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.transactions?}" var="t">
    <li><g:link controller="transaction" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="transaction" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'transaction.label', default: 'Transaction')])}</g:link>
</li>
</ul>

</div>

