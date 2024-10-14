<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
 #aboutimg
 {margin-top: 20%;
  height: 400px;
 }
</style>
<style id='yp'>
        .rd-navbar-main #rd-navbar-nav-wrap-1 > ul > li.rd-nav-item > a.active { color:#c19b76;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
     <script type="text/javascript">
         $(document).ready(function () {
             $("#about_menu").addClass("active rd-nav-link");
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--Breadcrumbs-->
      <!-- Breadcrumbs -->
      <section class="breadcrumbs-custom bg-image context-dark" style="background-image: url(images/DSC_2439.jpg);box-shadow: inset 0 0 0 2000px rgba(62, 46, 41, 0.7);">
        <div class="breadcrumbs-custom-inner">
          <div class="container breadcrumbs-custom-container">
            <div class="breadcrumbs-custom-main">
              <h6 class="breadcrumbs-custom-subtitle title-decorated">About</h6>
              <h1 class="breadcrumbs-custom-title">About Us</h1>
            </div>
            <ul class="breadcrumbs-custom-path">
<%--              <li><a href="Default.aspx">Home</a></li>
              <li class="active">About</li>--%>
            </ul>
          </div>
        </div>
      </section>
      <!--Overview-->
      <!-- Overview-->
      <section class="section section-lg">
        <div class="container">
          <div class="row row-50 justify-content-center justify-content-lg-between">
            <div class="col-md-10 col-lg-6">
              <h3 id="DivTitle" runat="server"></h3>
              <h5 class="font-weight-light" id="DivTagLine" runat="server"></h5>
              <p id="DivSubContents" runat="server"></p>
              <div class="group group-middle"><a class="button button-primary button-winona font-weight-sbold" href="ContactUs.aspx"  ><span class="mdi-button mdi mdi-facebook-messenger"></span>Contact Us</a>
               </div>
            </div>
            <div class="col-md-10 col-lg-6 col-xl-5"> <img class="img-responsive" src="images/DSC_2445.JPG" alt=""   id="aboutimg"/>
            </div>
          </div>
        </div>
      </section>
      <!--Our history-->
      <section class="section section-lg bg-gray-850" id="our-history">
        <div class="container">
          <!-- Timeline Classic-->
          <article class="timeline-classic" id="DivBanner" runat="server">
          <%--  <div class="timeline-classic-item">
              <div class="timeline-classic-item-aside"><img class="timeline-classic-item-image" src="images/timeline-1-390x250.jpg" alt="" width="390" height="250"/>
              </div>
              <div class="timeline-classic-item-divider"></div>
              <div class="timeline-classic-item-main">
                <p class="timeline-classic-item-title">Accommodation</p>
                <p class="thumbnail-classic-item-subtitle">We Offer Lots of Great Accommodation Options Designed to Provide the Best Level of Comfort</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulla consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>
              </div>
            </div>
            <div class="timeline-classic-item">
              <div class="timeline-classic-item-aside"><img class="timeline-classic-item-image" src="images/timeline-2-390x250.jpg" alt="" width="390" height="250"/>
              </div>
              <div class="timeline-classic-item-divider"></div>
              <div class="timeline-classic-item-main">
                <p class="timeline-classic-item-title">Restaurant</p>
                <p class="thumbnail-classic-item-subtitle">“Aurora”, the Restaurant Located at our Hotel Offers an Amazingly Varied Menu to Our Customers.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulla consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>
              </div>
            </div>
            <div class="timeline-classic-item">
              <div class="timeline-classic-item-aside"><img class="timeline-classic-item-image" src="images/timeline-3-390x250.jpg" alt="" width="390" height="250"/>
              </div>
              <div class="timeline-classic-item-divider"></div>
              <div class="timeline-classic-item-main">
                <p class="timeline-classic-item-title">Swimming Pool</p>
                <p class="thumbnail-classic-item-subtitle">You Can Also Relax and Spend Your Time with Benefit at the Swimming Pool at Our Hotel.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulla consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>
              </div>
            </div>
            <div class="timeline-classic-item">
              <div class="timeline-classic-item-aside"><img class="timeline-classic-item-image" src="images/timeline-4-390x250.jpg" alt="" width="390" height="250"/>
              </div>
              <div class="timeline-classic-item-divider"></div>
              <div class="timeline-classic-item-main">
                <p class="timeline-classic-item-title">Great Staff</p>
                <p class="thumbnail-classic-item-subtitle">Lux Hotel Employs the Best People in the Industry - From Waiters to Receptionists</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulla consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>
              </div>
            </div>--%>
          </article>
        </div>
      </section>
      <!-- Testimonials-->
      <section class="section section-lg text-center">
      <div class="container">
          <h3 class="wow-outer"><span class="wow slideInDown">Testimonial</span></h3>
          <!-- Owl Carousel-->
          <div class="owl-carousel wow fadeIn" data-items="1" data-md-items="2" data-lg-items="3" data-dots="true" data-nav="false" data-loop="true" data-margin="30" data-stage-padding="0" data-mouse-drag="false"  id="DivTestimonial" runat="server">
          <%--  <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="images/testimonials-person-3-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Albert Webb</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulla consequat. Duis aute irure dolor in reprehenderit in voluptate</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="images/testimonials-person-1-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Kelly McMillan</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>Ut enim ad minim veniam, quis nostrud exercitation ulla consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="images/testimonials-person-2-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Harold Barnett</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>Sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="images/testimonials-person-5-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Bill Warner</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="images/testimonials-person-4-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Samantha Lee</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulla consequat. Duis aute</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="images/testimonials-person-6-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Ann Peterson</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>Labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulla consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</p>
              </div>
            </blockquote>--%>
          </div>
        </div>
       <%-- <div class="container" id="DivTestimonial" runat="server">
          <h3>Testimonials</h3>
          <div class="slick-widget-testimonials wow fadeIn" >
            <div class="slick-slider carousel-child" id="child-carousel" data-for=".carousel-parent" data-arrows="true" data-loop="true" data-dots="false" data-swipe="true" data-items="1" data-sm-items="3" data-md-items="5" data-lg-items="5" data-xl-items="5" data-center-mode="true" data-slide-to-scroll="1"  >             
              <div class="item wow-outer"><img class="wow slideInLeft" src="images/testimonials-person-1-96x96.jpg" alt="" width="96" height="96"/>
              </div>
              <div class="item wow-outer"><img class="wow slideInLeft" src="images/testimonials-person-2-96x96.jpg" alt="" width="96" height="96"/>
              </div>
              <div class="item wow-outer"><img class="wow slideInLeft" src="images/testimonials-person-3-96x96.jpg" alt="" width="96" height="96"/>
              </div>
              <div class="item wow-outer"><img class="wow slideInLeft" src="images/testimonials-person-4-96x96.jpg" alt="" width="96" height="96"/>
              </div>
              <div class="item wow-outer"><img class="wow slideInLeft" src="images/testimonials-person-5-96x96.jpg" alt="" width="96" height="96"/>
              </div>
              <div class="item wow-outer"><img class="wow slideInLeft" src="images/testimonials-person-3-96x96.jpg" alt="" width="96" height="96"/>
              </div>
            </div>
            <!-- Slick Carousel-->
            <div class="slick-slider carousel-parent" data-arrows="false" data-loop="true" data-dots="false" data-swipe="false" data-items="1" data-fade="true" data-child="#child-carousel" data-for="#child-carousel" >
              <div class="item">
                <!-- Quote Light 1-->
                <blockquote class="quote-light">
                  <cite class="quote-light-cite">Kelly McMillan</cite>
                  <p class="quote-light-caption">Regular Client</p>
                  <svg class="quote-light-mark" x="0px" y="0px" width="35px" height="25px" viewbox="0 0 35 25">
                    <path d="M27.461,10.206h7.5v15h-15v-15L25,0.127h7.5L27.461,10.206z M7.539,10.206h7.5v15h-15v-15L4.961,0.127h7.5                L7.539,10.206z"></path>
                  </svg>
                  <div class="quote-light-text">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulla</p>
                  </div>
                </blockquote>
              </div>
              <div class="item">
                <!-- Quote Light 2-->
                <blockquote class="quote-light">
                  <cite class="quote-light-cite">Harold Barnett</cite>
                  <p class="quote-light-caption">Regular Client</p>
                  <svg class="quote-light-mark" x="0px" y="0px" width="35px" height="25px" viewbox="0 0 35 25">
                    <path d="M27.461,10.206h7.5v15h-15v-15L25,0.127h7.5L27.461,10.206z M7.539,10.206h7.5v15h-15v-15L4.961,0.127h7.5                L7.539,10.206z"></path>
                  </svg>
                  <div class="quote-light-text">
                    <p>Ut enim ad minim veniam, quis nostrud exercitation ulla consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                  </div>
                </blockquote>
              </div>
              <div class="item">
                <!-- Quote Light 3-->
                <blockquote class="quote-light">
                  <cite class="quote-light-cite">Albert Webb</cite>
                  <p class="quote-light-caption">Regular Client</p>
                  <svg class="quote-light-mark" x="0px" y="0px" width="35px" height="25px" viewbox="0 0 35 25">
                    <path d="M27.461,10.206h7.5v15h-15v-15L25,0.127h7.5L27.461,10.206z M7.539,10.206h7.5v15h-15v-15L4.961,0.127h7.5                L7.539,10.206z"></path>
                  </svg>
                  <div class="quote-light-text">
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                  </div>
                </blockquote>
              </div>
              <div class="item">
                <!-- Quote Light 4 -->
                <blockquote class="quote-light">
                  <cite class="quote-light-cite">Samantha Lee</cite>
                  <p class="quote-light-caption">Regular Client</p>
                  <svg class="quote-light-mark" x="0px" y="0px" width="35px" height="25px" viewbox="0 0 35 25">
                    <path d="M27.461,10.206h7.5v15h-15v-15L25,0.127h7.5L27.461,10.206z M7.539,10.206h7.5v15h-15v-15L4.961,0.127h7.5                L7.539,10.206z"></path>
                  </svg>
                  <div class="quote-light-text">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulla</p>
                  </div>
                </blockquote>
              </div>
              <div class="item">
                <!-- Quote Light 5-->
                <blockquote class="quote-light">
                  <cite class="quote-light-cite">Bill Warner</cite>
                  <p class="quote-light-caption">Regular Client</p>
                  <svg class="quote-light-mark" x="0px" y="0px" width="35px" height="25px" viewbox="0 0 35 25">
                    <path d="M27.461,10.206h7.5v15h-15v-15L25,0.127h7.5L27.461,10.206z M7.539,10.206h7.5v15h-15v-15L4.961,0.127h7.5                L7.539,10.206z"></path>
                  </svg>
                  <div class="quote-light-text">
                    <p>Ut enim ad minim veniam, quis nostrud exercitation ulla consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                  </div>
                </blockquote>
              </div>
              <div class="item">
                <!-- Quote Light 3-->
                <blockquote class="quote-light">
                  <cite class="quote-light-cite">Albert Webb</cite>
                  <p class="quote-light-caption">Regular Client</p>
                  <svg class="quote-light-mark" x="0px" y="0px" width="35px" height="25px" viewbox="0 0 35 25">
                    <path d="M27.461,10.206h7.5v15h-15v-15L25,0.127h7.5L27.461,10.206z M7.539,10.206h7.5v15h-15v-15L4.961,0.127h7.5                L7.539,10.206z"></path>
                  </svg>
                  <div class="quote-light-text">
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                  </div>
                </blockquote>
              </div>
            </div>
          </div>
        </div>--%>
      </section>
     <%-- <!-- Our Latest Post-->
      <section class="section section-lg bg-gray-100">
        <div class="container">
          <h3 class="text-center">Our Latest Posts</h3>
          <div class="row row-40 row-20 justify-content-center justify-content-lg-start">
            <div class="col-md-10 col-lg-7 wow-outer">
              <!-- Post Block-->
              <article class="post-block"><img class="post-block-image" src="images/blog-layouts-5-637x456.jpg" alt="" width="637" height="456"/>
                <div class="post-block-caption">
                  <ul class="post-block-meta">
                    <li class="text-gray-350 wow-outer"><span class="wow slideInLeft">by Mike Barnes</span></li>
                    <li class="text-gray-350 wow-outer"><a class="button-winona wow slideInLeft" href="#">News</a></li>
                    <li class="text-gray-350 wow-outer">
                      <time class="wow slideInLeft" datetime="2018">April 2, 2018</time>
                    </li>
                  </ul>
                  <h5 class="font-weight-light post-block-title text-white"><a href="">6 Tips to Book the Best Hotel for You</a></h5>
                </div>
                <div class="post-block-dummy"></div>
              </article>
            </div>
            <div class="col-md-10 col-lg-5">
              <div class="post-light-group wow-outer">
                <!-- Post Light-->
                <article class="post-light wow slideInLeft">
                  <time class="post-light-time" datetime="2018"><span class="post-light-time-big">29</span><span class="post-light-time-small font-weight-bolder">April</span></time>
                  <div class="post-light-main">
                    <h4 class="post-light-title"><a href="">Hotel Safety Tips You Should Not Ignore</a></h4>
                    <ul class="post-light-meta">
                      <li>by Mike Barnes</li>
                      <li><a class="button-winona" href="#">News</a></li>
                    </ul>
                  </div>
                </article>
                <!-- Post Light-->
                <article class="post-light wow slideInLeft">
                  <time class="post-light-time" datetime="2018"><span class="post-light-time-big">30</span><span class="post-light-time-small font-weight-bolder">April</span></time>
                  <div class="post-light-main">
                    <h4 class="post-light-title"><a href="">A Guide to Tipping Hotel Housekeeping</a></h4>
                    <ul class="post-light-meta">
                      <li>by Mike Barnes</li>
                      <li><a class="button-winona" href="#">News</a></li>
                    </ul>
                  </div>
                </article>
                <!-- Post Light-->
                <article class="post-light wow slideInLeft">
                  <time class="post-light-time" datetime="2018"><span class="post-light-time-big">2</span><span class="post-light-time-small font-weight-bolder">May</span></time>
                  <div class="post-light-main">
                    <h4 class="post-light-title"><a href="">What Exactly Is a Boutique Hotel?</a></h4>
                    <ul class="post-light-meta">
                      <li>by Mike Barnes</li>
                      <li><a class="button-winona" href="#">News</a></li>
                    </ul>
                  </div>
                </article>
              </div>
              <div class="wow-outer button-outer"><a class="button button-primary button-winona wow slideInDown font-weight-sbold" href="">View all posts</a></div>
            </div>
          </div>
        </div>
      </section>--%>
</asp:Content>

