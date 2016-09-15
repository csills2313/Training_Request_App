using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminView
{
    public partial class Results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
        }
        
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            DataKey myVal = GridView1.SelectedDataKey;

            LabelError.Text = string.Empty;
            DataTable tbl = new DataTable();
            //tbl.Columns.Remove("col.participantID");
            string cmdStr = @"
SELECT requestorName as Requestor, participantID, participantName as Participant, districtNumber as [District No], Participants.centerNumber as Center, jobTitle as [Job Title] 
FROM Participants
JOIN TrainingRequests as Requests on Participants.RequestorID = Requests.RequestorID
WHERE Requests.requestorID  = @CshID";

            SqlCommand sqlCmd = new SqlCommand(cmdStr);
            sqlCmd.Parameters.AddWithValue("@CshID", myVal.Value);

            // Open a connection
            SqlConnection cnn = new SqlConnection(@"server=localhost\SQLEXPRESS;database=TrainingRequest;Integrated Security=SSPI; MultipleActiveResultSets=True");
           
                cnn.Open();
                sqlCmd.Connection=cnn;
                tbl.Load(sqlCmd.ExecuteReader());
                
            
            

            // Retrieve DataTable using SqlCommand sqlCmd

            // Assign DataTable as GridView2's DataSource
            GridView2.DataSource = tbl;
            GridView2.DataBind();
            cnn.Close();
        }
        protected void SqlDataSource1_Deleted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true; //handling the exception

                LabelError.Text = "Record Deletion Failed. You have existing Particpants for this request.</br> Select any item to clear error.";
            }
            else LabelError.Text = string.Empty;
        }
        private void FillGrid()
        {
            DataKey myVal = GridView1.SelectedDataKey;
            DataTable tbl = new DataTable();
            tbl.Columns.Remove("participantID");
            string cmdStr = @"
SELECT requestorName as Requestor, participantID, participantName as Participant, districtNumber as [District No], Participants.centerNumber as Center, jobTitle as [Job Title] 
FROM Participants
JOIN TrainingRequests as Requests on Participants.RequestorID = Requests.RequestorID
WHERE Requests.requestorID  = @CshID";

            SqlCommand sqlCmd = new SqlCommand(cmdStr);
            sqlCmd.Parameters.AddWithValue("@CshID", myVal.Value);

            // Open a connection
            SqlConnection cnn = new SqlConnection(@"server=localhost\SQLEXPRESS;database=TrainingRequest;Integrated Security=SSPI; MultipleActiveResultSets=True");

            cnn.Open();
            sqlCmd.Connection = cnn;
            tbl.Load(sqlCmd.ExecuteReader());




            // Retrieve DataTable using SqlCommand sqlCmd

            // Assign DataTable as GridView2's DataSource
            GridView2.DataSource = tbl;
            GridView2.DataBind();            
            cnn.Close();
        }
        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int catid = int.Parse(GridView2.DataKeys[e.RowIndex].Value.ToString());


            SqlConnection cnn = new SqlConnection(@"server=localhost\SQLEXPRESS;database=TrainingRequest;Integrated Security=SSPI; MultipleActiveResultSets=True");

            SqlDataAdapter da = new SqlDataAdapter("", cnn);
            cnn.Open();
            da.DeleteCommand = new SqlCommand("DELETE FROM Participants WHERE Participants.participantID ="+catid, cnn);

            // Open a connection


            da.DeleteCommand.ExecuteNonQuery();
            FillGrid();
            //GridView2.DataBind();
            cnn.Close();
        
        }
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {

            //int catid = int.Parse(GridView2.DataKeys[0].Value.ToString());
            
           
            //SqlConnection cnn = new SqlConnection(@"server=localhost\SQLEXPRESS;database=TrainingRequest;Integrated Security=SSPI; MultipleActiveResultSets=True");
            
            //SqlDataAdapter da = new SqlDataAdapter("", cnn);
            //cnn.Open();
            //da.DeleteCommand = new SqlCommand("DELETE FROM Participants WHERE Participants.participantID ="+catid, cnn);
           
            //// Open a connection


            //da.DeleteCommand.ExecuteNonQuery();
            //FillGrid();
            ////GridView2.DataBind();
            //cnn.Close();
           
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelError.Text = string.Empty;
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (tbl.Rows.Count > 0)
            if (e.Row.Cells.Count > 1 )
            {
                e.Row.Cells[2].Visible = false;
            }                     
              
            }
        }
             
   }
