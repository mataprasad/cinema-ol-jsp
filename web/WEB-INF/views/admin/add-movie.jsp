<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<t:_layout>
    <jsp:attribute name="head">
        <style type="text/css">
            .style7 {
                width: 100%;
            }

            .style9 {
                width: 237px;
                height: 23px;
            }

            .style22 {
                width: 157px;
                height: 23px;
            }

            .style24 {
                width: 16px;
                height: 23px;
            }

            .style26 {
                width: 16px;
            }

            .style27 {
                width: 157px;
            }

            .style28 {
                width: 237px;
            }

        </style>
        <link href="<c:url value="/resources/AjaxCalendar/AjaxCalendar.css"/>" rel="stylesheet" type="text/css" />
        <script src="<c:url value="/resources/AjaxCalendar/AjaxCalendar.js"/>" type="text/javascript"></script>
        <script>
            Sys.Application.add_init(appInit);
            function appInit() {
                $create(AjaxControlToolkit.CalendarBehavior, {"format": "dd/MM/yyyy"}, null, null, $get('txtReleaseDate'));
            }
            $(function () {
                /*$("#txtReleaseDate").datepicker({
                    changeMonth: true,
                    yearRange: '1950:2030',
                    changeYear: true
                });
                $("#txtReleaseDate").datepicker("option", "dateFormat", "dd/mm/yy");*/
            });

            function fn_ValidateForm() {
                if ($("#txtTitle").val() == "") {
                    alert("Enter movie title.");
                    return false;
                }
                if ($("#ddlStatus").val() == "0") {
                    alert("Select movie status.");
                    return false;
                }
                if ($("#txtDirector").val() == "") {
                    alert("Enter movie directors.");
                    return false;
                }
                if ($("#txtCasts").val() == "") {
                    alert("Enter movie casts.");
                    return false;
                }
                if ($("#txtReleaseDate").val() == "") {
                    alert("select movie release date.");
                    return false;
                }
                if ($("#ddlLanguage").val() == "0") {
                    alert("select movie language.");
                    return false;
                }
                if ($("#ddlIndustry").val() == "0") {
                    alert("select movie industry.");
                    return false;
                }
                if ($("#fuPoster").val() == "") {
                    alert("choose a movie poster.");
                    return false;
                }
                return true;
            }

        </script>
    </jsp:attribute>
    <jsp:body>
        <form action="@Url.Action("AddMovie", "Admin")" method="post" enctype="multipart/form-data" onsubmit="return fn_ValidateForm();" >
              <div style="padding: 0px; margin: 0px; border: 1px solid #3333CC">
                <div>
                    <div style="border-style: none none solid none; border-width: 1px; border-color: #333333; height: 30px; background-color: #6600CC;">
                        <a style="font-size: 15pt; color: White; display: block; vertical-align: middle; line-height: 30px; text-align: justify; margin-left: 7px;">ADD A MOVIE HERE</a>

                    </div>
                </div>
                <p style="color: red;">
                    @if (TempData["Msg"] != null)
                    {
                    @TempData["Msg"]
                    }
                </p>
                <table class="style7">
                    <tr>
                        <td class="style28">&nbsp;</td>
                        <td class="style26">&nbsp;</td>
                        <td class="style27">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">Title :</td>
                        <td align="left" class="style26">
                            <input type="text" name="txtTitle" id="txtTitle" value="" style="border-color: #993333; border-style: solid; border-width: 1px; height: 25px; width: 150px;" />
                        </td>
                        <td align="left" class="style27"></td>
                    </tr>
                    <tr>
                        <td class="style28">Status :</td>
                        <td align="left" class="style26">
                            @Html.DropDownList("ddlStatus", Model.Where(p => p.Key == "StatusList").Select(p => p.Value).FirstOrDefault(), new {
                            id = "ddlStatus", style = "width:150px;" })
                        </td>
                        <td align="left" class="style27"></td>
                    </tr>
                    <tr>
                        <td class="style9">Director :</td>
                        <td align="left" class="style24">
                            <input type="text" name="txtDirector" id="txtDirector" value="" style="border-color: #993333; border-style: solid; border-width: 1px; height: 25px; width: 150px;" />
                        </td>
                        <td align="left" class="style22"></td>
                    </tr>
                    <tr>
                        <td class="style28">Casts:</td>
                        <td align="left" class="style26" rowspan="4">

                            <textarea name="txtCasts" id="txtCasts" style="border-color: #993333; border-style: solid; border-width: 1px; height: 200px; width: 150px;" rows="4"></textarea>

                        </td>
                        <td align="left" class="style27"></td>
                    </tr>
                    <tr>
                        <td class="style28">&nbsp;</td>
                        <td align="left" class="style27">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">&nbsp;</td>
                        <td align="left" class="style27">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">&nbsp;</td>
                        <td align="left" class="style27">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">Release Date :</td>
                        <td align="left" class="style26">
                            <input type="text" name="txtReleaseDate" readonly="readonly" id="txtReleaseDate" value="" style="border-color: #993333; border-style: solid; border-width: 1px; height: 25px; width: 150px;" />
                        </td>
                        <td align="left" class="style27"></td>
                    </tr>
                    <tr>
                        <td class="style28">Language :</td>
                        <td align="left" class="style26">
                            @Html.DropDownList("ddlLanguage", Model.Where(p => p.Key == "ddlLanguage").Select(p => p.Value).FirstOrDefault(), new {
                            id = "ddlLanguage", style = "width:150px;" })
                        </td>
                        <td align="left" class="style27"></td>
                    </tr>
                    <tr>
                        <td class="style28">Industry :</td>
                        <td align="left" class="style26">
                            @Html.DropDownList("ddlIndustry", Model.Where(p => p.Key == "IndustryList").Select(p => p.Value).FirstOrDefault(), new {
                            id = "ddlIndustry", style = "width:150px;" })
                        </td>
                        <td align="left" class="style27"></td>
                    </tr>
                    <tr>
                        <td class="style28">Upload Poster :</td>
                        <td align="left" class="style26">
                            <input type="file" name="fuPoster" id="fuPoster" />
                        </td>
                        <td align="left" class="style27"></td>
                    </tr>
                    <tr>
                        <td class="style28">&nbsp;</td>
                        <td class="style26">&nbsp;</td>
                        <td class="style27">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">&nbsp;</td>
                        <td class="style26">
                            <input type="submit" name="btnSave" id="btnSave" value="SAVE" style="width: 85px;" />
                        </td>
                        <td class="style27">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">&nbsp;</td>
                        <td class="style26">&nbsp;</td>
                        <td class="style27">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">&nbsp;</td>
                        <td class="style26">&nbsp;</td>
                        <td class="style27">&nbsp;</td>
                    </tr>
                </table>

            </div>
        </form>

    </jsp:body>
</t:_layout>

