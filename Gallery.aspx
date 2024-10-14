<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style id='yp'>
        .rd-navbar-main #rd-navbar-nav-wrap-1 > ul > li.rd-nav-item > a.active { color:#c19b76;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
     <script type="text/javascript">
         $(document).ready(function () {
             $("#gallery_menu").addClass("active rd-nav-link");
         });
     </script>	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Breadcrumbs -->
      <!-- Breadcrumbs -->
      <section class="breadcrumbs-custom bg-image context-dark" style="background-image: url(images/breadcrumbs-image-1.jpg);">
        <div class="breadcrumbs-custom-inner">
          <div class="container breadcrumbs-custom-container">
            <div class="breadcrumbs-custom-main">
              
              <h1 class="breadcrumbs-custom-title">Gallery</h1>
            </div>
            <ul class="breadcrumbs-custom-path">
              <li><a href="Default.aspx">Home</a></li>              
              <li class="active"> Gallery</li>
            </ul>
          </div>
        </div>
      </section>
      <section class="section section-lg oh">
        <div class="container">
          <!-- Isotope Filters-->
          <div class="isotope-filters isotope-filters-modern">
            <button class="isotope-filters-toggle button button-sm button-primary" data-custom-toggle="#isotope-filters" data-custom-toggle-disable-on-blur="true">Filter<span class="caret"></span></button>
            <ul class="isotope-filters-list"   id ="divBindImages" runat="server">
             <%-- <li><a class="active" data-isotope-filter="*" data-isotope-group="gallery" href="#">All Types</a></li>--%>
              <%--<li><a data-isotope-filter="Type 1" data-isotope-group="gallery" href="#">Type 1 </a></li>
              <li><a data-isotope-filter="Type 2" data-isotope-group="gallery" href="#">Type 2</a></li>--%>
            </ul>
          </div>
          <div id ="DivBindGallery" runat="server" class="isotope isotope-responsive row" data-isotope-layout="masonry" data-isotope-group="gallery" data-lightgallery="group">
          <%--  <div class="col-sm-6 col-lg-4 isotope-item" data-filter="Type 2">
              <!-- Thumbnail Corporate--><a class="thumbnail-corporate thumbnail-corporate-light" href="images/gallery-masonry-1-original.jpg" data-lightgallery="item"><img class="thumbnail-corporate-image" src="images/gallery-masonry-1-370x256.jpg" alt="" width="370" height="256"/>
                <div class="thumbnail-corporate-caption">
                  <p class="thumbnail-corporate-title">Pool &amp; Spa</p>
                </div>
                <div class="thumbnail-corporate-dummy"> </div></a>
            </div>
            <div class="col-sm-6 col-lg-4 isotope-item" data-filter="Type 1">
              <!-- Thumbnail Corporate--><a class="thumbnail-corporate thumbnail-corporate-light thumbnail-corporate-lg" href="images/gallery-masonry-2-original.jpg" data-lightgallery="item"><img class="thumbnail-corporate-image" src="images/gallery-masonry-2-370x464.jpg" alt="" width="370" height="464"/>
                <div class="thumbnail-corporate-caption">
                  <p class="thumbnail-corporate-title">Breathtaking Exterior</p>
                </div>
                <div class="thumbnail-corporate-dummy"> </div></a>
            </div>
            <div class="col-sm-6 col-lg-4 isotope-item" data-filter="Type 2">
              <!-- Thumbnail Corporate--><a class="thumbnail-corporate thumbnail-corporate-light" href="images/gallery-masonry-3-original.jpg" data-lightgallery="item"><img class="thumbnail-corporate-image" src="images/gallery-masonry-3-370x256.jpg" alt="" width="370" height="256"/>
                <div class="thumbnail-corporate-caption">
                  <p class="thumbnail-corporate-title">Friendly Atmosphere</p>
                </div>
                <div class="thumbnail-corporate-dummy"> </div></a>
            </div>
            <div class="col-sm-6 col-lg-4 isotope-item" data-filter="Type 1">
              <!-- Thumbnail Corporate--><a class="thumbnail-corporate thumbnail-corporate-light thumbnail-corporate-lg" href="images/gallery-masonry-4-original.jpg" data-lightgallery="item"><img class="thumbnail-corporate-image" src="images/gallery-masonry-4-370x464.jpg" alt="" width="370" height="464"/>
                <div class="thumbnail-corporate-caption">
                  <p class="thumbnail-corporate-title">Comfortable Rooms</p>
                </div>
                <div class="thumbnail-corporate-dummy"> </div></a>
            </div>
            <div class="col-sm-6 col-lg-4 isotope-item" data-filter="Type 1">
              <!-- Thumbnail Corporate--><a class="thumbnail-corporate thumbnail-corporate-light thumbnail-corporate-lg" href="images/gallery-masonry-6-original.jpg" data-lightgallery="item"><img class="thumbnail-corporate-image" src="images/gallery-masonry-6-370x464.jpg" alt="" width="370" height="464"/>
                <div class="thumbnail-corporate-caption">
                  <p class="thumbnail-corporate-title">Spectacular Interior</p>
                </div>
                <div class="thumbnail-corporate-dummy"> </div></a>
            </div>
            <div class="col-sm-6 col-lg-4 isotope-item" data-filter="Type 2">
              <!-- Thumbnail Corporate--><a class="thumbnail-corporate thumbnail-corporate-light" href="images/gallery-masonry-5-original.jpg" data-lightgallery="item"><img class="thumbnail-corporate-image" src="images/gallery-masonry-5-370x256.jpg" alt="" width="370" height="256"/>
                <div class="thumbnail-corporate-caption">
                  <p class="thumbnail-corporate-title">Perfect for Any Events</p>
                </div>
                <div class="thumbnail-corporate-dummy"> </div></a>
            </div>--%>
          </div>
        </div>
      </section>
</asp:Content>

