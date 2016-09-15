<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="TrainingMaterialsRequestForm.Results" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Results Page</title>
    <link href="Content/Site.css" rel="stylesheet" />
    <link href="Content/styles.css" rel="stylesheet" />
</head>    
<body>
    <div>
<h1>Training Materials Request Result.</h1>

    </div>
    
    <form id="form1" runat="server">
    <div id="body" style="background-color:linen;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="requestorID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            
            <Columns>
               <%-- <asp:BoundField DataField="requestorID" HeaderText="requestorID" SortExpression="requestorID" />--%>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="RequestDetails.aspx" Text="Details"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
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
                <asp:BoundField DataField="requestStartDate" HeaderText="StartDate" SortExpression="requestStartDate" >
                <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="requestEndDate" HeaderText="EndDate" SortExpression="requestEndDate" >
                <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="reasonForTraining" HeaderText="Reason" SortExpression="reasonForTraining" >
                <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                <ItemStyle Wrap="True" />
                </asp:BoundField>
                <asp:BoundField DataField="certificationType" HeaderText="Cert Type" SortExpression="certificationType" >
                <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                <ItemStyle Wrap="True" />
                </asp:BoundField>
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" >
                <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                <ItemStyle Wrap="True" CssClass="col"/>
                </asp:BoundField>                
            </Columns>            
            <SelectedRowStyle BackColor="#D3B0FF" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrainingRequest %>" SelectCommand="SELECT [requestorID], [requestorName], [title], [centerNumber], [requestStartDate], [requestEndDate],[reasonForTraining],[certificationType], [notes] FROM [TrainingRequests]"></asp:SqlDataSource>
        
       <div style="background-color:linen; width: 1086px;"><h2>Participants:</h2>
            <asp:GridView ID="GridView2" runat="server" Width="738px">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="" Text="Details"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                </Columns>
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
