<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>
<%--  <%@Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>--%>
        <%@Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style id='yp'>
        .rd-navbar-main #rd-navbar-nav-wrap-1 > ul > li.rd-nav-item > a.active { color:#c19b76;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
     <script type="text/javascript">
         $(document).ready(function () {
             $("#contact_menu").addClass("active rd-nav-link");
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!-- Breadcrumbs -->
      <section class="breadcrumbs-custom bg-image context-dark" style="background-image: url(images/breadcrumbs-image-4.jpg);">
        <div class="breadcrumbs-custom-inner">
          <div class="container breadcrumbs-custom-container">
            <div class="breadcrumbs-custom-main">
              <h6 class="breadcrumbs-custom-subtitle title-decorated">Contacts</h6>
              <h1 class="breadcrumbs-custom-title">Contacts</h1>
            </div>
            <ul class="breadcrumbs-custom-path">
              <li><a href="Default.aspx">Home</a></li>
              <li class="active">Contacts</li>
            </ul>
          </div>
        </div>
      </section>
      <section class="section section-sm">
        <div class="container">
          <div class="layout-bordered">
            <div class="layout-bordered-item wow-outer">
              <div class="layout-bordered-item-inner wow slideInUp">
                <div class="icon icon-lg mdi mdi-phone text-primary"></div>
                <ul class="list-0">
                  <li><a class="link-default" href="tel:+91 93050 63845">Anamika Jaiswal(Manager) +919305063845</a></li>
                  <li><a class="link-default" href="tel:+91 9305063845">&nbsp;Pankaj Maurya(Director) +919305063845</a></li>
                </ul>
              </div>
            </div>
            <div class="layout-bordered-item wow-outer">
              <div class="layout-bordered-item-inner wow slideInUp">
                <div class="icon icon-lg mdi mdi-email text-primary"></div><a class="link-default" href="mailto:lotusporticoclub@gmail.com">lotusporticoclub@gmail.com</a>
              </div>
            </div>
            <div class="layout-bordered-item wow-outer">
              <div class="layout-bordered-item-inner wow slideInUp">
                <div class="icon icon-lg mdi mdi-map-marker text-primary"></div><a class="link-default" href="https://maps.app.goo.gl/GFpaWZeFWPf1UAjV9">Jankipuram Extension, Kursi Road, Lucknow, 226021</a>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="section bg-gray-100">
        <div class="range justify-content-xl-between">
          <div class="cell-xl-6 align-self-center container">
            <div class="row">
              <div class="col-lg-9 cell-inner">
                <div class="section-lg">
                  <h3 class="wow-outer"><span class="wow slideInDown">Contact Us</span></h3>
                  <!-- RD Mailform-->
                   
                   
                  <div class="rd-form rd-mailform">
                    <asp:UpdatePanel    runat="server">
                    <ContentTemplate>
                    <div class="row row-10">
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-first-name">First Name</label>
                          <asp:TextBox runat="server" ID="txtname" CssClass="form-input"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="vldname" ControlToValidate="txtname" runat="server"  Display = "Dynamic" ValidationGroup="contact" ErrorMessage=" The text field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                          <%--<input class="form-input" id="contact-first-name" type="text" name="name" data-constraints="@Required">--%>
                        </div>
                      </div>
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-last-name">Last Name</label>
                          <asp:TextBox runat="server" ID="txtlname" CssClass="form-input"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtlname"  Display = "Dynamic" runat="server" ValidationGroup="contact" ErrorMessage=" The text field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                        <%--  <input class="form-input" id="contact-last-name" type="text" name="name" data-constraints="@Required">--%>
                        </div>
                      </div>
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-email">E-mail</label>
                          <asp:TextBox runat="server" ID="txtemail" CssClass="form-input"  ></asp:TextBox>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Display = "Dynamic" ErrorMessage = "Invalid email address"/>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtemail"  Display = "Dynamic" ValidationGroup="contact" runat="server" ErrorMessage=" The text field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                         
                        </div>
                      </div>
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-phone">Phone</label>
                          <asp:TextBox runat="server" ID="txtphone" CssClass="form-input"></asp:TextBox>
                           <cc2:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" FilterType="Numbers" runat="server" TargetControlID="txtphone"></cc2:FilteredTextBoxExtender>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtphone"  Display = "Dynamic" ValidationGroup="contact" runat="server" ErrorMessage=" The text field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                       
                        </div>
                      </div>
                      <div class="col-12 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-message">Your Message</label>
                          <asp:TextBox runat="server" ID="txtmsg" CssClass="form-input"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtmsg"  ValidationGroup="contact" runat="server" ErrorMessage=" The text field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                         
                        </div>
                      </div>
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                         <asp:label id="lblStopSpam" runat="server" style="font-size:20px; color:black;padding: 8px 25px;" CssClass="form-input"></asp:label> 
                 <%-- <cc1:CaptchaControl ID="cptCaptcha" runat="server"  CaptchaBackgroundNoise="Low" CaptchaLength="5"  CaptchaHeight="50" CaptchaWidth="150"  
                    CaptchaLineNoise="None" CaptchaMinTimeout="5"  
                    CaptchaMaxTimeout="240" FontColor = "#529E00" />--%>
                         </div>
                      </div>
                      <%--<div class="col-md-2 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                           <asp:ImageButton ID="ImageButton2" ImageUrl="images/refresh.png" height="35" runat="server" CausesValidation="false" />
                        </div>
                      </div>--%>
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                         <asp:TextBox runat="server" id="txtStopSpam" CssClass="form-input" MaxLength="7" placeholder="Enter Captcha" TextMode="Number"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtStopSpam" ErrorMessage="Please Enter Captcha" style="color:Red;text-align: justify" ValidationGroup="contact">
                                </asp:RequiredFieldValidator>
                          <asp:Label ID="lblsum" runat="server" Visible="false"></asp:Label>
                                 <span id="Span6" style=" color:red;">
                                    <asp:comparevalidator id="CompareValidator1" errormessage="Invalid text format." display="None" validationgroup="contact" controltovalidate="txtStopSpam" runat="server" operator="DataTypeCheck" type="Integer"></asp:comparevalidator>   
                                 </span>
                          <%-- <asp:TextBox ID="txtCaptcha" runat="server" CssClass="form-input"></asp:TextBox>  
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" Please enter captcha" ValidationGroup="contact"  ControlToValidate = "txtCaptcha" ForeColor="Red"></asp:RequiredFieldValidator>  --%>
                        </div>
                      </div>
                    </div>
                    <div class="group group-middle">
                      <div class="wow-outer">
                       <asp:Button runat="server" Text="Send Message" ID="btnsend" OnClick="btn_SendMsg" ValidationGroup="contact" CssClass="button button-primary button-winona wow slideInRight"/>
              <asp:Label ID="lblErrorMessage" runat="server" Font-Names = "Arial" Text=""></asp:Label> 
                      </div>
                      
                      <%--<div class="wow-outer"><a class="button button-primary-outline button-winona font-weight-bold" href="https://wa.me/9415024644"><span class="d-inline mdi mdi-facebook-messenger"></span>messenger</a>
                      </div>--%>
                    </div>
                    </ContentTemplate>
                       </asp:UpdatePanel>
                    </div>
               
                </div>
              </div>
            </div>
          </div>


           <div class="cell-xl-6 align-self-center container">
            <div class="row">
              <div class="col-lg-9 cell-inner">
                <div class="section-lg">
        <%--          <h3 class="wow-outer"><span class="wow slideInDown">Contact Us</span></h3>--%>
                  <!-- RD Mailform-->
                   
                  <div class="rd-form rd-mailform">
                    <div class="row row-10">

                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3556.7837111177414!2d80.96326431020694!3d26.942070476532248!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399957ea71d3cbf1%3A0x5da7ee1aff3d1370!2sLotus%20Portico!5e0!3m2!1sen!2sin!4v1711600747144!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                  
                    </div>
                
                    </div>
                  
                </div>
              </div>
            </div>
          </div>



         <%-- <div class="cell-xl-5 height-fill wow fadeIn">
            <div class="google-map-container section-map-small" data-center="9870 St Vincent Place, Glasgow, DC 45 Fr 45." data-styles="[{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#e9e9e9&quot;},{&quot;lightness&quot;:17}]},{&quot;featureType&quot;:&quot;landscape&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#f5f5f5&quot;},{&quot;lightness&quot;:20}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;geometry.fill&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:17}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;geometry.stroke&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:29},{&quot;weight&quot;:0.2}]},{&quot;featureType&quot;:&quot;road.arterial&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:18}]},{&quot;featureType&quot;:&quot;road.local&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:16}]},{&quot;featureType&quot;:&quot;poi&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#f5f5f5&quot;},{&quot;lightness&quot;:21}]},{&quot;featureType&quot;:&quot;poi.park&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#dedede&quot;},{&quot;lightness&quot;:21}]},{&quot;elementType&quot;:&quot;labels.text.stroke&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;on&quot;},{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:16}]},{&quot;elementType&quot;:&quot;labels.text.fill&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:36},{&quot;color&quot;:&quot;#333333&quot;},{&quot;lightness&quot;:40}]},{&quot;elementType&quot;:&quot;labels.icon&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;off&quot;}]},{&quot;featureType&quot;:&quot;transit&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#f2f2f2&quot;},{&quot;lightness&quot;:19}]},{&quot;featureType&quot;:&quot;administrative&quot;,&quot;elementType&quot;:&quot;geometry.fill&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#fefefe&quot;},{&quot;lightness&quot;:20}]},{&quot;featureType&quot;:&quot;administrative&quot;,&quot;elementType&quot;:&quot;geometry.stroke&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#fefefe&quot;},{&quot;lightness&quot;:17},{&quot;weight&quot;:1.2}]}]">
              <div class="google-map"></div>
              <ul class="google-map-markers">
                <li data-location="9870 St Vincent Place, Glasgow, DC 45 Fr 45." data-description="9870 St Vincent Place, Glasgow" data-icon="images/gmap_marker.png" data-icon-active="images/gmap_marker_active.png"></li>
              </ul>
            </div>
          </div>--%>
        </div>
      </section>
</asp:Content>

