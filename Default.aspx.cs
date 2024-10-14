using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    ClsGallery objGallery = new ClsGallery();
    protected void Page_Load(object sender, EventArgs e)
    {


        //BindRoom();
        BindGallery();
        GetContent();
        BindService();
    }


    //private void BindRoom()
    //{

    //    int ServiceId = Convert.ToInt32(Request.QueryString["serid"]);

    //    ClsRoom objservice = new ClsRoom();
    //    DataSet ds = objservice.GetRoom(0, ServiceId);
    //    string html = "";
    //    //string html1 = "";
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
    //            html += " <div class='col-sm-6 col-lg-4 wow-outer'>";

    //            html += " <article class='post-classic wow slideInLeft'><a class='post-classic-media' href='SingleRoom.aspx?serid=" + Convert.ToString(dr["ServiceId"]) + "'><img src='" + imgPath + "' alt='' width='370' height='264'/></a>";
    //            html += "  <ul class='post-classic-meta'>";
    //            html += "   <li><a class='button-winona' href='#'>From " + Convert.ToString(dr["Price"]) + "</a></li>";
    //            html += "   <li>" + Convert.ToString(dr["Guests"]) + " guest</li>";
    //            html += " </ul>";
    //            html += "<h4 class='post-classic-title'><a href='SingleRoom.aspx?serid=" + Convert.ToString(dr["ServiceId"]) + "'>" + Convert.ToString(dr["Title"]) + "</a></h4>";
    //            html += " </article>";
    //            html += "  </div>";

    //        }
    //    }
    //    DivBindRoom.InnerHtml = html;
  

    //}

    private void BindService()
    {
        ClsBanner objbanner = new ClsBanner();
        DataSet ds = objbanner.GetBannerDetail(3, 0);
        string html = "";    
        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {   
          
                html += " <div class='col-sm-6 col-md-4 col-lg-3 wow-outer'>";
                html += "    <!-- Box Light-->";
                html += "  <article class='box-light wow slideInLeft'>";
                html += "   <div class=' '></div>";
                html += "  <h4 class='box-light-title'>" + Convert.ToString(dr["BannerTag"]) + "</h4>";
                html += "  <p>" + Convert.ToString(dr["BannerTitle"]) + "</p>";
                html += "    </article>";
                html += "  </div>";             
            }
        }
        DivBanner.InnerHtml = html;


    }


    public void BindGallery()
    {
        DataSet ds = objGallery.GetGallery(2, 0);
        string Html = "";
        if (ds != null && ds.Tables.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                string ImageName = Convert.ToString(dr["Image"]);
                string imgPath = "";
                if (File.Exists(Server.MapPath("Upload/Gallery/" + ImageName)))
                {
                    imgPath = "Upload/Gallery/" + ImageName;




                }

                else
                {
                    imgPath = "images/Dummy1.png";
                }
              Html+="   <div class='col-12 col-sm-6 col-lg-4 isotope-item wow-outer'>";
              Html+="     <a class='thumbnail-classic thumbnail-classic-lg wow slideInDown' href='Gallery.aspx'>";
              Html += "        <img class='thumbnail-classic-image' src='" + imgPath + "' alt='' width='390' height='576'/>";
              Html+="          <div class='thumbnail-classic-caption'>";
              Html += "            <p class='font-weight-regular thumbnail-classic-title'>'" + Convert.ToString(dr["Description"]) + "'</p>";
              Html+="              <p class='thumbnail-classic-text'></p>";
              Html+="          </div>";
              Html+="          <div class='thumbnail-classic-dummy'></div></a>";
              Html += "  </div>";

            }
        }
        DivBindGallery.InnerHtml = Html;




    }

    private void GetContent()
    {
        ClsContent objcontent = new ClsContent();
        DataSet ds = objcontent.GetIntroContent(1, "Home");
        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            DataRow dr = ds.Tables[0].Rows[0];
             
            DivTitle.InnerHtml = Convert.ToString(dr["Title"]);
             
            DivContent.InnerHtml = Convert.ToString(dr["SiteContents"]);
        }
    }

    protected void btn_book(object sender, EventArgs e)
    {
        string html = "";
        html += "%0a* Following Customer Booked Through Our Website   %0a ";
        html += "%0a *Name* : " + txtname.Text + "%0a";
        html += "%0a *Contact number* : " + txtnumber.Text + "%0a";
        html += "%0a *Check-in* : " + txtDate.Text + " %0a";
        html += "%0a *Check-out* : " + txtCheckOut.Text + "%0a";
        html += "%0a *Guest* : " + txtGuest.Text + "%0a";

        string clientMobile = "9415024644";
        string msg = html;
        string url = "https://api.whatsapp.com/send?phone=+91" + clientMobile + "&text=" + msg + "";



        ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( '" + url + "', null, 'height=500,width=900,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);

        ClsContact objcontact = new ClsContact();
        bool result = objcontact.SaveUpdateContacts(0, 0, txtname.Text, "", "", txtnumber.Text, txtDate.Text, txtCheckOut.Text, Convert.ToInt32(txtGuest.Text), 0, "", "");
        txtname.Text = string.Empty;
        txtnumber.Text = string.Empty;
        txtDate.Text = string.Empty;
        txtCheckOut.Text = string.Empty;
        txtGuest.Text = string.Empty;
         
    }
}