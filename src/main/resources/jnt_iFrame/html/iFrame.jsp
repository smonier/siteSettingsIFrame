<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>
<c:set var="resourceReadOnly" value="${currentResource.moduleParams.readOnly}"/>
<c:set var="isEmpty" value="true"/>
<c:set var="site" value="${renderContext.mainResource.node.resolveSite}"/>
<template:addResources type="javascript" resources="jquery.min.js"/>
<template:addResources type="javascript" resources="datatables/jquery.dataTables.js,i18n/jquery.dataTables-${currentResource.locale}.js,datatables/dataTables.bootstrap-ext.js,settings/dataTables.initializer.js"/>
<template:addResources type="css" resources="datatables/css/bootstrap-theme.css,tablecloth.css"/>


<jcr:nodeProperty node="${currentNode}" name="iFrameUrl" var="iFrameUrl"/>
<jcr:nodeProperty node="${currentNode}" name="jcr:title" var="title"/>

<div class="page-header">
  <h2>${title} powered by <img src="https://www.awe.fr/wp-content/themes/themeawe/img/awe-vecto-white.svg" height="50px" /></h2>
</div>


<div class="panel panel-default">
    <div class="panel-body">
        <iframe id="iframeId" src="${iFrameUrl.string}" style="height:100vh;width:100vw;display: block;border: none;" width="100%" height="100%"></iframe>
    </div>
</div>


 

