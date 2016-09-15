using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingMaterialsRequestForm
{
    public partial class Confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            DataKey myVal = GridView1.SelectedDataKey;


            DataTable tbl = new DataTable();
            string cmdStr = @"
SELECT requestorName as Requestor, participantName as Participant, districtNumber as [District No], Participants.centerNumber as Center, jobTitle as [Job Title] 
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



    }
}