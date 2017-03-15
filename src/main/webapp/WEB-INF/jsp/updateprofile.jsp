<%--
  ~ Password Management Servlets (PWM)
  ~ http://www.pwm-project.org
  ~
  ~ Copyright (c) 2006-2009 Novell, Inc.
  ~ Copyright (c) 2009-2017 The PWM Project
  ~
  ~ This program is free software; you can redistribute it and/or modify
  ~ it under the terms of the GNU General Public License as published by
  ~ the Free Software Foundation; either version 2 of the License, or
  ~ (at your option) any later version.
  ~
  ~ This program is distributed in the hope that it will be useful,
  ~ but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  ~ GNU General Public License for more details.
  ~
  ~ You should have received a copy of the GNU General Public License
  ~ along with this program; if not, write to the Free Software
  ~ Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
  --%>

<!DOCTYPE html>
<%@ page language="java" session="true" isThreadSafe="true"
         contentType="text/html" %>
<%@ taglib uri="pwm" prefix="pwm" %>
<html lang="<pwm:value name="<%=PwmValue.localeCode%>"/>" dir="<pwm:value name="<%=PwmValue.localeDir%>"/>">
<%@ include file="fragment/header.jsp" %>
<body class="nihilo">
<div id="wrapper">
    <jsp:include page="fragment/header-body.jsp">
        <jsp:param name="pwm.PageName" value="Title_UpdateProfile"/>
    </jsp:include>
    <div id="centerbody">
        <div id="page-content-title"><pwm:display key="Title_UpdateProfile" displayIfMissing="true"/></div>
        <p><pwm:display key="Display_UpdateProfile"/></p>
        <%@ include file="fragment/message.jsp" %>
        <br/>
        <form action="<pwm:current-url/>" method="post" name="updateProfileForm" enctype="application/x-www-form-urlencoded" autocomplete="off"
              class="pwm-form" id="updateProfileForm">

            <jsp:include page="fragment/form.jsp"/>
            <input type="hidden" name="processAction" value="updateProfile"/>
            <input type="hidden" name="pwmFormID" value="<pwm:FormID/>"/>
        </form>

        <div class="buttonbar">
            <button id="submitBtn" type="submit" class="btn" name="button" form="updateProfileForm">
                <pwm:if test="<%=PwmIfTest.showIcons%>"><span class="btn-icon pwm-icon pwm-icon-forward"></span></pwm:if>
                <pwm:display key="Button_Update"/>
            </button>
            <%@ include file="/WEB-INF/jsp/fragment/cancel-button.jsp" %>
        </div>
    </div>
    <div class="push"></div>
</div>
<pwm:script>
<script type="text/javascript">
    PWM_GLOBAL['startupFunctions'].push(function(){
        PWM_MAIN.addEventHandler('updateProfileForm','input',function(){PWM_UPDATE.validateForm()});
    });
</script>
</pwm:script>
<pwm:script-ref url="/public/resources/js/updateprofile.js"/>
<%@ include file="/WEB-INF/jsp/fragment/cancel-form.jsp" %>
<%@ include file="fragment/footer.jsp" %>
</body>
</html>

