using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //BindMenuServices();
    }
    //private void BindMenuServices()
    //{
    //    ClsRoom objservice = new ClsRoom();
    //    DataSet ds = objservice.GetRoom(0, 0);
    //    string html = "";
    //    string html1 = "  <li><a href='Room.aspx'>Our Rooms</a></li>";
       
    //    if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
    //    {
    //        foreach (DataRow dr in ds.Tables[0].Rows)
    //        {
    //            html += " <li class='rd-dropdown-item'><a class='rd-dropdown-link' href='SingleRoom.aspx?serid=" + Convert.ToString(dr["ServiceId"]) + "'>" + Convert.ToString(dr["Title"]) + "</a></li>";
             
    //            html1 += "<li><a href='SingleRoom.aspx?serid=" + Convert.ToString(dr["ServiceId"]) + "'>" + Convert.ToString(dr["Title"]) + "</a></li>";
    //        }
    //    }
    //    DivMenuRoom.InnerHtml = html;
    //    DivMenu.InnerHtml = html1;

    //}

    protected void btn_booking(object sender, EventArgs e)
    {
        string html = "";
        html += "%0a* Following Customer Booked Through Our Website   %0a ";
        html += "%0a *Name* : " + txtname.Text + "%0a";
        html += "%0a *Contact number* : " + txtnumber.Text + "%0a";
        html += "%0a *Check-in* : " + txtDateIn.Text + " %0a";
        html += "%0a *Check-out* : " + txtDateout.Text + "%0a";
        html += "%0a *Guest* : " + txtGuest.Text + "%0a";
         
        string clientMobile = "9415024644";
        string msg = html;
        string url = "https://api.whatsapp.com/send?phone=+91" + clientMobile + "&text=" + msg + "";



        ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( '" + url + "', null, 'height=500,width=900,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
       
        ClsContact objcontact = new ClsContact();
        bool result = objcontact.SaveUpdateContacts(0, 0, txtname.Text, "", "", txtnumber.Text, txtDateIn.Text, txtDateout.Text, Convert.ToInt32(txtGuest.Text),0, "", "");
        txtname.Text = string.Empty;
        txtnumber.Text = string.Empty;
        txtDateIn.Text = string.Empty;
        txtDateout.Text = string.Empty;
        txtGuest.Text = string.Empty;
         

    }
}
