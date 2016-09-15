using Spire.Pdf;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrainingMaterialsRequestForm
{
    public partial class TrainingRequestForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {   
            TextBox1.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
            TextBox17.Text = "";
            TextBox18.Text = "";
            TextBox19.Text = "";
            TextBox2.Text = "";
            TextBox20.Text = "";
            TextBox21.Text = "";
            TextBox22.Text = "";
            TextBox23.Text = "";
            TextBox24.Text = "";
            TextBox25.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
            CheckBox5.Checked = false;
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
            DropDownList4.SelectedIndex = 0;
            DropDownList5.SelectedIndex = 0;
            DropDownList6.SelectedIndex = 0;
            DropDownList7.SelectedIndex = 0;
            DropDownList8.SelectedIndex = 0;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            foo();            
            
                        
        }

        private void createPDF() {

            PdfDocument doc = new PdfDocument();
            //doc.PageScaling = PdfPrintPageScaling.FitSize;
            PdfPageSettings page = new PdfPageSettings
            {
                Height = 2000, //set the page size height
                Width = 2600,  //set the page size width
                //Rotate = PdfPageRotateAngle.RotateAngle90   //rotate page
                
            };

            String url = "http://localhost";

            Thread thread = new Thread(() =>

            { doc.LoadFromHTML(url, false, true, true, page); });

            thread.SetApartmentState(ApartmentState.STA);

            thread.Start();

            thread.Join();

            //Save pdf file.
            
            doc.SaveToFile(@"C:\pdf\sample.pdf");

            doc.Close();

            //Launching the Pdf file.

            System.Diagnostics.Process.Start(@"C:\pdf\sample.pdf");
        
        }

        private void foo()
        {
            //SqlCommand cmd = null;
            string requestorName = TextBox1.Text;
            string address = Address.Text;
            string phone = Phone.Text;
            string email = Email.Text;
            string title = DropDownList1.Text;
            string state = DropDownList2.Text;
            string centerNumber = TextBox2.Text;
            DateTime requestStartDate = Convert.ToDateTime(TextBox3.Text);
            DateTime requestEndDate = Convert.ToDateTime(TextBox4.Text);
            string reasonForTraining = "";
            if (CheckBox1.Checked)
            {
                reasonForTraining = Chk1.Value;
            }
            if (CheckBox2.Checked)
            {
                reasonForTraining = Chk2.Value;
            }
            if (CheckBox4.Checked)
            {
                reasonForTraining = Chk4.Value;
            }
            string certificationType = "";
            if (CheckBox3.Checked)
            {
                certificationType = Chk3.Value;
            }
            if (CheckBox5.Checked)
            {
                certificationType = Chk5.Value;
            }

            DateTime? certificationDate = null;

            if (TextBox5.Text != "")
            {
                certificationDate = Convert.ToDateTime(TextBox5.Text);
            }

            else
            {
                certificationDate = null;
            }
            string dtmName = TextBox6.Text;

            DateTime? dtmCertificationDate = null;
            if (TextBox7.Text != "")
            {
                dtmCertificationDate = Convert.ToDateTime(TextBox7.Text);
            }
            else
            {
                dtmCertificationDate = null;
            }
            string notes = TextArea1.InnerText;

            string participantName = TextBox8.Text;
            string districtNumber =TextBox9.Text;
            string centernumber =TextBox10.Text;
            string jobTitle = DropDownList3.Text;

            string participantName3 = TextBox11.Text;
            string districtNumber3 = TextBox12.Text;
            string centernumber3 = TextBox13.Text;
            string jobTitle3= DropDownList4.Text;

            string participantName4 = TextBox14.Text;
            string districtNumber4 = TextBox15.Text;
            string centernumber4 = TextBox16.Text;
            string jobTitle4 = DropDownList5.Text;

            string participantName5 = TextBox17.Text;
            string districtNumber5 = TextBox18.Text;
            string centernumber5 = TextBox19.Text;
            string jobTitle5 = DropDownList6.Text;

            string participantName6 = TextBox20.Text;
            string districtNumber6 = TextBox21.Text;
            string centernumber6 = TextBox22.Text;
            string jobTitle6 = DropDownList7.Text;

            string participantName7 = TextBox23.Text;
            string districtNumber7 = TextBox24.Text;
            string centernumber7 = TextBox25.Text;
            string jobTitle7 = DropDownList8.Text;


            using (SqlConnection cnn = new SqlConnection(@"server=localhost\SQLEXPRESS;database=TrainingRequest;Integrated Security=SSPI; MultipleActiveResultSets=True"))
            {
                var cmdStr = @"
Insert Into TrainingRequests 
(requestorName, title, address, phone, emailaddress, state, centerNumber, requestStartDate, requestEndDate, reasonForTraining, certificationType, certificationDate, dtmName, dtmCertificationDate, notes)
VALUES (
    @requestorName
  , @title
  , @address
  , @phone
  , @email
  , @state
  , @centerNumber
  , @requestStartDate
  , @requestEndDate
  , @reasonForTraining
  , @certificationType
  , @certificationDate
  , @dtmName
  , @dtmCertificationDate
  , @notes)

DECLARE @insertedid INT 
SET @insertedid = SCOPE_IDENTITY()
SET @ID = SCOPE_IDENTITY()

IF (LEN(@participantName) > 0 AND LEN(@districtNumber) > 0 AND LEN(@centerNumber2) > 0 AND LEN(@jobTitle) > 0)
BEGIN
Insert Into Participants
(requestorID, participantName, districtNumber, centerNumber, jobTitle)
VALUES (
    @insertedid
  , @participantName
  , @districtNumber
  , @centerNumber2
  , @jobTitle)
END
IF (LEN(@participantName3) > 0 AND LEN(@districtNumber3) > 0 AND LEN(@centerNumber3) > 0 AND LEN(@jobTitle3) > 0)
BEGIN
Insert Into Participants
(requestorID, participantName, districtNumber, centerNumber, jobTitle)
VALUES (
    @insertedid
  , @participantName3
  , @districtNumber3
  , @centerNumber3
  , @jobTitle3)
END
IF (LEN(@participantName4) > 0 AND LEN(@districtNumber4) > 0 AND LEN(@centerNumber4) > 0 AND LEN(@jobTitle4) > 0)
BEGIN
Insert Into Participants
(requestorID, participantName, districtNumber, centerNumber, jobTitle)
VALUES (
    @insertedid
  , @participantName4
  , @districtNumber4
  , @centerNumber4
  , @jobTitle4)
END
IF (LEN(@participantName5) > 0 AND LEN(@districtNumber5) > 0 AND LEN(@centerNumber5) > 0 AND LEN(@jobTitle5) > 0)
BEGIN
Insert Into Participants
(requestorID, participantName, districtNumber, centerNumber, jobTitle)
VALUES (
    @insertedid
  , @participantName5
  , @districtNumber5
  , @centerNumber5
  , @jobTitle5)
END
IF (LEN(@participantName6) > 0 AND LEN(@districtNumber6) > 0 AND LEN(@centerNumber6) > 0 AND LEN(@jobTitle6) > 0)
BEGIN
Insert Into Participants
(requestorID, participantName, districtNumber, centerNumber, jobTitle)
VALUES (
    @insertedid
  , @participantName6
  , @districtNumber6
  , @centerNumber6
  , @jobTitle6)
END
IF (LEN(@participantName7) > 0 AND LEN(@districtNumber7) > 0 AND LEN(@centerNumber7) > 0 AND LEN(@jobTitle7) > 0)
BEGIN
Insert Into Participants
(requestorID, participantName, districtNumber, centerNumber, jobTitle)
VALUES (
    @insertedid
  , @participantName7
  , @districtNumber7
  , @centerNumber7
  , @jobTitle7)
END
";
                //cnn.Open();
                using (SqlCommand cmd = new SqlCommand(cmdStr, cnn))
                {
                    cmd.Parameters.AddWithValue("@requestorName", requestorName);
                    cmd.Parameters.AddWithValue("@title", title);
                    cmd.Parameters.AddWithValue("@address", address);
                    cmd.Parameters.AddWithValue("@phone", phone);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@state", state);
                    cmd.Parameters.AddWithValue("@centerNumber", centerNumber);
                    cmd.Parameters.AddWithValue("@requestStartDate", requestStartDate);
                    cmd.Parameters.AddWithValue("@requestEndDate", requestEndDate);
                    cmd.Parameters.AddWithValue("@reasonForTraining", reasonForTraining);
                    cmd.Parameters.AddWithValue("@certificationType", certificationType);
                    if (certificationDate.HasValue)
                    {
                        cmd.Parameters.AddWithValue("@certificationDate", certificationDate);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@certificationDate", DBNull.Value);
                    }

                    cmd.Parameters.AddWithValue("@dtmName", dtmName);

                    if (dtmCertificationDate.HasValue)
                    {
                        cmd.Parameters.AddWithValue("@dtmCertificationDate", dtmCertificationDate);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@dtmCertificationDate", DBNull.Value);
                    }
                    cmd.Parameters.AddWithValue("@notes", notes);

                    cmd.Parameters.AddWithValue("@participantName", participantName);
                    cmd.Parameters.AddWithValue("@centerNumber2", centernumber);
                    cmd.Parameters.AddWithValue("@districtNumber", districtNumber);
                    cmd.Parameters.AddWithValue("@jobTitle", jobTitle);

                    cmd.Parameters.AddWithValue("@participantName3", participantName3);
                    cmd.Parameters.AddWithValue("@centernumber3", centernumber3);
                    cmd.Parameters.AddWithValue("@districtNumber3", districtNumber3);
                    cmd.Parameters.AddWithValue("@jobTitle3", jobTitle3);

                    cmd.Parameters.AddWithValue("@participantName4", participantName4);
                    cmd.Parameters.AddWithValue("@centernumber4", centernumber4);
                    cmd.Parameters.AddWithValue("@districtNumber4", districtNumber4);
                    cmd.Parameters.AddWithValue("@jobTitle4", jobTitle4);

                    cmd.Parameters.AddWithValue("@participantName5", participantName5);
                    cmd.Parameters.AddWithValue("@centernumber5", centernumber5);
                    cmd.Parameters.AddWithValue("@districtNumber5", districtNumber5);
                    cmd.Parameters.AddWithValue("@jobTitle5", jobTitle5);

                    cmd.Parameters.AddWithValue("@participantName6", participantName6);
                    cmd.Parameters.AddWithValue("@centernumber6", centernumber6);
                    cmd.Parameters.AddWithValue("@districtNumber6", districtNumber6);
                    cmd.Parameters.AddWithValue("@jobTitle6", jobTitle6);

                    cmd.Parameters.AddWithValue("@participantName7", participantName7);
                    cmd.Parameters.AddWithValue("@centernumber7", centernumber7);
                    cmd.Parameters.AddWithValue("@districtNumber7", districtNumber7);
                    cmd.Parameters.AddWithValue("@jobTitle7", jobTitle7);                     
                    //cmd.Parameters.AddWithValue("@insertedid", requestorID);                    

                    //cmd = new SqlCommand(cmd, cnn);
                    cnn.Open();
                    cnn.InfoMessage += cnn_InfoMessage;
                    SqlParameter ID = cmd.Parameters.Add("@ID", SqlDbType.Int);
                    ID.Direction = ParameterDirection.Output;
                    cmd.ExecuteNonQuery();
                    int requestorID = (Int32)cmd.Parameters["@ID"].Value;
                    cnn.Close();
                    EmailService.CreateTrainingRequestMail(requestorID, email);
                    string id = String.Format("ConfirmDetails.aspx?ID={0}", requestorID.ToString());
                    Response.Redirect(id);
                }
            }
        }

        void cnn_InfoMessage(object sender, SqlInfoMessageEventArgs e)
        {
            Console.WriteLine(e.Message);
        }
    }
}