using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.IO;


public partial class AboutUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetIntroContent();
        BindBanner();
        BindTestimonial();
    }
    private void GetIntroContent()
    {
        ClsContent objcontent = new ClsContent();
        DataSet ds = objcontent.GetIntroContent(1, "About");
        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            DataRow dr = ds.Tables[0].Rows[0];
            DivTagLine.InnerHtml = Convert.ToString(dr["TagLine"]);
            DivTitle.InnerHtml = Convert.ToString(dr["Title"]);
            DivSubContents.InnerHtml = Convert.ToString(dr["SiteContents"]);
        }
    }

    private void BindBanner()
    {
        ClsBanner objbanner = new ClsBanner();
        DataSet ds = objbanner.GetBannerDetail(3, 0);
        string html = "";
        //string html1 = "";
        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                string ImageName = Convert.ToString(dr["Image"]);

                string imgPath = "";
                if (File.Exists(Server.MapPath("Upload/Banner/" + ImageName)))
                {
                    imgPath = "Upload/Banner/" + ImageName;

                }

                else
                {
                    imgPath = "images/Dummy1.png";
                }
                html+= "<div class='timeline-classic-item'>";
                html+=  "  <div class='timeline-classic-item-aside'>";
                html+="      <img class='timeline-classic-item-image' src='"+imgPath+"' alt='' width='390' height='250'/>";
                html+="    </div>";
                html+="   <div class='timeline-classic-item-divider'></div>";
                html+="   <div class='timeline-classic-item-main'>";
                html+="    <p class='timeline-classic-item-title'>"+Convert.ToString(dr["BannerTag"])+"</p>";
                html+= "    <p class='thumbnail-classic-item-subtitle'>" + Convert.ToString(dr["BannerTitle"]) + "</p>";
                html+= "    <p>" + Convert.ToString(dr["BannerText"]) + "</p>";
                html+="  </div>";
                html+="</div>";
            }
        }
        DivBanner.InnerHtml = html;
       

    }

    private void BindTestimonial()
    {
        ClsTestimonial objtestimonial = new ClsTestimonial();
        DataSet ds = objtestimonial.GetTestimonial(0, 0);
        string html = "";
        
        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                string ImageName = Convert.ToString(dr["Image"]);

                string imgPath = "";
                if (File.Exists(Server.MapPath("Upload/Testimonial/" + ImageName)))
                {
                    imgPath = "Upload/Testimonial/" + ImageName;

                }

                else
                {
                    imgPath = "images/Dummy1.png";
                }
               html +="  <blockquote class='quote-classic'>";
               html +="      <div class='quote-classic-meta'>";
               html +="      <div class='quote-classic-avatar'><img src='"+imgPath+"' alt='' width='96' height='96'/>";
               html +="     </div>";
               html +=" <div class='quote-classic-info'>";
               html += "      <cite class='quote-classic-cite'>"+Convert.ToString(dr["Name"])+"</cite>";
               html +="     <p class='quote-classic-caption'>Regular Client</p>";
               html +="   </div>";
               html +=" </div>";
               html +="   <div class='quote-classic-text'>";
               html +="   <p>"+Convert.ToString(dr["Description"])+"</p>";
               html +="   </div>";
               html +=" </blockquote>";
            }
        }
        DivTestimonial.InnerHtml = html;


    }


}