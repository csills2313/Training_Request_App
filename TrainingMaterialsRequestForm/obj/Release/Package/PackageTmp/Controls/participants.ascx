<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="participants.ascx.cs" Inherits="TrainingMaterialsRequestForm.Controls.participants" %>

<div style="background-color:linen; width: 1086px;"><h2>Participants:</h2>
            <asp:GridView ID="GridView2" runat="server" Width="738px">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="" Text="Details"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <SelectedRowStyle BackColor="#D3B0FF" />
            </asp:GridView>
<%--            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TrainingRequest %>" SelectCommand="SELECT [participantName], [districtNumber], [jobTitle], [requestorID], [centerNumber] FROM [Participants]"></asp:SqlDataSource>--%>
    </div>