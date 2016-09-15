<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrainingRequestForm.aspx.cs" Inherits="TrainingMaterialsRequestForm.TrainingRequestForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <%--<style type="text/css">
        h1 {
            color: maroon;
            /*margin-left: 140px;*/
        }

        .label {
            margin-left: 2px;
        }

        .labelbr {
            margin-left: 25px;
        }
    </style>--%>
    <style type="text/css">
        .th { 
		background:#5067a5; 
		color: white; 
		font-weight: bold; 
        padding: 6px; 
		border: 1px solid #ccc; 
		text-align: left;
        font-size: 18px; 	
	}
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">

    <p>&nbsp;</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
       
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                        <div class="row th">
                            Name
                        </div>
                        <div class="row">
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" CausesValidation="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name is Required" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>    
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2">
                        <div class="row th">
                            Title
                        </div>
                        <div class="row">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                <asp:ListItem Text=" " Value=""></asp:ListItem>
                                <asp:ListItem Text="Center Manager" Value="Center Manager"></asp:ListItem>
                                <asp:ListItem Text="District Training Manager" Value="District Training Manager"></asp:ListItem>
                                <asp:ListItem Text="Regional Manager" Value="Regional Manager"></asp:ListItem>
                                <asp:ListItem Text="Corporate" Value="Corporate"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Title Required" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2">
                        <div class="row th">State</div>
                        <div class="row">
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">

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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="State Required" ControlToValidate="DropDownList2" ForeColor="Red"></asp:RequiredFieldValidator>
                      </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 ">
                        <div class="row th">Center #</div>
                        <div class="row"><asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" type="Number" MaxLength="5"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Center is Required" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>               
            </div>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                        <div class="row th">
                           Center Address
                        </div>
                        <div class="row">
                            <asp:TextBox ID="Address" CssClass="form-control" runat="server" CausesValidation="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Address Required" ControlToValidate="Address" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2">
                        <div class="row th">
                            Phone
                        </div>
                        <div class="row">
                            <asp:TextBox ID="Phone" CssClass="form-control" runat="server" CausesValidation="True"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Phone number must be correct format. Include dashes" ControlToValidate="Phone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="row th">Email</div>
                        <div class="row">
                        <asp:TextBox ID="Email" CssClass="form-control" runat="server" CausesValidation="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Email is Required to Recieve Confirmation" ControlToValidate="Email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>    
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Correct email format required." ControlToValidate="Email" ForeColor="Red" ValidationExpression="\w+([-+.&apos;]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"    Display="Dynamic"></asp:RegularExpressionValidator>
                      </div>
                    </div>
                           
            </div>
            <div class="row" style="margin-top:16px; margin-bottom:16px;" >
                <div class="col-lg-6 col-lg-offset-1 trainingheading">
                    Requested dates of training (If CMC or T3, must be two consecutive days):
                </div>
            </div>
            <div class="row form-group form-group-sm">
                <div class="col-lg-2 col-md-2 col-sm-3 col-lg-offset-1 control-label">
                    <label class="label">Start (MM/DD/YY):</label>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-3">
                    <asp:TextBox ID="TextBox3" CssClass="datepicker form-control" runat="server" ControlToValidate="TextBox3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Initial Date Required" ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                
                    
               
            </div>
            <div class="row form-group form-group-sm">
                <div class="col-lg-2 col-md-2 col-sm-3 col-lg-offset-1 control-label">
                    <label class="label">End (MM/DD/YY):</label>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-3">
                    <asp:TextBox ID="TextBox4" CssClass="datepicker form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Consecutive Date Required" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                    
            </div>
        </div>   
    <div class="table col-lg-12 col-md-12 col-sm-12">       
        
        
    </div>
    
    
    <hr class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 hrone" />

    <div class="table col-lg-12 col-md-12 col-sm-12" style="background-color:linen;">
        <div class="row">
            <div  class="col-lg-6 col-lg-offset-1">
            <h4>Reason for training (Select one):</h4>
            </div>
            </div>
           <div class="row">
               <div  class="col-lg-6 col-lg-offset-1">
               
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="" TextAlign="Left" CssClass="groupone" />
                    <asp:Label ID="Label7" CssClass="label" runat="server" Text="Center Manager Course (CMC)"></asp:Label>
                    <asp:HiddenField ID="Chk1" Value="Center Manager Course (CMC)" runat="server" />
                </div>
               </div>
               <div class="row">
               <div  class="col-lg-6 col-lg-offset-1">
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="" TextAlign="Left" CssClass="groupone" />
                    <asp:Label ID="Label11" runat="server" CssClass="label" Text="Other (Please explain in the Notes box below)"></asp:Label>
                    <asp:HiddenField ID="Chk4" Value="Other (Please explain in the Notes box below)" runat="server" />
                                   
            </div>
               </div>
            <div class="row">
                <div  class="col-lg-6 col-lg-offset-1">
                <asp:CheckBox ID="CheckBox2" runat="server" Text="" TextAlign="Left" CssClass="groupone" />
                <asp:Label ID="Label8" CssClass="label" runat="server" Text="Train the Trainer (T3)"></asp:Label>
                <asp:HiddenField ID="Chk2" Value="Train the Trainer (T3)" runat="server" />
                    </div>
            </div>
        </div>
        <hr class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 hrone" />
        <div class="container-fluid">
        <div class="table col-lg-12 col-md-12 col-sm-12" style="background-color:linen;">
            <div class="row">
            <div  class="col-lg-6 col-lg-offset-1">
            <h4>Certification (Select one):</h4>
            </div>
                </div>
                <div class="row">
               <div  class="col-lg-12 col-md-12 col-sm-12 col-lg-offset-1">
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="" TextAlign="Left" CssClass="grouptwo" />
                    <asp:Label ID="Label9" CssClass="control-label" runat="server" Text="Check here if you were
certified to train by completing
Train the Trainer with Corporate
Training. Enter the date you were certified."></asp:Label>
                    <asp:HiddenField ID="Chk3" Value="Certified to train by completing Train the Trainer with Corporate Training." runat="server" />
                </div>
                    </div>
                 <div class="row">
               <div  class="col-lg-12 col-md-12 col-sm-12 col-lg-offset-1">
                    <asp:CheckBox ID="CheckBox5" runat="server" Text="" TextAlign="Left" CssClass="grouptwo" />
                    <asp:Label ID="Label12" runat="server" CssClass="control-label" Text="Check here if you were certified by a DTM who
completed Train the Trainer. Enter the date you were certified and the date your trainer was certified."></asp:Label>
                    <asp:HiddenField ID="Chk5" Value="Certified by a DTM who completed Train the Trainer" runat="server" />
                   </div>
                     </div>
                    <br />
                    <br />
                    <br />
            <div class="row form-group form-group-sm">
               <div  class="col-lg-2 col-md-3 col-lg-offset-1 control-label">
                   <asp:Label ID="Label1" runat="server" CssClass="label" Text="Date you were Certified"></asp:Label>
                    
                   </div>
                <div class="col-lg-2 col-md-2">                    
                    <asp:TextBox ID="TextBox5" CssClass="datepicker form-control" type="DateTime" runat="server"></asp:TextBox>
                    </div>
                </div>
            
            
              <div class="row form-group form-group-sm">
               <div  class="col-lg-2 col-md-3 col-lg-offset-1 control-label">
                    <asp:Label ID="Label13" runat="server" CssClass="label" Text="DTM's Name"></asp:Label>
                   </div>
                  <div class="col-lg-2 col-md-2">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                  <div  class="col-lg-2 col-md-3 control-label">
                    <asp:Label ID="Label14" runat="server" CssClass="label" Text="Date DTM was Certified"></asp:Label>
                   </div>
                 <div class="col-lg-2 col-md-2">
                    <asp:TextBox ID="TextBox7" CssClass="datepicker form-control" type="DateTime" runat="server"></asp:TextBox>
                  </div>
                  </div>
             <%--<div class="row form-group form-group-sm">
               
                 </div>--%>

            <p>&nbsp;</p>
            <hr class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 hrone" />



        </div>
        </div>
        <div class="container-fluid">
           
            <div class="row" style="margin-top:1em; margin-bottom:1em;" >
                <div class="col-lg-9 col-md-9 col-sm-9 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                List each participant’s name, district number, center number, and job title. Once the training has
been completed, submit this list again to verify attendance.
                    </div>
            </div>

            <div class="container-fluid">
                <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">

                <div class="row th">
                            Name
                        </div>
                <div class="row">
                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Name Required" ControlToValidate="TextBox8" ForeColor="Red" Display="Dynamic" CssClass="error"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox14" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:TextBox ID="TextBox17" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox20" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox23" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                    <div class="col-lg-2 col-md-2 col-sm-2">
                        <div class="row th">
                            District#
                            </div>
                        <div class="row">
                            <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" type="number" step="any" MaxLength="5"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="District Required" ControlToValidate="TextBox9" ForeColor="Red" Display="Dynamic" CssClass="error"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server" type="number" step="any" MaxLength="5"></asp:TextBox>
                            <asp:TextBox ID="TextBox15" CssClass="form-control" runat="server" type="number" step="any" MaxLength="5"></asp:TextBox>
                            <asp:TextBox ID="TextBox18" CssClass="form-control" runat="server" type="number" step="any" MaxLength="5"></asp:TextBox>
                             <asp:TextBox ID="TextBox21" CssClass="form-control" runat="server" type="number" step="any" MaxLength="5"></asp:TextBox>
                            <asp:TextBox ID="TextBox24" CssClass="form-control" runat="server" type="number" step="any" MaxLength="5"></asp:TextBox>
                            </div>
                        </div>
                     <div class="col-lg-2 col-md-2 col-sm-2">
                         <div class="row th">
                           Center#
                            </div>
                         <div class="row">
                              <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" type="number" MaxLength="5"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Center Required" ControlToValidate="TextBox10" ForeColor="Red" Display="Dynamic" CssClass="error"></asp:RequiredFieldValidator>
                             <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server" type="number" MaxLength="5"></asp:TextBox>
                             <asp:TextBox ID="TextBox16" CssClass="form-control" runat="server" type="number" MaxLength="5"></asp:TextBox>
                             <asp:TextBox ID="TextBox19" CssClass="form-control" runat="server" type="number" MaxLength="5"></asp:TextBox>
                             <asp:TextBox ID="TextBox22" CssClass="form-control" runat="server" type="number" MaxLength="5"></asp:TextBox>
                             <asp:TextBox ID="TextBox25" CssClass="form-control" runat="server" type="number" MaxLength="5"></asp:TextBox>
                             </div>
                         </div>
                    <div class="col-lg-2 col-md-2 col-sm-2">
                        <div class="row th">
                           Job Title
                            </div>
                        <div class="row">
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">

                            <asp:ListItem Text=" " Value=" "></asp:ListItem>

                            <asp:ListItem Text="CSR" Value="CSR"></asp:ListItem>

                            <asp:ListItem Text="Assistant Manager" Value="Assistant Manager"></asp:ListItem>

                            <asp:ListItem Text="Center Manager" Value="Center Manager"></asp:ListItem>

                            <asp:ListItem Text="District Training Manager" Value="District Training Manager"></asp:ListItem>

                            <asp:ListItem Text="District Manager" Value="District Manager"></asp:ListItem>

                            <asp:ListItem Text="Regional Manager" Value="Regional Manager"></asp:ListItem>

                            <asp:ListItem Text="Corporate" Value="Corporate"></asp:ListItem>

                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Title Required" ControlToValidate="DropDownList3" ForeColor="Red" Display="Dynamic" CssClass="error"></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">

                            <asp:ListItem Text=" " Value=" "></asp:ListItem>

                            <asp:ListItem Text="CSR" Value="CSR"></asp:ListItem>

                            <asp:ListItem Text="Assistant Manager" Value="Assistant Manager"></asp:ListItem>

                            <asp:ListItem Text="Center Manager" Value="Center Manager"></asp:ListItem>

                            <asp:ListItem Text="District Training Manager" Value="District Training Manager"></asp:ListItem>

                            <asp:ListItem Text="District Manager" Value="District Manager"></asp:ListItem>

                            <asp:ListItem Text="Regional Manager" Value="Regional Manager"></asp:ListItem>

                            <asp:ListItem Text="Corporate" Value="Corporate"></asp:ListItem>


                        </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">

                            <asp:ListItem Text=" " Value=" "></asp:ListItem>

                            <asp:ListItem Text="CSR" Value="CSR"></asp:ListItem>

                            <asp:ListItem Text="Assistant Manager" Value="Assistant Manager"></asp:ListItem>

                            <asp:ListItem Text="Center Manager" Value="Center Manager"></asp:ListItem>

                            <asp:ListItem Text="District Training Manager" Value="District Training Manager"></asp:ListItem>

                            <asp:ListItem Text="District Manager" Value="District Manager"></asp:ListItem>

                            <asp:ListItem Text="Regional Manager" Value="Regional Manager"></asp:ListItem>

                            <asp:ListItem Text="Corporate" Value="Corporate"></asp:ListItem>


                        </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control">

                            <asp:ListItem Text=" " Value=" "></asp:ListItem>

                            <asp:ListItem Text="CSR" Value="CSR"></asp:ListItem>

                            <asp:ListItem Text="Assistant Manager" Value="Assistant Manager"></asp:ListItem>

                            <asp:ListItem Text="Center Manager" Value="Center Manager"></asp:ListItem>

                            <asp:ListItem Text="District Training Manager" Value="District Training Manager"></asp:ListItem>

                            <asp:ListItem Text="District Manager" Value="District Manager"></asp:ListItem>

                            <asp:ListItem Text="Regional Manager" Value="Regional Manager"></asp:ListItem>

                            <asp:ListItem Text="Corporate" Value="Corporate"></asp:ListItem>


                        </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList7" runat="server" CssClass="form-control">

                            <asp:ListItem Text=" " Value=" "></asp:ListItem>

                            <asp:ListItem Text="CSR" Value="CSR"></asp:ListItem>

                            <asp:ListItem Text="Assistant Manager" Value="Assistant Manager"></asp:ListItem>

                            <asp:ListItem Text="Center Manager" Value="Center Manager"></asp:ListItem>

                            <asp:ListItem Text="District Training Manager" Value="District Training Manager"></asp:ListItem>

                            <asp:ListItem Text="District Manager" Value="District Manager"></asp:ListItem>

                            <asp:ListItem Text="Regional Manager" Value="Regional Manager"></asp:ListItem>

                            <asp:ListItem Text="Corporate" Value="Corporate"></asp:ListItem>


                        </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList8" runat="server" CssClass="form-control">

                            <asp:ListItem Text=" " Value=" "></asp:ListItem>

                            <asp:ListItem Text="CSR" Value="CSR"></asp:ListItem>

                            <asp:ListItem Text="Assistant Manager" Value="Assistant Manager"></asp:ListItem>

                            <asp:ListItem Text="Center Manager" Value="Center Manager"></asp:ListItem>

                            <asp:ListItem Text="District Training Manager" Value="District Training Manager"></asp:ListItem>

                            <asp:ListItem Text="District Manager" Value="District Manager"></asp:ListItem>

                            <asp:ListItem Text="Regional Manager" Value="Regional Manager"></asp:ListItem>

                            <asp:ListItem Text="Corporate" Value="Corporate"></asp:ListItem>


                        </asp:DropDownList>
                            </div>
                        </div>

                    </div>

                </div>
            
            <br />
            <div class="container-fluid">
             <div class="row" style="margin-top:1em; margin-bottom:1em;" >
                <div class="col-lg-6 col-lg-offset-1">
                    <asp:Label ID="Label15" runat="server" CssClass="trainingheading" Text="Notes"></asp:Label><br />
                    Explain here anything else we need to know to process your training request.
                </div>
            </div>
            
            <div class="col-lg-12 col-md-12 col-sm-12 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                <div class="row">
            <textarea rows="20" cols="20" id="TextArea1" runat="server" style="overflow: auto"></textarea>
                    </div>
                </div>
                
            <div class="row" style="margin-top:1em; margin-bottom:1em;">
                <div class="col-lg-12 col-md-12 col-sm-12 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                    <br />
                Please allow 3 days for a response. Contact your training liaison with any questions. Click SUBMIT to save a copy of this form and<br />
                email it to training@checkintocash.com
                    </div>
            </div>
           <div class="col-lg-12 col-md-12 col-sm-12 col-lg-offset-5 col-md-offset-5 col-sm-offset-5">
                <asp:Button ID="Button1" runat="server" Text="Clear" OnClick="Button1_Click" CausesValidation="False" /><asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
            </div>            
                 <div>&nbsp;</div>
                 <div>&nbsp;</div>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />--%>
        </div>
    </div>
            
</asp:Content>
