<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="TrainingMaterialsRequestForm.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Request Details</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Request Details</h1>
        </div>
        <hr style="width: 1459px" />

        <br />
        <div style="float:left;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="requestorID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="1034px" CellSpacing="4">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
               <%-- <asp:BoundField DataField="requestorID" HeaderText="requestorID" SortExpression="requestorID" />--%>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle Wrap="False" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Requestor" SortExpression="requestorName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("requestorName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("requestorName") %>' Font-Bold="True"></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                    <ItemStyle HorizontalAlign="Left" Wrap="True" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Title" SortExpression="title">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("title") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                    <ItemStyle HorizontalAlign="Left" Wrap="True" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Center" SortExpression="centerNumber">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("centerNumber") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("centerNumber") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                    <ItemStyle HorizontalAlign="Left" Wrap="True" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="StartDate" SortExpression="requestStartDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("requestStartDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("requestStartDate") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                    <ItemStyle HorizontalAlign="Left" Wrap="True" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EndDate" SortExpression="requestEndDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("requestEndDate") %>' TextMode="MultiLine"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("requestEndDate") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                    <ItemStyle HorizontalAlign="Left" Wrap="True" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Reason" SortExpression="reasonForTraining">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("reasonForTraining") %>' Height="80" Width="100" TextMode="MultiLine"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("reasonForTraining") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                    <ItemStyle Wrap="True" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cert Type" SortExpression="certificationType">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("certificationType") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("certificationType") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                    <ItemStyle Wrap="True" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Notes" SortExpression="notes">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("notes") %>' Height="300" Width="300" TextMode="MultiLine"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("notes") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                    <ItemStyle CssClass="col" Width="300px" Wrap="True" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrainingRequest %>" SelectCommand="SELECT [requestorID], [requestorName], [title], [centerNumber], [requestStartDate], [requestEndDate], [reasonForTraining], [certificationType], [notes], [state], [certificationDate], [dtmName], [dtmCertificationDate] FROM [TrainingRequests]" DeleteCommand="DELETE FROM [TrainingRequests] WHERE [requestorID] = @requestorID" InsertCommand="INSERT INTO [TrainingRequests] ([requestorName], [title], [centerNumber], [requestStartDate], [requestEndDate], [reasonForTraining], [certificationType], [notes], [state], [certificationDate], [dtmName], [dtmCertificationDate]) VALUES (@requestorName, @title, @centerNumber, @requestStartDate, @requestEndDate, @reasonForTraining, @certificationType, @notes, @state, @certificationDate, @dtmName, @dtmCertificationDate)" UpdateCommand="UPDATE [TrainingRequests] SET [requestorName] = @requestorName, [title] = @title, [centerNumber] = @centerNumber, [requestStartDate] = @requestStartDate, [requestEndDate] = @requestEndDate, [reasonForTraining] = @reasonForTraining, [certificationType] = @certificationType, [notes] = @notes, [state] = @state, [certificationDate] = @certificationDate, [dtmName] = @dtmName, [dtmCertificationDate] = @dtmCertificationDate WHERE [requestorID] = @requestorID">
                    <DeleteParameters>
                        <asp:Parameter Name="requestorID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="requestorName" Type="String" />
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter Name="centerNumber" Type="Int32" />
                        <asp:Parameter Name="requestStartDate" Type="DateTime" />
                        <asp:Parameter Name="requestEndDate" Type="DateTime" />
                        <asp:Parameter Name="reasonForTraining" Type="String" />
                        <asp:Parameter Name="certificationType" Type="String" />
                        <asp:Parameter Name="notes" Type="String" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="certificationDate" Type="DateTime" />
                        <asp:Parameter Name="dtmName" Type="String" />
                        <asp:Parameter Name="dtmCertificationDate" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="requestorName" Type="String" />
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter Name="centerNumber" Type="Int32" />
                        <asp:Parameter Name="requestStartDate" Type="DateTime" />
                        <asp:Parameter Name="requestEndDate" Type="DateTime" />
                        <asp:Parameter Name="reasonForTraining" Type="String" />
                        <asp:Parameter Name="certificationType" Type="String" />
                        <asp:Parameter Name="notes" Type="String" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="certificationDate" Type="DateTime" />
                        <asp:Parameter Name="dtmName" Type="String" />
                        <asp:Parameter Name="dtmCertificationDate" Type="DateTime" />
                        <asp:Parameter Name="requestorID" Type="Int32" />
                    </UpdateParameters>
        </asp:SqlDataSource>
        </div>        

    
    </form>
</body>
</html>
