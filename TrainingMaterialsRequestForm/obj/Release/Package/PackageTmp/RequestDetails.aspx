<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestDetails.aspx.cs" Inherits="TrainingMaterialsRequestForm.RequestDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Request Details</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
   <%-- <link href="Content/main.css" rel="stylesheet" />--%>
    <link href="Content/gridview.css" rel="stylesheet" />
    <link href="Content/jquery-ui.css" rel="stylesheet" />
    <link href="Content/jquery-ui.structure.css" rel="stylesheet" />
    <link href="Content/jquery-ui.theme.css" rel="stylesheet" />
    <script type="text/javascript" src="Scripts/modernizr-2.5.3.js"></script>
    <script type="text/javascript" src="Scripts/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.11.4.js"></script>
    <script type="text/javascript" src="Scripts/jquery.validate.js"></script>
    <script type="text/javascript" src="Scripts/validation.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //$.noConflict(true);           
            $(".datepicker").datepicker({
                changeYear: true,
                changeMonth: true,
                //minDate: new Date(2010, 1 - 1, 1),
                //maxDate: new Date(),
                //numberOfMonths: 1
            });          
        });        
    </script> 
</head>
<body style="background-color:lightgray;">
    <form id="form1" runat="server">
    <div></div>
        <br />
    
    
        <div style="background-color:linen" class="container-fluid container">
            <h3>Request Details</h3>
            <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="admin"></asp:SiteMapPath>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" SiteMapProvider="admin" />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="requestorID" DataSourceID="SqlDataSource1" AllowPaging="True" RenderOuterTable="False" OnPageIndexChanged="FormView1_PageIndexChanged" EmptyDataText="No Records Found" OnDataBound="FormView1_DataBound"  >
                <EditItemTemplate>
                    <table class="table table-hover table-responsive table-bordered table-condensed">
                        <tr>
                    <th>Requestor Name:</th>
                    <td><asp:TextBox ID="requestorNameTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("requestorName") %>' Width="20%" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required" ControlToValidate="requestorNameTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                        <tr>
                    <th>Title:</th>
                    <td>
                        <%--<asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />--%>

                        <asp:DropDownList ID="DropDownList1" runat="server"  SelectedValue='<%# Bind("title") %>' CssClass="form-control" DataValueField="requestorID" DataTextField="title" Width="20%">
                                <asp:ListItem Text=" " Value=""></asp:ListItem>
                                <asp:ListItem Text="Center Manager" Value="Center Manager"></asp:ListItem>
                                <asp:ListItem Text="District Training Manager" Value="District Training Manager"></asp:ListItem>
                                <asp:ListItem Text="Regional Manager" Value="Regional Manager"></asp:ListItem>
                                <asp:ListItem Text="Corporate" Value="Corporate"></asp:ListItem>
                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Titled Required" ControlToValidate="DropDownList1" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                    <tr>
                    <th>Address:</th>
                    <td><asp:TextBox ID="addressTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("address") %>' Width="20%" />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address Required" ControlToValidate="addressTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                    <tr>
                    <th>Phone:</th>
                    <td><asp:TextBox ID="phoneTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("phone") %>' Width="20%" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Phone number must be correct format. Include dashes" ControlToValidate="phoneTextBox" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" EnableClientScript="False" Display="Dynamic"></asp:RegularExpressionValidator>

                    </td>
                    </tr>
                    <tr>
                    <th>Email Address:</th>
                    <td><asp:TextBox ID="emailTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("emailaddress") %>' Width="20%" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Correct email format required." ControlToValidate="emailTextBox" ForeColor="Red" ValidationExpression="\w+([-+.&apos;]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" EnableClientScript="False"></asp:RegularExpressionValidator>

                    </td>
                    </tr>
                        <tr>
                    <th>State:</th>
                    <td>
                        <%--<asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />--%>

                        <asp:DropDownList ID="DropDownList2" runat="server"  SelectedValue='<%# Bind("state") %>' CssClass="form-control" DataValueField="requestorID" DataTextField="state" Width="20%">

                        <asp:ListItem Text=" " Value=""></asp:ListItem>

                        <asp:ListItem Text="AL" Value="Alabama"></asp:ListItem>

                        <asp:ListItem Text="AZ" Value="Arizona"></asp:ListItem>

                        <asp:ListItem Text="CA" Value="California"></asp:ListItem>

                        <asp:ListItem Text="CO" Value="Colorado"></asp:ListItem>

                        <asp:ListItem Text="FL" Value="Florida"></asp:ListItem>

                        <asp:ListItem Text="GA" Value="Georgia"></asp:ListItem>

                        <asp:ListItem Text="IA" Value="Iowa"></asp:ListItem>

                        <asp:ListItem Text="ID" Value="Idaho"></asp:ListItem>

                        <asp:ListItem Text="IL" Value="Illinois"></asp:ListItem>

                        <asp:ListItem Text="IN" Value="Indiana"></asp:ListItem>

                        <asp:ListItem Text="KS" Value="Kansas"></asp:ListItem>

                        <asp:ListItem Text="KY" Value="Kentucky"></asp:ListItem>

                        <asp:ListItem Text="LA" Value="Louisiana"></asp:ListItem>

                        <asp:ListItem Text="MI" Value="Michigan"></asp:ListItem>

                        <asp:ListItem Text="MO" Value="Missouri"></asp:ListItem>

                        <asp:ListItem Text="MS" Value="Mississippi"></asp:ListItem>

                        <asp:ListItem Text="NE" Value="Nebraska"></asp:ListItem>

                        <asp:ListItem Text="NM" Value="New Mexico"></asp:ListItem>

                        <asp:ListItem Text="NV" Value="Nevada"></asp:ListItem>

                        <asp:ListItem Text="OH" Value="Ohio"></asp:ListItem>

                        <asp:ListItem Text="OK" Value="Oklahoma"></asp:ListItem>

                        <asp:ListItem Text="SC" Value="South Carolina"></asp:ListItem>

                        <asp:ListItem Text="SD" Value="South Dakota"></asp:ListItem>

                        <asp:ListItem Text="TN" Value="Tennessee"></asp:ListItem>

                        <asp:ListItem Text="UT" Value="Utah"></asp:ListItem>

                        <asp:ListItem Text="VA" Value="Virginia"></asp:ListItem>

                        <asp:ListItem Text="WA" Value="Washington"></asp:ListItem>

                        <asp:ListItem Text="WI" Value="Wisconsin"></asp:ListItem>

                        <asp:ListItem Text="WY" Value="Wyoming"></asp:ListItem>

                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="State Required" ControlToValidate="DropDownList2" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                        <tr>
                    <th>Center Number:</th>
                    <td><asp:TextBox ID="centerNumberTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("centerNumber") %>' Width="20%" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Center Required" ControlToValidate="centerNumberTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                        <tr>
                    <th>Start Date:</th>
                    <td><asp:TextBox ID="requestStartDateTextBox" CssClass="datepicker form-control" runat="server" Text='<%# Bind("requestStartDate", "{0:MM/dd/yyyy}") %>' Width="20%" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Start Date Required" ControlToValidate="requestStartDateTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                        <tr>
                    <th>End Date:</th>
                    <td><asp:TextBox ID="requestEndDateTextBox" CssClass="datepicker form-control" runat="server" Text='<%# Bind("requestEndDate", "{0:MM/dd/yyyy}") %>' Width="20%" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="End Date Required" ControlToValidate="requestEndDateTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                        <tr>
                    <th>Reason ForTraining:</th>
                    <td>
                        <%--<asp:TextBox ID="reasonForTrainingTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("reasonForTraining") %>' Width="20%" />--%>
                        <asp:DropDownList ID="DropDownList4" runat="server"  SelectedValue='<%# Bind("reasonForTraining") %>' CssClass="form-control" DataValueField="requestorID" DataTextField="title" Width="20%">
                                <asp:ListItem Text=" " Value=""></asp:ListItem>
                                <asp:ListItem Text="Center Manager Course (CMC)" Value="Center Manager Course (CMC)"></asp:ListItem>
                                <asp:ListItem Text="Train the Trainer (T3)" Value="Train the Trainer (T3)"></asp:ListItem>
                                <asp:ListItem Text="Other (Please explain in the Notes box below)" Value="Other (Please explain in the Notes box below)"></asp:ListItem>                                
                            </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Reason Required" ControlToValidate="DropDownList4" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    </tr>
                        <tr>
                    <th>Certification Type:</th>
                    <td>
                        <%--<asp:TextBox ID="certificationTypeTextBox" CssClass="form-control" runat="server" Text='<%# Bind("certificationType") %>' Width="20%" />--%>
                        <asp:DropDownList ID="DropDownList5" runat="server"  SelectedValue='<%# Bind("certificationType") %>' CssClass="form-control" DataValueField="requestorID" DataTextField="title" Width="20%">
                                <asp:ListItem Text=" " Value=""></asp:ListItem>
                                <asp:ListItem Text="Certified to train by completing Train the Trainer with Corporate Training." Value="Certified to train by completing Train the Trainer with Corporate Training."></asp:ListItem>
                                <asp:ListItem Text="Certified by a DTM who completed Train the Trainer" Value="Certified by a DTM who completed Train the Trainer"></asp:ListItem>                                                               
                            </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Type Required" ControlToValidate="DropDownList5" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                   </tr>
                        <tr>
                    <th>Certification Date:</th>
                    <td><asp:TextBox ID="certificationDateTextBox" CssClass="datepicker form-control" runat="server" Text='<%# Bind("certificationDate", "{0:MM/dd/yyyy}") %>' Width="20%" /></td>
                    </tr>
                        <tr>
                    <th>DTM Name:</th>
                    <td><asp:TextBox ID="dtmNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("dtmName") %>' Width="20%" /></td>
                    </tr>
                        <tr>
                    <th>DTM CertificationDate:</th>
                    <td><asp:TextBox ID="dtmCertificationDateTextBox" CssClass="datepicker form-control" runat="server" Text='<%# Bind("dtmCertificationDate", "{0:MM/dd/yyyy}") %>' Width="20%" /></td>
                    </tr>
                        <tr>
                    <th style="width:20% !important">notes:</th>
                    <td><asp:TextBox ID="notesTextBox" CssClass="form-control" runat="server" Text='<%# Bind("notes") %>' TextMode="MultiLine" Width="400" Height="100" /></td>
                   </tr>
                        <tr>
                    <td><asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update"/>
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                            </tr>
                        </table>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table class="table table-hover table-responsive table-bordered table-condensed">
                        <tr>
                    <th>Requestor Name:</th>
                    <td><asp:TextBox ID="requestorNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("requestorName") %>' Width="20%" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required" ControlToValidate="requestorNameTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                    </tr>
                        <tr>
                    <th>Title:</th>
                    <td>
                        <%--<asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />--%>

                        <asp:DropDownList ID="DropDownList1" runat="server"  SelectedValue='<%# Bind("title") %>' CssClass="form-control" DataValueField="requestorID" DataTextField="title" Width="20%">
                                <asp:ListItem Text=" " Value=""></asp:ListItem>
                                <asp:ListItem Text="Center Manager" Value="Center Manager"></asp:ListItem>
                                <asp:ListItem Text="District Training Manager" Value="District Training Manager"></asp:ListItem>
                                <asp:ListItem Text="Regional Manager" Value="Regional Manager"></asp:ListItem>
                                <asp:ListItem Text="Corporate" Value="Corporate"></asp:ListItem>
                            </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Titled Required" ControlToValidate="DropDownList1" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                        <tr>
                    <tr>
                    <th>Address:</th>
                    <td><asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("address") %>' Width="20%" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address Required" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                    <tr>
                    <th>Phone:</th>
                    <td><asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("phone") %>' Width="20%" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Phone number must be correct format. Include dashes" ControlToValidate="TextBox2" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" EnableClientScript="False" Display="Dynamic"></asp:RegularExpressionValidator>

                    </td>
                    </tr>
                    <tr>
                    <th>Email Address:</th>
                    <td><asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Bind("emailaddress") %>' Width="20%" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Correct email format required." ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="\w+([-+.&apos;]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" EnableClientScript="False"></asp:RegularExpressionValidator>

                    </td>
                    </tr>
                        <tr>
                    <th>State:</th>
                    <td>
                        <%--<asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />--%>

                        <asp:DropDownList ID="DropDownList2" runat="server"  SelectedValue='<%# Bind("state") %>' CssClass="form-control" DataValueField="requestorID" DataTextField="state" Width="20%">

                        <asp:ListItem Text=" " Value=""></asp:ListItem>

                        <asp:ListItem Text="AL" Value="Alabama"></asp:ListItem>

                        <asp:ListItem Text="AZ" Value="Arizona"></asp:ListItem>

                        <asp:ListItem Text="CA" Value="California"></asp:ListItem>

                        <asp:ListItem Text="CO" Value="Colorado"></asp:ListItem>

                        <asp:ListItem Text="FL" Value="Florida"></asp:ListItem>

                        <asp:ListItem Text="GA" Value="Georgia"></asp:ListItem>

                        <asp:ListItem Text="IA" Value="Iowa"></asp:ListItem>

                        <asp:ListItem Text="ID" Value="Idaho"></asp:ListItem>

                        <asp:ListItem Text="IL" Value="Illinois"></asp:ListItem>

                        <asp:ListItem Text="IN" Value="Indiana"></asp:ListItem>

                        <asp:ListItem Text="KS" Value="Kansas"></asp:ListItem>

                        <asp:ListItem Text="KY" Value="Kentucky"></asp:ListItem>

                        <asp:ListItem Text="LA" Value="Louisiana"></asp:ListItem>

                        <asp:ListItem Text="MI" Value="Michigan"></asp:ListItem>

                        <asp:ListItem Text="MO" Value="Missouri"></asp:ListItem>

                        <asp:ListItem Text="MS" Value="Mississippi"></asp:ListItem>

                        <asp:ListItem Text="NE" Value="Nebraska"></asp:ListItem>

                        <asp:ListItem Text="NM" Value="New Mexico"></asp:ListItem>

                        <asp:ListItem Text="NV" Value="Nevada"></asp:ListItem>

                        <asp:ListItem Text="OH" Value="Ohio"></asp:ListItem>

                        <asp:ListItem Text="OK" Value="Oklahoma"></asp:ListItem>

                        <asp:ListItem Text="SC" Value="South Carolina"></asp:ListItem>

                        <asp:ListItem Text="SD" Value="South Dakota"></asp:ListItem>

                        <asp:ListItem Text="TN" Value="Tennessee"></asp:ListItem>

                        <asp:ListItem Text="UT" Value="Utah"></asp:ListItem>

                        <asp:ListItem Text="VA" Value="Virginia"></asp:ListItem>

                        <asp:ListItem Text="WA" Value="Washington"></asp:ListItem>

                        <asp:ListItem Text="WI" Value="Wisconsin"></asp:ListItem>

                        <asp:ListItem Text="WY" Value="Wyoming"></asp:ListItem>

                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="State Required" ControlToValidate="DropDownList2" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                        <tr>
                    <th>Center Number:</th>
                    <td><asp:TextBox ID="centerNumberTextBox" CssClass="form-control" runat="server" Text='<%# Bind("centerNumber") %>' Width="20%" />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Center Required" ControlToValidate="centerNumberTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                        <tr>
                    <th>Request Start Date:</th>
                    <td><asp:TextBox ID="requestStartDateTextBox" CssClass="datepicker form-control" runat="server" Text='<%# Bind("requestStartDate", "{0:MM/dd/yyyy}") %>' Width="20%" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Start Date Required" ControlToValidate="requestStartDateTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                        <tr>
                    <th>Request End Date:</th>
                    <td><asp:TextBox ID="requestEndDateTextBox" CssClass="datepicker form-control" runat="server" Text='<%# Bind("requestEndDate", "{0:MM/dd/yyyy}") %>' Width="20%" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="End Date Required" ControlToValidate="requestEndDateTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                        <tr>
                    <th>Reason For Training:</th>
                    <td>
