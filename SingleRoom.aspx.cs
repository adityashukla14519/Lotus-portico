using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class SingleRoom : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetRoomDetails();
        //BindRooms();  
    }
    protected void btn_book(object sender, EventArgs e)
    {
        ClsContact Obj = new ClsContact();
        if (txtname.Text != "" && txtemail.Text != "" && txtnumber.Text != "" && txtCheckIn.Text != "" && txtcheckout.Text != "" && txtAdult.Text != "" && txtChild.Text != "")
        {
            string html = "";
            html += "%0a* Following Customer Booked Through Our Website   %0a ";
            html += "%0a *Name* : " + txtname.Text + "%0a";
            html += "%0a *Email* : " + txtemail.Text + "%0a";
            html += "%0a *Contact number* : " + txtnumber.Text + "%0a";
            html += "%0a *Check-in* : " + txtCheckIn.Text + " %0a";
            html += "%0a *Check-out* : " + txtcheckout.Text + "%0a";
            html += "%0a *Adult* : " + txtAdult.Text + "%0a";
            html += "%0a *Children* : " + txtChild.Text + "%0a";

            string clientMobile = "9415024644";
            string msg = html;
            
            int Child = 0, Adult = 0;
            int.TryParse(txtChild.Text.Trim(), out Child);
            int.TryParse(txtAdult.Text.Trim(), out Adult);
            bool result = Obj.SaveUpdateContacts(0, 0, txtname.Text.Trim(), "", txtemail.Text.Trim(), txtnumber.Text.Trim(), txtCheckIn.Text.Trim(), txtcheckout.Text.Trim(),  
               Adult,
            Child,"",DateTime.Now.ToString());
            if (result == true)
            {
                lblStatus.Text = "Booking Successfully! ";
                string url = "https://api.whatsapp.com/send?phone=+91" + clientMobile + "&text=" + msg + "";



                ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( '" + url + "', null, 'height=500,width=900,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
       
                reset();
            }
            else
            {
                lblStatus.Text = "Sorry! Can't process request";
            }
        }
        else
        {
            lblStatus.Text = "Please fill The Required field";
        }


    }
    public void reset()
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtnumber.Text = "";
        txtCheckIn.Text = "";
        txtcheckout.Text = "";
        txtAdult.Text = "";
        txtChild.Text = "";
         

    }
    private void GetRoomDetails()
    {
        ClsRoom objroom = new ClsRoom();
        DataSet ds = objroom.GetRoom(0, 0,1);
        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            DataRow dr = ds.Tables[0].Rows[0];
            divprice.InnerHtml = "Rs " +Convert.ToString(dr["Price"]) + "</br>per night excluding 18% GST";
            divService.InnerHtml = Convert.ToString(dr["smalldescription"]);
            divDescription.InnerHtml = Convert.ToString(dr["longdescription"]);           
        }
    }


    //private void BindRooms()
    //{        
    //    ClsRoom objroom = new ClsRoom();
    //    DataSet ds = objroom.GetRoom(0, 0);
    //    string html = "";
    //    if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
    //    {
    //        foreach (DataRow dr in ds.Tables[0].Rows)
    //        {
    //            string ImageName = Convert.ToString(dr["Image"]);
    //            string imgPath = "";
    //            if (File.Exists(Server.MapPath("Upload/Room/" + ImageName)))
    //            {
    //                imgPath = "Upload/Room/" + ImageName;
    //            }
    //            else
    //            {
    //                imgPath = "images/Dummy1.png";
    //            }
    //             html+="  <div class='col-sm-6 col-lg-4 wow-outer'>";
    //             html += "    <article class='post-classic wow slideInLeft'><a class='post-classic-media' href='SingleRoom.aspx?serid=" + Convert.ToString(dr["ServiceId"]) + "'>";
    //             html+="      <img src='"+imgPath+"' alt='' width='370' height='264'/></a>";
    //             html+="        <ul class='post-classic-meta'>";
    //             html += "          <li><a class='button-winona' href='SingleRoom.aspx?serid=" + Convert.ToString(dr["ServiceId"]) + "'>From " + Convert.ToString(dr["Price"]) + "</a></li>";
    //             html += "          <li>" + Convert.ToString(dr["Guests"]) + " guest</li>";
    //             html+="       </ul>";
    //             html+="       <h4 class='post-classic-title'><a href='SingleRoom.aspx?serid=" + Convert.ToString(dr["ServiceId"]) + "'>" + Convert.ToString(dr["Title"]) + "</a></h4>";
    //             html+="   </article>";
    //             html+=" </div>";
    //        }
    //    }
    //    DivBindRoom.InnerHtml = html;
    //}

 
}