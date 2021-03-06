<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         import="java.util.*,com.app.bean.json.*,com.app.bean.db.*,com.app.util.*"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/" var="sBaseUrl" />

<t:_layout>
    <jsp:attribute name="head">
        <style type="text/css">
            .style1 {
                width: 153px;
            }

            .style2 {
                width: 62px;
            }

            .style4 {
                width: 120px;
            }
        </style>
        <script type="text/javascript">
            function fn_ValidateForm() {
                if ($("#txtLoginId").val() == "") {
                    alert("Please enter login id.");
                    return false;
                }
                if ($("#txtLoginPass").val() == "") {
                    alert("Please enter password.");
                    return false;
                }
                return true;
            }
        </script>
    </jsp:attribute>
    <jsp:body>

        <form action='${sBaseUrl}${loginPostUrl }' method="post"
              onsubmit="return fn_ValidateForm();">

            <div
                style="margin: 0px auto 0px auto; padding: 0px; width: 800px; color: red; text-align: center;">

                <c:if test="${error !=null && error!='' }">
                    ${error } <br />
                </c:if>
                <c:if test="${msg !=null && msg!='' }">
                    ${msg } <br />
                </c:if>
            </div>
            <div
                style="padding: 10px; margin: 0px auto 0px auto; width: 800px; text-align: center;">

                <div
                    style="border: 1px solid #333333; padding: 0px; margin: 10px auto 0px auto; width: 400px; height: 200px;">

                    <div
                        style="border-style: none none solid none; border-width: 1px; border-color: #333333; height: 30px; background-color: #6600CC;">

                        <a
                            style="font-size: 15pt; color: White; display: block; vertical-align: middle; line-height: 30px; text-align: justify; margin-left: 7px;">${title} LOGIN HERE</a>
                    </div>
                    <div>
                        <table style="width: 100%;">
                            <tr>
                                <td class="style2">&nbsp;
                                </td>
                                <td class="style4">&nbsp;
                                </td>
                                <td class="style1">&nbsp;
                                </td>
                                <td>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">&nbsp;
                                </td>
                                <td align="left" class="style4">Login Id :
                                </td>
                                <td align="left" class="style1">
                                    <input type="text" id="txtLoginId"
                                           name="txtLoginId"
                                           style="border-color: #993333; border-style: Solid; border-width: 1px; width: 150px;"></input>
                                </td>
                                <td align="left"></td>
                            </tr>
                            <tr>
                                <td class="style2">&nbsp;
                                </td>
                                <td align="left" class="style4">Password :
                                </td>
                                <td align="left" class="style1">
                                    <input type="password" id="txtLoginPass"
                                           name="txtLoginPass"
                                           style="border-color: #993333; border-style: Solid; border-width: 1px; width: 150px;"></input>
                                </td>
                                <td align="left"></td>
                            </tr>
                            <tr>
                                <td class="style2">&nbsp;
                                </td>
                                <td align="left" class="style4">&nbsp;
                                </td>
                                <td align="left" class="style1">
                                    <input type="image" id="btnLogin"
                                           src="<c:url value="/images/appImages/btnLogin.png"/>"
                                           style="width: 85px; height: 30px;" />
                                </td>
                                <td align="left">&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">&nbsp;
                                </td>
                                <td align="left" class="style4">&nbsp;
                                </td>
                                <td align="left" class="style1">&nbsp;
                                </td>
                                <td align="left">&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">&nbsp;
                                </td>
                                <td align="center" class="style3" colspan="2">
                                    <c:choose>
                                        <c:when
                                            test="${title!=' ADMIN'}">
                                            <a id="lnkForgotPass"
                                               style="text-decoration: underline;"
                                               href="<c:url value="/public?do=reset-pass"/>">Forgot Password ??</a>
                                        </td
                                    </c:when>
                                </c:choose>
                                
                                <td align="left">&nbsp;
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </form>

    </jsp:body>
</t:_layout>