<%--                        <asp:TextBox ID="reasonForTrainingTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("reasonForTraining") %>' Width="20%" />--%>
                    <asp:DropDownList ID="DropDownList4" runat="server"  SelectedValue='<%# Bind("reasonForTraining") %>' CssClass="form-control" DataValueField="requestorID" DataTextField="title" Width="20%">
                                <asp:ListItem Text=" " Value=""></asp:ListItem>
                                <asp:ListItem Text="Center Manager Course (CMC)" Value="Center Manager Course (CMC)"></asp:ListItem>
                                <asp:ListItem Text="Train the Trainer (T3)" Value="Train the Trainer (T3)"></asp:ListItem>
                                <asp:ListItem Text="Other (Please explain in the Notes box below)" Value="Other (Please explain in the Notes box below)"></asp:ListItem>                                
                            </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Reason Required" ControlToValidate="DropDownList4" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                        <tr>
                    <th>Certification Type:</th>
                    <td>
                        <%--<asp:TextBox ID="certificationTypeTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("certificationType") %>' Width="20%" />--%>
                        <asp:DropDownList ID="DropDownList5" runat="server"  SelectedValue='<%# Bind("certificationType") %>' CssClass="form-control" DataValueField="requestorID" DataTextField="title" Width="20%">
                                <asp:ListItem Text=" " Value=""></asp:ListItem>
                                <asp:ListItem Text="Certified to train by completing Train the Trainer with Corporate Training." Value="Certified to train by completing Train the Trainer with Corporate Training."></asp:ListItem>
                                <asp:ListItem Text="Certified by a DTM who completed Train the Trainer" Value="Certified by a DTM who completed Train the Trainer"></asp:ListItem>                                                               
                            </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Type Required" ControlToValidate="DropDownList5" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                    </td>
                    </tr>
                        <tr>
                    <th>Certification Date:</th>
                    <td><asp:TextBox ID="certificationDateTextBox" CssClass="datepicker form-control" runat="server" Text='<%# Bind("certificationDate", "{0:MM/dd/yyyy}") %>' Width="20%" /></td>
                    </tr>
                        <tr>
                    <th>DTM Name:</th>
                    <td><asp:TextBox ID="dtmNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("dtmName") %>' Width="20%" /></td>
                    </tr>
                        <tr>
                    <th>DTM CertificationDate:</th>
                    <td><asp:TextBox ID="dtmCertificationDateTextBox" CssClass="datepicker form-control" runat="server" Text='<%# Bind("dtmCertificationDate", "{0:MM/dd/yyyy}") %>' Width="20%" /></td>
                    </tr>
                        <tr>
                    <th style="width:20% !important">Notes:</th>
                    <td><asp:TextBox ID="notesTextBox" runat="server" CssClass="form-control" Text='<%# Bind("notes") %>' TextMode="MultiLine" Width="400" Height="100" /></td>
                    </tr>
                        <tr>
                    <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                            </tr>
                        </table>
                </InsertItemTemplate>
               
                <ItemTemplate>  
                     <table class="table table-hover table-responsive table-bordered table-condensed">                  
                        <tr>
                    <th>Requestor Name:</th>
                    <td><asp:Label ID="requestorNameLabel" runat="server" Text='<%# Bind("requestorName") %>' /></td>
                   </tr>
                     <tr>
                    <th>Title:</th>
                    <td><asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' /><td>
                    </tr>
                    <tr>
                    <th>Address:</th>
                    <td><asp:Label ID="Label1" runat="server" Text='<%# Bind("address") %>' /><td>
                    </tr>
                    <tr>
                    <th>Phone:</th>
                    <td><asp:Label ID="Label2" runat="server" Text='<%# Bind("phone") %>' /><td>
                    </tr>
                    <tr>
                    <th>Email Address:</th>
                    <td><asp:Label ID="Label3" runat="server" Text='<%# Bind("emailaddress") %>' /><td>
                    </tr>
                      <tr>
                    <th>State:</th>
                    <td><asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' /></td>
                    </tr>
                         <tr>
                    <th>Center Number:</th>
                    <td><asp:Label ID="centerNumberLabel" runat="server" Text='<%# Bind("centerNumber") %>' /></td>
                    </tr>
                         <tr>
                    <th>Request StartDate:</th>
                    <td><asp:Label ID="requestStartDateLabel" runat="server" Text='<%# Bind("requestStartDate", "{0:MM/dd/yyyy}") %>' /></td>
                    </tr>
                         <tr>
                    <th>Request EndDate:</th>
                    <td><asp:Label ID="requestEndDateLabel" runat="server" Text='<%# Bind("requestEndDate", "{0:MM/dd/yyyy}") %>' /></td>
                    </tr>
                         <tr>
                    <th>Reason For Training:</th>
                    <td><asp:Label ID="reasonForTrainingLabel" runat="server" Text='<%# Bind("reasonForTraining") %>' /></td>
                    </tr>
                         <tr>
                    <th>Certification Type:</th>
                    <td><asp:Label ID="certificationTypeLabel" runat="server" Text='<%# Bind("certificationType") %>' /></td>
                    </tr>
                         <tr>
                    <th>Certification Date:</th>
                    <td><asp:Label ID="certificationDateLabel" runat="server" Text='<%# Bind("certificationDate", "{0:MM/dd/yyyy}") %>' /></td>
                    </tr>
                         <tr>
                    <th>DTM Name:</th>
                    <td><asp:Label ID="dtmNameLabel" runat="server" Text='<%# Bind("dtmName") %>' /></td>
                    </tr>
                         <tr>
                    <th>DTM CertificationDate:</th>
                    <td><asp:Label ID="dtmCertificationDateLabel" runat="server" Text='<%# Bind("dtmCertificationDate", "{0:MM/dd/yyyy}") %>' /></td>
                    </tr>
                         <tr>
                    <th style="width:20% !important;">Notes:</th>
                    <td><asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' Width="600" /></td>
                    </tr>
                         <tr>
                      <td colspan="2">
                        <asp:LinkButton ID="EditButton"
                                        Text="Edit"
                                        CommandName="Edit"
                                        RunAt="server"/>
                        &nbsp;
                        <asp:LinkButton ID="NewButton"
                                        Text="New"
                                        CommandName="New"
                                        RunAt="server"/>
                        &nbsp;
                        <asp:LinkButton ID="DeleteButton"
                                        Text="Delete"
                                        CommandName="Delete"
                                        RunAt="server"/>
                      </td>
                    </tr>
                    </table>
                </ItemTemplate>
                <EmptyDataTemplate>
                   <p>&nbsp;</p>
                    <h4>No Records Found</h4>
                     <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                     &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                     &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                 </EmptyDataTemplate>
                <PagerTemplate>
                  <table class="table table-hover">
                    <tr>
                      <td><asp:LinkButton ID="FirstButton" CommandName="Page" CommandArgument="First" Text="First" RunAt="server"/>&nbsp;&nbsp;</td>
                      <td><asp:LinkButton ID="PrevButton"  CommandName="Page" CommandArgument="Prev"  Text="Prev"  RunAt="server"/>&nbsp;&nbsp;</td>
                      <td><asp:LinkButton ID="NextButton"  CommandName="Page" CommandArgument="Next"  Text="Next"  RunAt="server"/>&nbsp;&nbsp;</td>
                      <td><asp:LinkButton ID="LastButton"  CommandName="Page" CommandArgument="Last"  Text="Last" RunAt="server"/>&nbsp;&nbsp;</td>
                    </tr>
                  </table>
                </PagerTemplate>
            </asp:FormView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrainingRequest %>" SelectCommand="SELECT [requestorName], [title], [address], [phone], [emailaddress], [state], [centerNumber], [requestStartDate], [requestEndDate], [reasonForTraining], [certificationType], [certificationDate], [dtmName], [dtmCertificationDate], [notes], [requestorID] FROM [TrainingRequests] WHERE requestorID = @ID" DeleteCommand="DELETE FROM [TrainingRequests] WHERE [requestorID] = @requestorID" InsertCommand="INSERT INTO [TrainingRequests] ([requestorName], [title], [address], [phone], [emailaddress], [state], [centerNumber], [requestStartDate], [requestEndDate], [reasonForTraining], [certificationType], [certificationDate], [dtmName], [dtmCertificationDate], [notes]) VALUES (@requestorName, @title,  @address, @phone, @emailaddress, @state,  @centerNumber, @requestStartDate, @requestEndDate, @reasonForTraining, @certificationType, @certificationDate, @dtmName, @dtmCertificationDate, @notes); SELECT @ID = Scope_Identity()" UpdateCommand="UPDATE [TrainingRequests] SET [requestorName] = @requestorName, [title] = @title, [address] = @address, [phone] = @phone, [emailaddress] = @emailaddress, [state] = @state, [centerNumber] = @centerNumber, [requestStartDate] = @requestStartDate, [requestEndDate] = @requestEndDate, [reasonForTraining] = @reasonForTraining, [certificationType] = @certificationType, [certificationDate] = @certificationDate, [dtmName] = @dtmName, [dtmCertificationDate] = @dtmCertificationDate, [notes] = @notes WHERE [requestorID] = @requestorID" OnDeleted="SqlDataSource1_Deleted" OnInserted="SqlDataSource1_Inserted" OnUpdated="SqlDataSource1_Updated" >
                <DeleteParameters>
                    <asp:Parameter Name="requestorID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="requestorName" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="emailaddress" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="centerNumber" Type="String" />
                    <asp:Parameter Name="requestStartDate" Type="DateTime" />
                    <asp:Parameter Name="requestEndDate" Type="DateTime" />
                    <asp:Parameter Name="reasonForTraining" Type="String" />
                    <asp:Parameter Name="certificationType" Type="String" />
                    <asp:Parameter Name="certificationDate" Type="DateTime" />
                    <asp:Parameter Name="dtmName" Type="String" />
                    <asp:Parameter Name="dtmCertificationDate" Type="DateTime" />
                    <asp:Parameter Name="notes" Type="String" />
                    <asp:Parameter Direction="Output" Name="ID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="requestorName" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="emailaddress" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="centerNumber" Type="String" />
                    <asp:Parameter Name="requestStartDate" Type="DateTime" />
                    <asp:Parameter Name="requestEndDate" Type="DateTime" />
                    <asp:Parameter Name="reasonForTraining" Type="String" />
                    <asp:Parameter Name="certificationType" Type="String" />
                    <asp:Parameter Name="certificationDate" Type="DateTime" />
                    <asp:Parameter Name="dtmName" Type="String" />
                    <asp:Parameter Name="dtmCertificationDate" Type="DateTime" />
                    <asp:Parameter Name="notes" Type="String" />
                    <asp:Parameter Name="requestorID" Type="Int32" />
                </UpdateParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="ID" DbType = "Int32"  QueryStringField="id" DefaultValue="0" ConvertEmptyStringToNull="True"  />
                </SelectParameters>
            </asp:SqlDataSource>

           
            <br />
             <asp:Label ID="LabelError" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>
        <div class="container-fluid container" style="background-color:linen;">
       <hr class="col-lg-9 col-md-9 col-sm-9 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 hrone"/>
            </div>
       
        <div style="background-color:linen;" class="container-fluid container">
            <h3>Participants</h3>

             <asp:FormView ID="FormView2" runat="server" DataKeyNames="participantID"  DataSourceID="SqlDataSource2" AllowPaging="True">
                 <EditItemTemplate>
                     <table class="table table-hover table-responsive table-bordered table-condensed">
                         <%--<tr>
                     <th>Participant ID:</th>
                     <td><asp:Label ID="participantIDLabel1" runat="server" Text='<%# Eval("participantID") %>' /></td>
                     </tr>--%>
                        <%-- <tr>
                     <th>Requestor ID:</th>
                     <td><asp:TextBox ID="requestorIDTextBox" runat="server" Text='<%# Bind("requestorID") %>' /></td>
                     </tr>--%>
                         <tr>
                     <th>Participant Name:</th>
                     <td><asp:TextBox ID="participantNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("participantName") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Name Required" ControlToValidate="participantNameTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                     </td>
                     </tr>
                         <tr>
                     <th>District Number:</th>
                     <td><asp:TextBox ID="districtNumberTextBox" CssClass="form-control" runat="server" Text='<%# Bind("districtNumber") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="District Required" ControlToValidate="districtNumberTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                     </td>
                     </tr>
                         <tr>
                     <th>Center Number:</th>
                     <td><asp:TextBox ID="centerNumberTextBox" CssClass="form-control" runat="server" Text='<%# Bind("centerNumber") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Center Required" ControlToValidate="centerNumberTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                     </td>
                     </tr>
                         <tr>
                     <th >Job Title:</th>
                     <td>
                         <%--<asp:TextBox ID="jobTitleTextBox" runat="server" Text='<%# Bind("jobTitle") %>' />--%>

                         <asp:DropDownList ID="DropDownList3" runat="server" SelectedValue='<%# Bind("jobTitle") %>' CssClass="form-control" DataValueField="participantID" DataTextField="jobtitle">

                            <asp:ListItem Text=" " Value=" "></asp:ListItem>

                            <asp:ListItem Text="CSR" Value="CSR"></asp:ListItem>

                            <asp:ListItem Text="Assistant Manager" Value="Assistant Manager"></asp:ListItem>

                            <asp:ListItem Text="Center Manager" Value="Center Manager"></asp:ListItem>

                            <asp:ListItem Text="District Training Manager" Value="District Training Manager"></asp:ListItem>

                            <asp:ListItem Text="District Manager" Value="District Manager"></asp:ListItem>

                            <asp:ListItem Text="Regional Manager" Value="Regional Manager"></asp:ListItem>

                            <asp:ListItem Text="Corporate" Value="Corporate"></asp:ListItem>

                        </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Job Title Required" ControlToValidate="DropDownList3" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                     </td>
                     </tr>
                         <tr>
                     <td><asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                     &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                             </tr>
                         </table>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <table class="table table-hover table-responsive table-bordered table-condensed">
                        <%-- <tr>
                     <th>Requestor ID:</th>
                     <td><asp:TextBox ID="requestorIDTextBox" runat="server" Text='<%# Bind("requestorID") %>' /></td>
                     </tr>--%>
                         <tr>
                     <th>Participant Name:</th>
                     <td><asp:TextBox ID="participantNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("participantName") %>' Width="80%" />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Name Required" ControlToValidate="participantNameTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                     </td>
                     </tr>
                         <tr>
                     <th>District Number:</th>
                     <td><asp:TextBox ID="districtNumberTextBox" CssClass="form-control" runat="server" Text='<%# Bind("districtNumber") %>' Width="80%" />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="District Required" ControlToValidate="districtNumberTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                     </td>
                     </tr>
                         <tr>
                     <th>Center Number:</th>
                     <td><asp:TextBox ID="centerNumberTextBox" CssClass="form-control" runat="server" Text='<%# Bind("centerNumber") %>' Width="80%" />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Center Required" ControlToValidate="centerNumberTextBox" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                     </td>
                     </tr>
                         <tr>
                     <th>Job Title:</th>
                     <td>
                         <%--<asp:TextBox ID="jobTitleTextBox" runat="server" Text='<%# Bind("jobTitle") %>' />--%>

                         <asp:DropDownList ID="DropDownList3" runat="server" SelectedValue='<%# Bind("jobTitle") %>' CssClass="form-control" DataValueField="participantID" DataTextField="jobtitle" Width="80%">

                            <asp:ListItem Text=" " Value=" "></asp:ListItem>

                            <asp:ListItem Text="CSR" Value="CSR"></asp:ListItem>

                            <asp:ListItem Text="Assistant Manager" Value="Assistant Manager"></asp:ListItem>

                            <asp:ListItem Text="Center Manager" Value="Center Manager"></asp:ListItem>

                            <asp:ListItem Text="District Training Manager" Value="District Training Manager"></asp:ListItem>

                            <asp:ListItem Text="District Manager" Value="District Manager"></asp:ListItem>

                            <asp:ListItem Text="Regional Manager" Value="Regional Manager"></asp:ListItem>

                            <asp:ListItem Text="Corporate" Value="Corporate"></asp:ListItem>

                        </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Job Title Required" ControlToValidate="DropDownList3" ForeColor="Red" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                     </td>
                     </tr>
                         <tr>
                     <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                     &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                             </tr>
                         </table>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <table class="table table-hover table-responsive table-bordered table-condensed">
                         <%--<tr>
                    <th>Participant ID:</th> 
                     <td><asp:Label ID="participantIDLabel" runat="server" Text='<%# Eval("participantID") %>' /></td>
                     </tr>--%>
                         <tr>
                     <th>Requestor Name:</th>
                     <td><asp:Label ID="requestorIDLabel" runat="server" Text='<%# Bind("requestorName") %>' /></td>
                     </tr>
                         <tr>
                     <th>Participant Name:</th>
                     <td><asp:Label ID="participantNameLabel" runat="server" Text='<%# Bind("participantName") %>' /></td>
                    </tr>
                         <tr>
                     <th>District Number:</th>
                     <td><asp:Label ID="districtNumberLabel" runat="server" Text='<%# Bind("districtNumber") %>' /></td>
                     </tr>
                         <tr>
                     <th>Center Number:</th>
                     <td><asp:Label ID="centerNumberLabel" runat="server" Text='<%# Bind("centerNumber") %>' /></td>
                     </tr>
                         <tr>
                     <th>Job Title:</th>
                     <td><asp:Label ID="jobTitleLabel" runat="server" Text='<%# Bind("jobTitle") %>' /></td>
                     </tr>
                         <tr>
                     <td><asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                     &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                     &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" /></td>
                             </tr>
                         </table>
                 </ItemTemplate>
                 <EmptyDataTemplate>

                     <p>&nbsp;</p>
                    <h4>No Records Found</h4>
                     <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                     &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                     &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                 </EmptyDataTemplate>
                 <PagerTemplate>
                  <table class="table table-hover table-responsive table-bordered table-condensed">
                    <tr>
                      <td style="width:5% !important;"><asp:LinkButton ID="FirstButton" CommandName="Page" CommandArgument="First" Text="First" RunAt="server"/></td>
                      <td style="width:5% !important;"><asp:LinkButton ID="PrevButton"  CommandName="Page" CommandArgument="Prev"  Text="Prev"  RunAt="server"/></td>
                      <td style="width:5% !important;"><asp:LinkButton ID="NextButton"  CommandName="Page" CommandArgument="Next"  Text="Next"  RunAt="server"/></td>
                      <td><asp:LinkButton ID="LastButton"  CommandName="Page" CommandArgument="Last"  Text="Last" RunAt="server"/></td>
                    </tr>
                  </table>
                </PagerTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TrainingRequest %>" DeleteCommand="DELETE FROM [Participants] WHERE [participantID] = @participantID" InsertCommand="INSERT INTO [Participants] ([requestorID], [participantName], [districtNumber], [centerNumber], [jobTitle]) VALUES (@ID, @participantName, @districtNumber, @centerNumber, @jobTitle)" SelectCommand="SELECT [participantID], [Participants].[requestorID], [participantName], [districtNumber], [Participants].[centerNumber], [jobTitle], [requestorName] FROM [Participants], [TrainingRequests] WHERE Participants.requestorID = @ID AND TrainingRequests.requestorID = @ID" UpdateCommand="UPDATE [Participants] SET [participantName] = @participantName, [districtNumber] = @districtNumber, [centerNumber] = @centerNumber, [jobTitle] = @jobTitle WHERE [participantID] = @participantID"  OnUpdated="SqlDataSource2_Updated" OnDeleted="SqlDataSource2_Deleted" >
                <DeleteParameters>
                    <asp:Parameter Name="participantID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="requestorID" Type="Int32" />
                    <asp:QueryStringParameter Name="ID" DbType = "Int32"  QueryStringField="id" DefaultValue="0" ConvertEmptyStringToNull="True"  />
                    <asp:Parameter Name="participantName" Type="String" />
                    <asp:Parameter Name="districtNumber" Type="String" />
                    <asp:Parameter Name="centerNumber" Type="String" />
                    <asp:Parameter Name="jobTitle" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="requestorID" Type="Int32" />
                    <asp:Parameter Name="participantName" Type="String" />
                    <asp:Parameter Name="districtNumber" Type="String" />
                    <asp:Parameter Name="centerNumber" Type="String" />
                    <asp:Parameter Name="jobTitle" Type="String" />
                    <asp:Parameter Name="participantID" Type="Int32" />
                </UpdateParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="ID" DbType = "Int32"  QueryStringField="id" DefaultValue="0" ConvertEmptyStringToNull="True"  />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
       
    </form>
</body>
</html>
