<!--
/*
* Licensed to the Apache Software Foundation (ASF) under one
* or more contributor license agreements.  See the NOTICE file
* distributed with this work for additional information
* regarding copyright ownership.  The ASF licenses this file
* to you under the Apache License, Version 2.0 (the
* "License"); you may not use this file except in compliance
* with the License.  You may obtain a copy of the License at
*
*  http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing,
* software distributed under the License is distributed on an
* "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
* KIND, either express or implied.  See the License for the
* specific language governing permissions and limitations
* under the License.
*/
-->
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>Struts2 Showcase - Non Ui Tag - MergeIterator Tag</title>
	<s:head/>
</head>
<body>
<div class="page-header">
	<h1>Non Ui Tag - MergeIterator Tag</h1>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<s:generator var="iterator1" val="%{iteratorValue1}" separator="," />
		    <s:generator var="iterator2" val="%{iteratorValue2}" separator="," />

		    <s:merge var="mergedIterator">
		        <s:param value="%{#attr.iterator1}" />
		        <s:param value="%{#attr.iterator2}" />
		    </s:merge>

		    <s:iterator value="%{#mergedIterator}">
		        <s:property /><br/>
		    </s:iterator>

			<s:url var="url" action="showMergeTagDemo" namespace="/tags/non-ui/mergeIteratorTag" />
			<s:a href="%{#url}" cssClass="btn btn-info" escapeHtmlBody="false"><i class="icon icon-arrow-left"></i> Back To Input</s:a>
		</div>
	</div>
</div>
</body>
</html>
