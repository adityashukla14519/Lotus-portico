using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Room : System.Web.UI.Page
{
    ClsRoom objservice = new ClsRoom();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindMenuServices();
    }
    private void BindMenuServices()
    {
         
        int ServiceId = Convert.ToInt32(Request.QueryString["serid"]);

       
        DataSet ds = objservice.GetRoom(0, ServiceId,0);
        string html = "";
        //string html1 = "";
        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                string ImageName = Convert.ToString(dr["Image"]);

                string imgPath = "";
                if (File.Exists(Server.MapPath("Upload/Room/" + ImageName)))
                {
                    imgPath = "Upload/Room/" + ImageName;

                }

                else
                {
                    imgPath = "images/Dummy1.png";
                }
                html+=" <div class='col-sm-6 col-lg-4 wow-outer'>";

                html += " <article class='post-classic wow slideInLeft'><a class='post-classic-media' href='SingleRoom.aspx?serid=" + Convert.ToString(dr["ServiceId"]) + "'><img src='" + imgPath + "' alt='' width='370' height='264'/></a>";
                html+="  <ul class='post-classic-meta'>";
                html += "   <li><a class='button-winona' href='SingleRoom.aspx?serid=" + Convert.ToString(dr["ServiceId"]) + "'>From " + Convert.ToString(dr["Price"]) + "</a></li>";
                html += "   <li>" + Convert.ToString(dr["Guests"]) + " guest</li>";
                html+=" </ul>";
                html += "<h4 class='post-classic-title'><a href='SingleRoom.aspx?serid=" + Convert.ToString(dr["ServiceId"]) + "'>" + Convert.ToString(dr["Title"]) + "</a></h4>";
                html+=" </article>";
                html += "  </div>";

            }
        }
        DivRoom.InnerHtml = html;
        //Divmobilemenu.InnerHtml = html1;

    }
}