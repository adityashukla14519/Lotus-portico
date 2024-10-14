<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SingleRoom.aspx.cs" Inherits="SingleRoom" %>
<%@Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
 #txtname::placeholder { /* Firefox */
  color:black;
}
  #txtemail::placeholder { /* Firefox */
  color:black;
}
 #txtnumber::placeholder { /* Firefox */
  color:black;
}
</style>
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
  <section class="breadcrumbs-custom bg-image context-dark" style="background-image: url('images/breadcrumbs-image-5.jpg');">
        <div class="breadcrumbs-custom-inner">
          <div class="container breadcrumbs-custom-container">
            <div class="breadcrumbs-custom-main">
              <h6 class="breadcrumbs-custom-subtitle title-decorated">Rooms</h6>
              <h1 class="breadcrumbs-custom-title">   Rooms</h1>
            </div>
            <ul class="breadcrumbs-custom-path">
              <%--<li><a href="Default.aspx">Home</a></li>
              <li><a href="Room.aspx">Rooms</a></li>
              <li class="active" id="divhead2" runat="server"></li>--%>
            </ul>
          </div>
        </div>
      </section>
      <!-- Overview-->
      <section class="section section-sm bg-gray-100">
        <div class="container">
          <!-- Owl Carousel-->
          <div class="owl-carousel owl-carousel-centered-pagination" data-items="1" data-sm-items="2" data-md-items="3" data-lg-items="4" data-dots="true" data-stage-padding="0" data-loop="false" data-margin="30" data-mouse-drag="false">
            <div class="item">
              <h4 class="small-subtitle">Price</h4>
              <p   id="divprice" runat="server"></p>
            
            </div>
            <div class="item">
              <h4 class="small-subtitle">Services</h4>
              <ul class="list-inline-comma list-inline-comma-default" id="divService" runat="server">
                <%--<li><a href="#">Free WI-FI</a></li>
                <li><a href="#">Sattelite TV</a></li>
                <li><a href="#">Car Rentals</a></li>
                <li><a href="#">Gym & Fitness</a></li>
                <li><a href="#">Business Services</a></li>
                <li><a href="#">Room Service</a></li>
                <li><a href="#">Event Catering</a></li>
                <li><a href="#">Guarded Parking Lot</a></li>--%>
              </ul>
            </div>
            <div class="item">
              <h4 class="small-subtitle">Description</h4>
              <p><span class="owl-item-block" id="divDescription" runat="server"></span></p>
            </div>
            <div class="item">
              <h4 class="small-subtitle">Guests</h4>
              <p>3 Adults</p>
            </div>
          </div>
        </div>
      </section>
      <!-- Book This Room-->
      <section class="section section-lg">
        <div class="container">
          <div class="row row-50 justify-content-center justify-content-lg-between flex-lg-row-reverse">
            <div class="col-md-10 col-lg-5 col-xl-4">
           
              <div class="inset-left-2"> 
                <h3><i>Book&nbsp;</i><span class="font-weight-bolder">This Room</span></h3>
                 
                <div class="rd-form booking-form" >
                 <div class="form-wrap form-wrap-select wow fadeInLeftSmall" data-wow-delay=".2s">
                   <asp:TextBox ID="txtname"  runat="server" CssClass="form-input select"  placeholder="Name"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="red" Display="Dynamic" ValidationGroup="room"  ControlToValidate ="txtname" ErrorMessage="Please Enter Name" ></asp:RequiredFieldValidator>                
                 </div>
                 <div class="form-wrap form-wrap-select wow fadeInLeftSmall" data-wow-delay=".2s">
                   <asp:TextBox ID="txtemail"  runat="server" CssClass="form-input select"  placeholder="Email"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="red"  ValidationGroup="room" Display="Dynamic" ControlToValidate ="txtemail" ErrorMessage="Please Enter Email" ></asp:RequiredFieldValidator>                
                 </div>
                  <div class="form-wrap form-wrap-select wow fadeInLeftSmall" data-wow-delay=".2s">
                   <asp:TextBox ID="txtnumber"  runat="server" CssClass="form-input select"  placeholder="Contact"></asp:TextBox>
                     <cc2:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" FilterType="Numbers" runat="server" TargetControlID="txtnumber"></cc2:FilteredTextBoxExtender>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="red"  ValidationGroup="room" Display="Dynamic" ControlToValidate ="txtnumber" ErrorMessage="Please Enter Number" ></asp:RequiredFieldValidator>               
                 </div>

                  <div class="form-wrap form-wrap-select wow fadeInLeftSmall" data-wow-delay=".2s">
                    <!-- Select 1-->
                    <asp:TextBox ID="txtCheckIn"  TextMode="Date" runat="server" CssClass="form-input select"  placeholder="Check in"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="red"  ValidationGroup="room" Display="Dynamic" ControlToValidate ="txtCheckIn" ErrorMessage="Please select check-in date" ></asp:RequiredFieldValidator>
                <%--
                    <select class="form-input select" name="find-job-location" data-minimum-results-for-search="Infinity" data-container-class="select-gray" data-dropdown-class="select-gray">
                      <option value="1">Check in</option>
                      <option value="2">September 12</option>
                      <option value="3">August 23</option>
                      <option value="4">July 15</option>
                      <option value="5">June 18</option>
                    </select>--%>
                  </div>
                  <div class="form-wrap form-wrap-select wow fadeInLeftSmall" data-wow-delay=".2s">
                    <!-- Select 2-->
                    <asp:TextBox ID="txtcheckout"  TextMode="Date" runat="server" CssClass="form-input select"  placeholder="Check out"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="red"  ValidationGroup="room" Display="Dynamic" ControlToValidate ="txtcheckout" ErrorMessage="Please select check-out date" ></asp:RequiredFieldValidator>
                
                    <%--<select class="form-input select" name="find-job-location" data-minimum-results-for-search="Infinity" data-container-class="select-gray" data-dropdown-class="select-gray">
                      <option value="1">Check out</option>
                      <option value="2">September 25</option>
                      <option value="3">August 31</option>
                      <option value="4">July 20</option>
                      <option value="5">June 30</option>
                    </select>--%>
                  </div>
                  <div class="form-group">
                    <div>
                      <div class="form-wrap form-wrap-select wow fadeInLeftSmall" data-wow-delay=".2s">
                        <!-- Select 3-->
                           <asp:DropDownList ID="txtAdult" runat="server" Cssclass="form-input select">
                           <asp:ListItem Value="">Adults</asp:ListItem>          
                           <asp:ListItem Value="1">1 Adults</asp:ListItem>
                           <asp:ListItem Value="2">2 Adults</asp:ListItem>
                           <asp:ListItem Value="3">3 Adults</asp:ListItem>
                           <asp:ListItem Value="4">4 Adults</asp:ListItem>
                           <asp:ListItem Value="5">More than 4</asp:ListItem>
                         </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  runat="server" ForeColor="red"  ValidationGroup="room" Display="Dynamic"  ControlToValidate ="txtAdult" ErrorMessage="Please select any option" ></asp:RequiredFieldValidator>
                       <%-- <select class="form-input select" name="find-job-location" data-minimum-results-for-search="Infinity" data-container-class="select-gray" data-dropdown-class="select-gray">
                          <option value="1">Adults</option>
                          <option value="2">1 Adult</option>
                          <option value="3">2 Adults</option>
                          <option value="4">3 Adults</option>
                          <option value="5">4 Adults</option>
                        </select>--%>
                      </div>
                    </div>
                    <div>
                      <div class="form-wrap form-wrap-select wow fadeInLeftSmall" data-wow-delay=".2s">
                        <!-- Select 4-->
                          <asp:DropDownList ID="txtChild" runat="server" Cssclass="form-input select">
                           <asp:ListItem  Value="">Children</asp:ListItem>  
                           <asp:ListItem Value="1">0 Children</asp:ListItem>             
                           <asp:ListItem Value="1">1 Children</asp:ListItem>
                           <asp:ListItem Value="2">2 Children</asp:ListItem>
                           <asp:ListItem Value="3">3 Children</asp:ListItem>
                           <asp:ListItem Value="4">4 Children</asp:ListItem>
                           <asp:ListItem Value="5">More than 4</asp:ListItem>
                         </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="rfvChildren"  runat="server" ForeColor="red"  ValidationGroup="room" Display="Dynamic"  ControlToValidate ="txtChild" ErrorMessage="Please select any option" ></asp:RequiredFieldValidator>
                      <%--  <select class="form-input select" name="find-job-location" data-minimum-results-for-search="Infinity" data-container-class="select-gray" data-dropdown-class="select-gray">
                          <option value="1">Children</option>
                          <option value="2">1 Child</option>
                          <option value="3">2 Children</option>
                          <option value="4">3 Children</option>
                          <option value="5">4 Children</option>
                        </select>--%>
                      </div>
                    </div>
                  </div>
                  <div class="form-wrap form-wrap-button">
     <asp:Button runat="server" Text="Book Now" ID="btnbook" OnClick="btn_book" ValidationGroup="room" CssClass="button button-block button-primary button-winona font-weight-regular"/>
                     <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                  </div>
                  </div>
           
              </div>
            </div>
            <div class="col-md-10 col-lg-7"><img class="img-responsive wow slideInLeft" src="images/single-room-1-670x384.jpg" alt="" width="670" height="384" style="margin-top:15%"/>
            </div>
          </div>
        </div>
      </section>
      <section class="section swiper-container swiper-slider swiper-slider-tiny text-center" data-loop="true" data-slide-effect="fade" data-autoplay="false" data-simulate-touch="true"> 
        <div class="swiper-wrapper">
          <div class="swiper-slide" data-slide-bg="images/single-project-slide-1-1920x760.jpg">
            <div class="swiper-slide-caption">
              <div class="container"></div>
            </div>
          </div>
          <div class="swiper-slide" data-slide-bg="images/single-project-slide-2-1920x760.jpg">
            <div class="swiper-slide-caption">
              <div class="container"></div>
            </div>
          </div>
          <div class="swiper-slide" data-slide-bg="images/single-project-slide-3-1920x760.jpg">
            <div class="swiper-slide-caption">
              <div class="container"></div>
            </div>
          </div>
        </div>
        <div class="swiper-pagination-outer container">
          <div class="swiper-pagination swiper-pagination-modern swiper-pagination-marked" data-index-bullet="true"></div>
        </div>
      </section>
      
      <!-- Other Rooms-->
      <section class="section section-lg text-center">
        <div class="container">
          <h3 class="wow-outer"><span class="wow slideInUp"><i>Other Rooms</i></span></h3>
          <div class="row row-40 row-20" id="DivBindRoom" runat="server">
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Post Classic-->
              <article class="post-classic wow slideInLeft"><a class="post-classic-media" href=""><img src="images/DSC_2341.JPG" alt="" width="370" height="264"/></a>
                <ul class="post-classic-meta">
                  <li><a class="button-winona" href="#">From Rs 4000 per night </a></li>
                <%--  <li>1 guest</li>--%>
                </ul>
                <h4 class="post-classic-title"><a href=" ">Deluxe Room</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Post Classic-->
              <article class="post-classic wow slideInLeft" data-wow-delay=".05s"><a class="post-classic-media" href=""><img src="images/DSC_2462.JPG" alt="" width="370" height="264"/></a>
                <ul class="post-classic-meta">
                  <li><a class="button-winona" href="#">From Rs 4000 per night</a></li>
               <%--   <li>2 guests</li>--%>
                </ul>
                <h4 class="post-classic-title"><a href=" ">Premium Room</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Post Classic-->
              <article class="post-classic wow slideInLeft" data-wow-delay=".1s"><a class="post-classic-media" href=""><img src="images/DSC_2342.JPG" alt="" width="370" height="264"/></a>
                <ul class="post-classic-meta">
                  <li><a class="button-winona" href="#">From Rs 4000 per night</a></li>
                 <%-- <li>3 guests</li>--%>
                </ul>
                <h4 class="post-classic-title"><a href=" ">Classic Room</a></h4>
              </article>
            </div>
          </div>
        </div>
      </section>

    <%--  code for Disable previews date--%>
      <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script type="text/javascript">
    $(function () {
        var today = new Date();
        var month = ('0' + (today.getMonth() + 1)).slice(-2);
        var day = ('0' + today.getDate()).slice(-2);
        var year = today.getFullYear();
        var date = year + '-' + month + '-' + day;
        $('[id*=txtCheckIn]').attr('min', date);
        $('[id*=txtcheckout]').attr('min', date);
    });
</script>
</asp:Content>

