<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminView.aspx.cs" Inherits="AdminView.Results" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Results Page</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/gridview.css" rel="stylesheet" />
    <%--<link href="Content/styles.css" rel="stylesheet" />--%>
</head>    
<body>
    <div></div>
    <br />
<h2 class="container-fluid container">Training Materials Request Result.</h2>    
    <div style="background-color:linen;" class="container-fluid container"><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="admin"></asp:SiteMapPath>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" SiteMapProvider="admin" /></div>
    <form id="form1" runat="server">
    <div id="body" style="background-color:linen;" class="container-fluid container">
        <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="requestorID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" EmptyDataText="No Records Found" AllowPaging="True">
            
            <Columns>
                <asp:CommandField ShowSelectButton="True" ShowDeleteButton="False" ShowEditButton="False" />
               <%-- <asp:BoundField DataField="requestorID" HeaderText="requestorID" SortExpression="requestorID" />--%>
                <asp:HyperLinkField DataNavigateUrlFields="requestorID" DataNavigateUrlFormatString="~/RequestDetails.aspx?id={0}" Text="Details" />
                <asp:BoundField DataField="requestorName" HeaderText="Requestor" SortExpression="requestorName" >
                <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" >
                <HeaderStyle HorizontalAlign="Right" Wrap="False" />
                <ItemStyle HorizontalAlign="Center" Wrap="True" />
                </asp:BoundField>
                <asp:BoundField DataField="centerNumber" HeaderText="Center" SortExpression="centerNumber" >
                <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="requestStartDate" HeaderText="Start Date" SortExpression="requestStartDate" DataFormatString="{0:MM/dd/yyyy}" >
                <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" Wrap="True" />
                </asp:BoundField>
                <asp:BoundField DataField="requestEndDate" HeaderText="End Date" SortExpression="requestEndDate" DataFormatString="{0:MM/dd/yyyy}" >
                <HeaderStyle HorizontalAlign="Center" Wrap="False" />
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
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("notes") %>' TextMode="MultiLine" Width="300" Height="200"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("notes").ToString().Length > 50 ? Eval("notes").ToString().Substring(0, 50) + "..." : Eval("notes") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                    <ItemStyle CssClass="col" Wrap="True" />
                </asp:TemplateField>
            </Columns>
            <HeaderStyle HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D3B0FF" />
            <PagerSettings FirstPageText="&amp;lt;&amp;lt;First" LastPageText="&amp;gt;&amp;gt;Last" Mode="NextPreviousFirstLast" NextPageText="&amp;gt;Next" PreviousPageText="&amp;lt;Prev" />
            <PagerStyle CssClass="numericpager" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnDeleted="SqlDataSource1_Deleted" ConnectionString="<%$ ConnectionStrings:TrainingRequest %>"
             DeleteCommand="DELETE FROM [TrainingRequests] WHERE [requestorID] = @requestorID"
             SelectCommand="SELECT [requestorID], [requestorName], [title], [state], [centerNumber], [requestStartDate], [requestEndDate], [reasonForTraining], [certificationType], [certificationDate], [dtmName], [dtmCertificationDate], [notes] FROM [TrainingRequests]" OnSelecting="SqlDataSource1_Selecting" InsertCommand="INSERT INTO [TrainingRequests] ([requestorName], [title], [state], [centerNumber], [requestStartDate], [requestEndDate], [reasonForTraining], [certificationType], [certificationDate], [dtmName], [dtmCertificationDate], [notes]) VALUES (@requestorName, @title, @state, @centerNumber, @requestStartDate, @requestEndDate, @reasonForTraining, @certificationType, @certificationDate, @dtmName, @dtmCertificationDate, @notes)" UpdateCommand="UPDATE [TrainingRequests] SET [requestorName] = @requestorName, [title] = @title, [state] = @state, [centerNumber] = @centerNumber, [requestStartDate] = @requestStartDate, [requestEndDate] = @requestEndDate, [reasonForTraining] = @reasonForTraining, [certificationType] = @certificationType, [certificationDate] = @certificationDate, [dtmName] = @dtmName, [dtmCertificationDate] = @dtmCertificationDate, [notes] = @notes WHERE [requestorID] = @requestorID">
            <DeleteParameters>
        <asp:Parameter Name="requestorID" Type="Int32" />
    </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="requestorName" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="centerNumber" Type="Int32" />
                <asp:Parameter Name="requestStartDate" Type="DateTime" />
                <asp:Parameter Name="requestEndDate" Type="DateTime" />
                <asp:Parameter Name="reasonForTraining" Type="String" />
                <asp:Parameter Name="certificationType" Type="String" />
                <asp:Parameter Name="certificationDate" Type="DateTime" />
                <asp:Parameter Name="dtmName" Type="String" />
                <asp:Parameter Name="dtmCertificationDate" Type="DateTime" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="requestorName" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="centerNumber" Type="Int32" />
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
        </asp:SqlDataSource>
        <asp:Label ID="LabelError" ForeColor="Red" Font-Bold="true" runat="server" Text=""></asp:Label>
        
       <hr class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 hrone"/>
           
    <div style="background-color:linen; width: 1086px;" class="page-wrap"><h3>Participants:</h3>
            <asp:GridView ID="GridView2" CssClass="table table-hover" runat="server" OnRowDeleting="GridView2_RowDeleting" Width="784px" DataKeyNames="participantID" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" EmptyDataText="No Records found" OnRowDataBound="GridView2_RowDataBound"  >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <%--<asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete" CausesValidation="False"  Text="Delete" OnClick="LinkButton1_Click1"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                </Columns>
                <HeaderStyle HorizontalAlign="Center" />
                <RowStyle HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D3B0FF" />
            </asp:GridView>
<%--            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TrainingRequest %>" SelectCommand="SELECT [participantName], [districtNumber], [jobTitle], [requestorID], [centerNumber] FROM [Participants]"></asp:SqlDataSource>--%>
    </div>
    </div>
       
    <div>
    
    </div>
    </form>
    <footer>
        <div class="content-wrapper">
           
        </div>
    </footer>
</body>
</html>
