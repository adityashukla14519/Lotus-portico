<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Room.aspx.cs" Inherits="Room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style id='yp'>
        .rd-navbar-main #rd-navbar-nav-wrap-1 > ul > li.rd-nav-item > a.active { color:#c19b76;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
     <script type="text/javascript">
         $(document).ready(function () {
             $("#room_menu").addClass("active rd-nav-link");
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!--Breadcrumbs-->
      <!-- Breadcrumbs -->
      <section class="breadcrumbs-custom bg-image context-dark" style="background-image: url(images/breadcrumbs-image-1.jpg);">
        <div class="breadcrumbs-custom-inner">
          <div class="container breadcrumbs-custom-container">
            <div class="breadcrumbs-custom-main">
              <h6 class="breadcrumbs-custom-subtitle title-decorated">Rooms</h6>
              <h1 class="breadcrumbs-custom-title">Rooms</h1>
            </div>
            <ul class="breadcrumbs-custom-path">
              <li><a href="Default.aspx">Home</a></li>
              <li class="active">Rooms</li>
            </ul>
          </div>
        </div>
      </section>
      <!-- Our Rooms-->
      <section class="section section-lg text-center">
        <div class="container">
          <div class="row row-50" id="DivRoom" runat="server">
<%--            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Post Classic-->
              <article class="post-classic wow slideInLeft"><a class="post-classic-media" href="#"><img src="images/job-portal-2-370x264.jpg" alt="" width="370" height="264"/></a>
                <ul class="post-classic-meta">
                  <li><a class="button-winona" href="#">From $25</a></li>
                  <li>1 guest</li>
                </ul>
                <h4 class="post-classic-title"><a href="#">Single Room</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Post Classic-->
              <article class="post-classic wow slideInLeft" data-wow-delay=".05s"><a class="post-classic-media" href="single-room.html"><img src="images/job-portal-3-370x264.jpg" alt="" width="370" height="264"/></a>
                <ul class="post-classic-meta">
                  <li><a class="button-winona" href="#">From $35</a></li>
                  <li>2 guests</li>
                </ul>
                <h4 class="post-classic-title"><a href="#">Double Room</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Post Classic-->
              <article class="post-classic wow slideInLeft" data-wow-delay=".1s"><a class="post-classic-media" href="single-room.html"><img src="images/job-portal-4-370x264.jpg" alt="" width="370" height="264"/></a>
                <ul class="post-classic-meta">
                  <li><a class="button-winona" href="#">From $45</a></li>
                  <li>3 guests</li>
                </ul>
                <h4 class="post-classic-title"><a href="#">Family Room</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Post Classic-->
              <article class="post-classic wow slideInLeft" data-wow-delay=".1s"><a class="post-classic-media" href="#"><img src="images/job-portal-5-370x264.jpg" alt="" width="370" height="264"/></a>
                <ul class="post-classic-meta">
                  <li><a class="button-winona" href="#">From $40</a></li>
                  <li>2 guests</li>
                </ul>
                <h4 class="post-classic-title"><a href="#">Twin Room</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Post Classic-->
              <article class="post-classic wow slideInLeft" data-wow-delay=".1s"><a class="post-classic-media" href="#"><img src="images/job-portal-6-370x264.jpg" alt="" width="370" height="264"/></a>
                <ul class="post-classic-meta">
                  <li><a class="button-winona" href="#">From $50</a></li>
                  <li>1 guest</li>
                </ul>
                <h4 class="post-classic-title"><a href="#">Luxury Room</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Post Classic-->
              <article class="post-classic wow slideInLeft" data-wow-delay=".1s"><a class="post-classic-media" href="#"><img src="images/job-portal-7-370x264.jpg" alt="" width="370" height="264"/></a>
                <ul class="post-classic-meta">
                  <li><a class="button-winona" href="#">From $650</a></li>
                  <li>2 guests</li>
                </ul>
                <h4 class="post-classic-title"><a href="#">Swimming Pool Suite</a></h4>
              </article>
            </div>--%>
          </div>
        </div>
      </section>
</asp:Content>

