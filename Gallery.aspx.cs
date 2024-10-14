using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Gallery : System.Web.UI.Page
{
    GetGalleryCategory objcategory = new GetGalleryCategory();
    ClsGallery objGallery = new ClsGallery();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            BindCategory();
            BindGallery();
        }
    }
    private void BindCategory()
    {

        DataSet ds = objcategory.GetCategory(0,0);
        string Html = "";
        
        if (ds != null && ds.Tables.Count > 0)
        {
            Html += "<li><a class='active' href='#' data-isotope-filter='*' data-isotope-group='gallery'>All</a></li>";
           
            foreach (DataRow dr in ds.Tables[0].Rows)
            {

                Html += "<li><a href='#' data-isotope-filter='" + Convert.ToString(dr["CategoryId"]) + "' data-isotope-group='gallery'>" + Convert.ToString(dr["CategoryName"]) + "</a></li>";

            }
        }
        divBindImages.InnerHtml = Html;
    }

    public void BindGallery()
    {
        int CategoryId = 0;
        DataSet ds = objGallery.GetGallery(0, 0);
        string Html = "";
        if (ds != null && ds.Tables.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {

                //string CategoryId = Convert.ToString(dr["CategoryId"]);
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
                Html += " <div class='col-sm-6 col-lg-4 isotope-item' data-filter='" + Convert.ToString(dr["CategoryId"]) + "'>";
                Html += "     <a class='thumbnail-corporate thumbnail-corporate-light' href='" + imgPath + "' data-lightgallery='item'>";
                Html +="     <img class='thumbnail-corporate-image' src='"+imgPath+"' alt='' width='370' height='256'/>";
                Html +="     <div class='thumbnail-corporate-caption'>";
                Html += "      <p class='thumbnail-corporate-title'>'" + Convert.ToString(dr["Description"]) + "'</p>";
                Html +="    </div>";
                Html +="   <div class='thumbnail-corporate-dummy'> </div></a>";
                Html +="</div>";

            }
        }
        DivBindGallery.InnerHtml = Html;




    }

}