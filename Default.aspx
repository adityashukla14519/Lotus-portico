<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="">
 #txtnumber::placeholder{
     color:black;
 }
 .form-input::placeholder
 { 
      color:black;
 }
 
</style>
<style id='yp'>
        .rd-navbar-main #rd-navbar-nav-wrap-1 > ul > li.rd-nav-item > a.active { color:#c19b76;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
     <script type="text/javascript">
         $(document).ready(function () {
             $("#home_menu").addClass("active rd-nav-link");
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="section jumbotron-modern bg-gray-700 bg-image" style="background-image: url(images/DSC_2490.jpg);box-shadow: inset 0 0 0 2000px rgba(62, 46, 41, 0.7);">
        <div class="jumbotron-modern-inner">
          <div class="container text-center">
            <div class="jumbotron-modern-content">
              <h1 class="wow-outer text-uppercase text-white"><span class="wow slideInDown">Discover <br/> cozy rooms</span></h1>
              <h4 class="text-subtitle wow-outer text-uppercase text-white"><span class="wow slideInUp">Perfect for any trip</span></h4>
            </div>
          <%--  <form class="rd-form form-lg booking-form-2" action="" method="post">--%>
            <div class="rd-form form-lg booking-form-2">
           
             <div class="form-wrap form-wrap-select wow fadeInLeftSmall" data-wow-delay=".2s" style="width: 210px">

              <asp:TextBox ID="txtname"  runat="server" CssClass="form-input select"  placeholder="Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="white"  ValidationGroup="submit"  ControlToValidate ="txtname" ErrorMessage="Please enter name" ></asp:RequiredFieldValidator>
               
              </div>
              <div class="form-wrap form-wrap-select wow fadeInLeftSmall" data-wow-delay=".2s" style="width: 180px">

              <asp:TextBox ID="txtnumber"  runat="server" CssClass="form-input select"  placeholder="Contact"></asp:TextBox>
                 <cc2:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" FilterType="Numbers" runat="server" TargetControlID="txtnumber"></cc2:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="white"  ValidationGroup="submit"  ControlToValidate ="txtnumber" ErrorMessage="Please enter number" ></asp:RequiredFieldValidator>               
              </div>

              <div class="form-wrap form-wrap-select wow fadeInLeftSmall" data-wow-delay=".2s" style="width: 180px" id="name">

              <asp:TextBox ID="txtDate"  TextMode="Date" runat="server" CssClass="form-input select"  placeholder="Check in"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="white"  ValidationGroup="submit"  ControlToValidate ="txtDate" ErrorMessage="Please select check-in date" ></asp:RequiredFieldValidator>             
              </div>
              <div class="form-wrap form-wrap-select wow fadeInLeftSmall" data-wow-delay=".2s" style="width: 180px">
              <asp:TextBox ID="txtCheckOut"  TextMode="Date" runat="server" CssClass="form-input select"  placeholder="Check out"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="white"  ValidationGroup="submit"  ControlToValidate ="txtCheckOut" ErrorMessage="Please select check-out date" ></asp:RequiredFieldValidator>
                
                <%--<select class="form-input select" name="find-room-location" data-minimum-results-for-search="Infinity">
                  <option value="1">Check out</option>
                  <option value="2">September 25</option>
                  <option value="3">August 31</option>
                  <option value="4">July 20</option>
                  <option value="5">June 30</option>
                </select>--%>
              </div>
              <div class="form-wrap form-wrap-main wow fadeInLeftSmall select-last" data-wow-delay=".3s" style="width: 135px">
               <asp:DropDownList ID="txtGuest" runat="server" Cssclass="form-input select select-last">
                <asp:ListItem  Value="">Guests</asp:ListItem>               
                <asp:ListItem Value="1">1 Guest</asp:ListItem>
                <asp:ListItem Value="2">2 Guests</asp:ListItem>
                <asp:ListItem Value="3">3 Guests</asp:ListItem>
                <asp:ListItem Value="4">4 Guests</asp:ListItem>
                 <asp:ListItem Value="4">More than 4 </asp:ListItem>
                </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="rfvChildren"  runat="server" ForeColor="white"  ValidationGroup="submit"  type="submit" ControlToValidate ="txtGuest" ErrorMessage="Please select any option" ></asp:RequiredFieldValidator>
               <%-- 
                <select class="form-input select select-last" name="find-room-location" data-minimum-results-for-search="Infinity">
                
                  <option value="1">1 Guest</option>
                  <option value="2">2 Guests</option>
                  <option value="3">3 Guests</option>
                  <option value="4">4 Guests</option>
                </select>--%>
              </div>
              <asp:Button runat="server" Text="Book Now" ID="btnbook" OnClick="btn_book" ValidationGroup="submit" CssClass="form-wrap button button-primary button-winona wow fadeInLeftSmall" style="height:55px"/>
            </div>
      <%--     </form>--%>
          </div>
        </div>
      </section>
      <!--Relax at Our Hotel-->
      <section class="section section-lg bg-gray-100">
        <div class="container">
          <div class="row row-50 justify-content-center justify-content-lg-between flex-lg-row-reverse">
            <div class="col-md-10 col-lg-6 col-xl-5">
              <h3 class="wow-outer"><span class="wow slideInDown font-weight-bolder" id="DivTitle" runat="server"></span></h3>
              <p class="wow-outer"><span class="wow slideInDown" data-wow-delay=".05s" id="DivContent" runat="server"></span></p>
             
              <%--<div class="row justify-content-left wow slideInDown">
                <div class="col-md-4"><img class="quote-light-image" src="images/logo-painting-136x61.png" alt="" width="136" height="61"/>
                </div>
                <div class="col-md-8">
                  <h5 class="font-weight-medium">Oliver Morgan</h5>
                  <h6 class="font-weight-light">General Manager, Lux Hotel</h6>
                </div>
              </div>--%>
            </div>
            <div class="col-md-10 col-lg-6 wow-outer"><img class="img-responsive wow slideInLeft" src="images/DSC_2509.JPG" alt="" width="570" height="368"/>
            </div>
          </div>
        </div>
      </section>
      <!-- Our Rooms-->
      <section class="section section-lg text-center">
        <div class="container">
          <h3 class="wow-outer"><span class="wow slideInUp"><i>Our&nbsp;</i><span class="font-weight-bolder">Rooms</span></span></h3>
          <div class="row row-20 row-40"  >
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Post Classic-->
              <article class="post-classic wow slideInLeft"><a class="post-classic-media" href=""><img src="images/DSC_2341.JPG" alt="" width="370" height="264"/></a>
                <ul class="post-classic-meta">
                  <li><a class="button-winona" href="SingleRoom.aspx">From Rs 4000 per night</a></li>
                 <%-- <li>1 guest</li>--%>
                </ul>
                <h4 class="post-classic-title"><a href="SingleRoom.aspx">Deluxe Room</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Post Classic-->
              <article class="post-classic wow slideInLeft" data-wow-delay=".05s"><a class="post-classic-media" href=""><img src="images/DSC_2462.JPG" alt="" width="370" height="264"/></a>
                <ul class="post-classic-meta">
                  <li><a class="button-winona" href="SingleRoom.aspx">From Rs 4000 per night</a></li>
              <%--    <li>2 guests</li>--%>
                </ul>
                <h4 class="post-classic-title"><a href="SingleRoom.aspx">Premium Room</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Post Classic-->
              <article class="post-classic wow slideInLeft" data-wow-delay=".1s"><a class="post-classic-media" href=""><img src="images/DSC_2342.JPG" alt="" width="370" height="264"/></a>
                <ul class="post-classic-meta">
                  <li><a class="button-winona" href="SingleRoom.aspx">From Rs 4000 per night</a></li>
                 
                </ul>
                <h4 class="post-classic-title"><a href="SingleRoom.aspx">Classic Room</a></h4>
              </article>
            </div>
          </div>
          <div class="wow-outer button-outer"><a class="button button-lg button-primary button-winona wow slideInUp" href="SingleRoom.aspx">View all rooms</a></div>
        </div>
      </section>
      <!--Gallery-->
      <section class="section-lg text-center bg-gray-100">
        <div class="container">
          <h3 class="wow-outer"><span class="wow slideInUp">Gallery</span></h3>
          <div class="isotope isotope-condensed row" data-isotope-layout="masonry" id="DivBindGallery" runat="server">
<%--            <div class="col-12 col-sm-6 col-lg-4 isotope-item wow-outer">
                        <!-- Thumbnail Classic--><a class="thumbnail-classic thumbnail-classic-lg wow slideInDown" href=" "><img class="thumbnail-classic-image" src="images/gallery-masonry-condensed-1-390x576.jpg" alt="" width="390" height="576"/>
                          <div class="thumbnail-classic-caption">
                            <p class="font-weight-regular thumbnail-classic-title">Pool &amp; Spa</p>
                            <p class="thumbnail-classic-text">Health &amp; Relaxation</p>
                          </div>
                          <div class="thumbnail-classic-dummy"></div></a>
            </div>
            <div class="col-12 col-sm-6 col-lg-4 isotope-item wow-outer">
                        <!-- Thumbnail Classic--><a class="thumbnail-classic wow slideInDown" href=""><img class="thumbnail-classic-image" src="images/gallery-masonry-condensed-2-390x288.jpg" alt="" width="390" height="288"/>
                          <div class="thumbnail-classic-caption">
                            <p class="font-weight-regular thumbnail-classic-title">Breathtaking Exterior</p>
                            <p class="thumbnail-classic-text">Modern &amp; Vibrant Design</p>
                          </div>
                          <div class="thumbnail-classic-dummy"></div></a>
            </div>
            <div class="col-12 col-sm-6 col-lg-4 isotope-item wow-outer">
                        <!-- Thumbnail Classic--><a class="thumbnail-classic thumbnail-classic-lg wow slideInUp" href=""><img class="thumbnail-classic-image" src="images/gallery-masonry-condensed-3-390x576.jpg" alt="" width="390" height="576"/>
                          <div class="thumbnail-classic-caption">
                            <p class="font-weight-regular thumbnail-classic-title">Friendly Atmosphere</p>
                            <p class="thumbnail-classic-text">Everything for a Great Stay</p>
                          </div>
                          <div class="thumbnail-classic-dummy"></div></a>
            </div>
            <div class="col-12 col-sm-6 col-lg-4 isotope-item wow-outer">
                        <!-- Thumbnail Classic--><a class="thumbnail-classic thumbnail-classic-lg wow slideInUp" href=""><img class="thumbnail-classic-image" src="images/gallery-masonry-condensed-5-390x576.jpg" alt="" width="390" height="576"/>
                          <div class="thumbnail-classic-caption">
                            <p class="font-weight-regular thumbnail-classic-title">Comfortable Rooms</p>
                            <p class="thumbnail-classic-text">Experience the True Hospitality</p>
                          </div>
                          <div class="thumbnail-classic-dummy"></div></a>
            </div>
            <div class="col-12 col-sm-6 col-lg-4 isotope-item wow-outer">
                        <!-- Thumbnail Classic--><a class="thumbnail-classic wow slideInDown" href=""><img class="thumbnail-classic-image" src="images/gallery-masonry-condensed-4-390x288.jpg" alt="" width="390" height="288"/>
                          <div class="thumbnail-classic-caption">
                            <p class="font-weight-regular thumbnail-classic-title">Spectacular Interior</p>
                            <p class="thumbnail-classic-text">Unique Room Appearance</p>
                          </div>
                          <div class="thumbnail-classic-dummy"></div></a>
            </div>
            <div class="col-12 col-sm-6 col-lg-4 isotope-item wow-outer">
                        <!-- Thumbnail Classic--><a class="thumbnail-classic wow slideInDown" href=""><img class="thumbnail-classic-image" src="images/gallery-masonry-condensed-6-390x288.jpg" alt="" width="390" height="288"/>
                          <div class="thumbnail-classic-caption">
                            <p class="font-weight-regular thumbnail-classic-title">Hotel Venues</p>
                            <p class="thumbnail-classic-text">Perfect for Any Events</p>
                          </div>
                          <div class="thumbnail-classic-dummy"></div></a>
            </div>--%>
          </div>
        </div>
      </section>
     
      <!-- Relax and Enjoy Your Holiday-->
      <section class="section section-xl bg-gray-700 bg-image" style="background-image: url(images/call-to-action-1-1920x456.jpg);">
        <div class="container">
          <div class="row justify-content-center text-center">
            <div class="col-sm-9 col-md-7 col-lg-6">
              <div class="wow-outer">
                <div class="wow slideInUp">
                  <h3 class="wow-outer font-weight-bolder text-white"><span class="wow slideInDown font-weight-bolder">Relax and Enjoy</span><i class="font-weight-regular">Your Holiday</i></h3>
                </div>
              </div>
              <div class="wow-outer offset-top-4">
                <div class="wow slideInDown">
                  <p class="text-white">With a variety of activities and amenities available at our hotel, you will surely have a great stay at our city and enjoy your holiday.</p><a class="button button-primary button-winona" href="AboutUs.aspx">Read more</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
       <!-- Right Services for Great Customers-->
      <section class="section section-lg text-center">
        <div class="container">
          <h3 class="wow-outer"><span class="wow slideInUp"><i>Right Services&nbsp;</i><span class="font-weight-bolder">for Great Customers</span></span></h3>
          <div class="row row-50 row-xxl-70 offset-top-2" id="DivBanner" runat="server">
           <%-- <div class="col-sm-6 col-md-4 col-lg-3 wow-outer">
              <!-- Box Light-->
              <article class="box-light wow slideInLeft">
                <div class="box-light-icon linearicons-swim"></div>
                <h4 class="box-light-title">Swimming Pool</h4>
                <p>One of the main attractions at the hotel is our extensive, luxurious 20-metre indoor swimming pool.</p>
              </article>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 wow-outer">
              <!-- Box Light-->
              <article class="box-light wow slideInLeft" data-wow-delay=".05s">
                <div class="box-light-icon linearicons-wifi"></div>
                <h4 class="box-light-title">Free Wi-Fi</h4>
                <p>We provide our guests with free high-speed Wi-Fi connection throughout the whole hotel area.</p>
              </article>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 wow-outer">
              <!-- Box Light-->
              <article class="box-light wow slideInLeft" data-wow-delay=".1s">
                <div class="box-light-icon linearicons-chef"></div>
                <h4 class="box-light-title">Restaurants</h4>
                <p>Restaurants at Lux Hotel offer a vast choice of great dishes that can satisfy even the most exquisite tastes.</p>
              </article>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 wow-outer">
              <!-- Box Light-->
              <article class="box-light wow slideInLeft" data-wow-delay=".15s">
                <div class="box-light-icon linearicons-bicycle2"></div>
                <h4 class="box-light-title">Bike Rentals</h4>
                <p>Our hotel also offers bike rental services to our guests and visitors. We provide bikes at very affordable prices.</p>
              </article>
            </div>--%>
          </div>
        </div>
      </section>
    <%--  <!-- Latest News-->
      <section class="section section-lg text-center">
        <div class="container">
          <h3 class="wow-outer text-center"><span class="wow slideInDown">Latest News</span></h3>
          <div class="row row-20 row-40">
            <div class="col-md-6 wow-outer">
              <!-- Post Modern-->
              <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="single-blog-post.html"><img src="images/latest-news-1-571x353.jpg" alt="" width="571" height="353"/></a>
                <h4 class="post-modern-title"><a href="single-blog-post.html">6 Tips to Book the Best Hotel for You</a></h4>
                <ul class="post-modern-meta">
                  <li>by Mike Barnes</li>
                  <li>
                    <time datetime="2018">Apr 25, 2018 at 3:13 pm</time>
                  </li>
                  <li><a class="button-winona" href="#">News</a></li>
                </ul>
                <p>Travelers today are spoiled for choice when it comes to booking a hotel. Booking the best hotel goes beyond just booking the cheapest, or the most centrally located. Here's how to...</p>
              </article>
            </div>
            <div class="col-md-6 wow-outer">
              <!-- Post Modern-->
              <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="single-blog-post.html"><img src="images/latest-news-2-571x353.jpg" alt="" width="571" height="353"/></a>
                <h4 class="post-modern-title"><a href="single-blog-post.html">Hotel Safety Tips You Should Not Ignore</a></h4>
                <ul class="post-modern-meta">
                  <li>by Mike Barnes</li>
                  <li>
                    <time datetime="2018">Apr 25, 2018 at 3:13 pm</time>
                  </li>
                  <li><a class="button-winona" href="#">News</a></li>
                </ul>
                <p>These days, travel is no Sunday picnic and when you finally stumble into the lobby of your hotel, you may be tired, dirty, and in a hurry to get cleaned up, get some sleep, or get to the first...</p>
              </article>
            </div>
          </div>
        </div>
      </section>--%>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        var today = new Date();
        var month = ('0' + (today.getMonth() + 1)).slice(-2);
        var day = ('0' + today.getDate()).slice(-2);
        var year = today.getFullYear();
        var date = year + '-' + month + '-' + day;
        $('[id*=txtDate]').attr('min', date);
        $('[id*=txtCheckOut]').attr('min', date);
    });
</script>
</asp:Content>

