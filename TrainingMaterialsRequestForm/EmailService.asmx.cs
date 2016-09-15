using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace TrainingMaterialsRequestForm
{
    /// <summary>
    /// Summary description for EmailService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class EmailService : System.Web.Services.WebService
    {
        
       
        [WebMethod]
        public void CreateMail()
        {
            int requestID = int.Parse(Context.Request.QueryString["requestorID"]);
            string emailaddress = Context.Request.QueryString["email"];
            //CreateTrainingRequestMail();
        }

        public static void CreateTrainingRequestMail(int requestID, string emailaddress)
        {


            String hyperlink = String.Format("http://IT29621.cic.com/RequestDetails.aspx?ID={0}", requestID);
            String hyperlink2 = String.Format("http://IT29621.cic.com/ConfirmDetails.aspx?ID={0}", requestID);

            String subject = String.Format("YourTraining Request has been submitted.");


                    MailMessage mail = new MailMessage();                    

                    mail.From = new MailAddress("trainingrequest@checkintocash.com", "Training Request Site");
                    mail.To.Add("training@checkintocash.com");
                    mail.Bcc.Add(new MailAddress("csills@checkintocash.com"));
                    mail.Subject = subject;
                    mail.IsBodyHtml = true;
                    mail.Body = @"
<html>
    <head>
        <style>
            body {{
                text-transform: uppercase !important;
            }}
            .DDMainHeader {{
                font: small-caps bold 1.6em Trebuchet MS, Arial, sans-serif;
                color: #888;
                padding-bottom: 12px;
                border-bottom: 1px dotted #bbbbbb;
            }}
        </style>
    </head>
    <body>
        <h2 class=""DDMainHeader"">A Training Request has been submitted! You can view it from this link.  <a href=" + hyperlink + @">View Request.</a></h2>
        <table>
            <tr>
                <th></th>
                <td></td>
            </tr>
            <tr>
                <th></th>
                <td></td>
            </tr>
            <tr>
                <th></th>
                <td></td>
            </tr>
        </table>
    </body>
</html>
";
                    MailMessage mail2 = new MailMessage();

                    mail2.From = new MailAddress("trainingrequest@checkintocash.com", "Training Request Site");
                    mail2.To.Add(emailaddress);
                    //mail2.Bcc.Add(new MailAddress("csills@checkintocash.com"));
                    mail2.Subject = subject;
                    mail2.IsBodyHtml = true;
                    mail2.Body = @"
<html>
    <head>
        <style>
            body {{
                text-transform: uppercase !important;
            }}
            .DDMainHeader {{
                font: small-caps bold 1.6em Trebuchet MS, Arial, sans-serif;
                color: #888;
                padding-bottom: 12px;
                border-bottom: 1px dotted #bbbbbb;
            }}
        </style>
    </head>
    <body>
        <h2 class=""DDMainHeader"">Your Training Request has been submitted! You can view it from this link.  <a href=" + hyperlink2 + @">View Request.</a></h2>
        <table>
            <tr>
                <th></th>
                <td></td>
            </tr>
            <tr>
                <th></th>
                <td></td>
            </tr>
            <tr>
                <th></th>
                <td></td>
            </tr>
        </table>
    </body>
</html>
";

                    SmtpClient smtpClient = new SmtpClient("10.20.10.69");
                    smtpClient.Credentials = new System.Net.NetworkCredential("customersupport", "Cic_bravo1#");
                    smtpClient.Timeout = 60000;
                    smtpClient.Send(mail);
                    smtpClient.Send(mail2);
                    smtpClient.Dispose();
                    mail.Dispose();
                 
                   
                }
        }


    }
