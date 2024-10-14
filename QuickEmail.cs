using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;

/// <summary>
/// Summary description for QuickEmail
/// </summary>
public class QuickEmail
{
   
    public QuickEmail()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public String SendMail(String MailTo, String MailFrom, String Subject, String MailBody, string pAttachmentPath)
    {
        try
        {
            MailMessage msg = new MailMessage();
            MailAddress mailaddressfrom = new MailAddress(MailFrom);
            MailAddress mailaddressTo = new MailAddress(MailTo);
            msg.From = mailaddressfrom;
            msg.To.Add(mailaddressTo);
            msg.Subject = Subject;
            msg.Body = MailBody;
            msg.IsBodyHtml = true;

            if (pAttachmentPath.Trim() != "")
            {
                System.Net.Mail.Attachment MyAttachment = new System.Net.Mail.Attachment(pAttachmentPath);
                msg.Attachments.Add(MyAttachment);
                msg.Priority = System.Net.Mail.MailPriority.High;
            }

            string SenderEmail = "lotusporticoclub@gmail.com";
            string SenderEmailPass = "ovckhpamrgsasxbz";

            SmtpClient objSmtp = new SmtpClient("smtp.gmail.com", 587);
            objSmtp.EnableSsl = true;
            objSmtp.Credentials = new
                System.Net.NetworkCredential(SenderEmail, SenderEmailPass);

            objSmtp.Send(msg);
            return "mailsend";
        }
        catch (Exception ex)
        {
            return ex.ToString();
        }
    }
 
}