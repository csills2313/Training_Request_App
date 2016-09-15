<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="TrainingMaterialsRequestForm.Confirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/gridview.css" rel="stylesheet" />
    <%--<link href="Content/styles.css" rel="stylesheet" />--%>
</head>
<body>
    <form id="form1" runat="server">
        
    <div style="background-color:linen;" class="container-fluid container" >
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="default"></asp:SiteMapPath>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" SiteMapProvider="default" />
        <div><h2>Your Request Has Been Submitted</h2></div>
    <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="requestorID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            
            <Columns>
               <%-- <asp:BoundField DataField="requestorID" HeaderText="requestorID" SortExpression="requestorID" />--%>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField Text="Details" DataNavigateUrlFields="requestorID" DataNavigateUrlFormatString="~/ConfirmDetails.aspx?id={0}" />
                <asp:BoundField DataField="requestorName" HeaderText="Requestor" SortExpression="requestorName" >
                <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" >
                <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="centerNumber" HeaderText="Center" SortExpression="centerNumber" >
                <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="requestStartDate" HeaderText="Start Date" SortExpression="requestStartDate" DataFormatString="{0:dd/MM/yyyy}">
                <HeaderStyle HorizontalAlign="Left" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" Wrap="True" />
                </asp:BoundField>
                <asp:BoundField DataField="requestEndDate" HeaderText="End Date" SortExpression="requestEndDate" DataFormatString="{0:dd/MM/yyyy}">
                <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                <ItemStyle HorizontalAlign="Left" Wrap="True" />
                </asp:BoundField>
                <asp:BoundField DataField="reasonForTraining" HeaderText="Reason" SortExpression="reasonForTraining" >
                <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                <ItemStyle Wrap="True" />
                </asp:BoundField>
                <asp:BoundField DataField="certificationType" HeaderText="Cert Type" SortExpression="certificationType" >
                <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                <ItemStyle Wrap="True" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Notes" SortExpression="notes">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("notes") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("notes").ToString().Length > 50 ? Eval("notes").ToString().Substring(0, 50) + "..." : Eval("notes") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                    <ItemStyle CssClass="col" Wrap="True" />
                </asp:TemplateField>
            </Columns>
        <SelectedRowStyle BackColor="#D3B0FF" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrainingRequest %>" SelectCommand="SELECT TOP 1 [requestorID], [requestorName], [title], [centerNumber], [requestStartDate], [requestEndDate],[reasonForTraining],[certificationType], [notes] FROM [TrainingRequests] ORDER BY [requestorID] DESC ">
            
        </asp:SqlDataSource>
        
       <hr class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 hrone"/>
            
        <div style="background-color:linen; width: 1086px;" class="page-wrap"><h3>Participants:</h3>
            <asp:GridView ID="GridView2" CssClass="table table-hover" runat="server" Width="738px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <SelectedRowStyle BackColor="#D3B0FF" />
            </asp:GridView>
<%--            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TrainingRequest %>" SelectCommand="SELECT [participantName], [districtNumber], [jobTitle], [requestorID], [centerNumber] FROM [Participants]"></asp:SqlDataSource>--%>
    </div>
    </div>
    </form>
    <footer>
        <div class="content-wrapper">
           
        </div>
    </footer>
</body>
</html>
