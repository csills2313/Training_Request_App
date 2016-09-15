using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingMaterialsRequestForm
{
    public partial class ConfirmDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //FormView2.Visible = false;
            Page.MaintainScrollPositionOnPostBack = true;
            
        }
        protected void SqlDataSource1_Deleted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true; //handling the exception

                LabelError.Text = "Record Deletion Failed. You have existing Particpants for this request.</br> Select any item to clear error.";
            }
            else {
                e.ExceptionHandled = false;
                LabelError.Text = string.Empty;
            }
        }

       
        

        protected void FormView1_PageIndexChanged(object sender, EventArgs e)
        {
            LabelError.Text = string.Empty;
        }

        protected void FormView1_DataBound(object sender, EventArgs e)
        {
            
                if (FormView1.DataItemCount == 0)
                    FormView2.Visible = false;
                else
                    FormView2.Visible = true;
           
        }

        protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true; //handling the exception                
                LabelError.Text = "Record Creation Failed. Please fill out all required fields.";
                FormView1.ChangeMode(FormViewMode.Insert);
            }
            else
            { 
                e.ExceptionHandled = false;
                LabelError.Text = string.Empty;
                Int32 ID = (Int32)e.Command.Parameters["@ID"].Value;
                Response.Redirect("~/RequestDetails.aspx?ID=" + ID.ToString());
            }

        }

        protected void SqlDataSource1_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true; //handling the exception                
                LabelError.Text = "Record Update Failed. Please fill out all required fields.";
                FormView1.ChangeMode(FormViewMode.Edit);
            }
            else
            {
                e.ExceptionHandled = false;
                LabelError.Text = string.Empty;
            }
        }

        protected void SqlDataSource2_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true; //handling the exception                
                LabelError.Text = "Record Update Failed. Please fill out all required fields.";
                FormView1.ChangeMode(FormViewMode.Edit);
            }
            else
            {
                e.ExceptionHandled = false;
                LabelError.Text = string.Empty;
            }
        }

        protected void SqlDataSource2_Deleted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true; //handling the exception

                LabelError.Text = "Record Deletion Failed. You have existing Particpants for this request.</br> Select any item to clear error.";
            }
            else
            {
                e.ExceptionHandled = false;
                LabelError.Text = string.Empty;
            }
        }

        protected void SqlDataSource2_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true; //handling the exception

                LabelError.Text = "No Records Found";
            }
            else
            {
                e.ExceptionHandled = false;
                LabelError.Text = string.Empty;
            }

        }

        protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true; //handling the exception

                LabelError.Text = "No Records Found";
            }
            else
            {
                e.ExceptionHandled = false;
                LabelError.Text = string.Empty;
            }
        }

        
        
    }
}