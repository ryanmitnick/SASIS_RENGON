<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<script type="text/javascript" src="js/autocompleteCombobox.js"></script>
<script>
	$(function() {
			$("#combobox1").combobox();
	});
	</script>
</head>
<div class="summaryFilter">
	<div id="nav2BatchSummary.action">
		<select id="combobox1" name="isHistory" >
			<s:if test="isHistory">
				<option value="false">New Records</option>
				<option value="true"  selected="selected">Old Records</option>
			</s:if>
			<s:else>
				<option value="false" selected="selected">New Records</option>
				<option value="true">Old Records</option>
			</s:else>
		</select>
	</div>
</div>
<div class="tableArea">
	<div class="tableContainerSummary">
				<table id="reportSummary" width="100%">
						        <tr>
						            <th>Batch Id</th>
						            <th>Batch Name</th>
						            <th>Course</th>
						            <th>No of Students</th>
						            <th></th>
						        </tr>
						        <s:iterator value="batchInfoList">
						        <tr>
						            <td class="editableId" id="btchInfoId"><s:property  value="batchId"/></td>
						            <td><s:property value="batchName"/></td>
						            <td><s:property value="courseInfo.courseName"/></td>
						            <td><s:property value="maxNoOfStd"/></td>
						            <td><div class="arrow"></div></td>
						        </tr>
						        <tr>
						            <td colspan="5">
						           		<div class="rightDiv">
							               <input type="submit" value="Show Students >>" class="viewTblRels" name="btchStds"/>
							            </div>
						                <h4>Full Description</h4>
						                <div class="descriptionDiv">
						                	<ul>
						                		<li><label>Batch Id:<s:property value="batchId"/></label></li>
						                		<li><label>Batch Name:<s:property value="batchName"/></label></li>
						                		<li><label>Course:<s:property value="courseInfo.courseName"/></label></li>
						                		<li><label>No of Students:<s:property value="maxNoOfStd"/></label></li>
						                	</ul>
						                </div>
						                <span><h4><a href="nav2BatchInfoEdit.action" >Edit</a></h4></span><span class="delete"><a  href="deleteBatch.action" >Delete</a></span>
						            </td>
						        </tr>
						        </s:iterator>
					        </table>
					        </div>
					       </div>
					        <div class="summaryContainerPopup">
					        <div>&nbsp;</div>
					         	<div class="btchStds">
					         		
					         	</div>
					        </div>
					       