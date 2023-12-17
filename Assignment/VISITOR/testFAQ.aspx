<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testFAQ.aspx.cs" Inherits="Assignment.VISITOR.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/style2.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
         .center-container {
        display: flex;
        flex-direction: column;

        margin: auto;
        max-width: 1200px; /* Adjust this width based on your design */
        }
        .auto-style3 {
            width: 435px;
        }
        .auto-style5 {
            width: 421px;
            height: 294px;
        }
        .auto-style7 {
            margin-right: 58px;
        }
    </style>

    <title>Wanderlust Chinese Culture~FAQ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="faq">
         <div class="container">
            <div class='row thehead'>
		          <div class='col-md-12 text-left'>
		  	        <h3 class='notag'>FAQ</h3>
		  
		          </div>

            </div>
            <div class="row">
                <div class="col-md-12 text-left">
                    <div class="accordion id=accordionExample">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h2 class="mb-0">
                                    <button class="btn btn-link custom-btn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="white-space: nowrap;">
                                      How long can I access an online course?
                                    </button>
                                </h2>
                            </div>
                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                              <div class="card-body">
                                <strong>"WCC's online courses are pre-recorded videos. After completing the purchase, you can wait for the course to start and then watch it. </strong>
                                <p>Each online course will have video content gradually uploaded in phases based on the course duration and circumstances. Students can arrange their own learning pace and method for attending classes.</p>
                                <p>There is no restriction on the devices for watching the courses. However, it's important to note that during the same time period, one account is limited to logging in and viewing on only one device.</p>
                              </div>
                            </div>
                        </div>
                        <div class="card">
                          <div class="card-header" id="headingTwo">
                            <h2 class="mb-0">
                              <button class="btn btn-link collapsed custom-btn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" style="white-space: nowrap;">
                                If I can't find the account for the purchased course, what should I do?
                              </button>
                            </h2>
                          </div>
                          <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                            <div class="card-body">
                                <p>If you forget your account or cannot find the account for the purchased course, you can contact us through Facebook private messages (search for ​​) or email us at the customer service email address (wcc@gmail.com). Please provide identifiable information such as your phone number, name, and email address. Our team will assist you as soon as possible!</p>
                            </div>
                          </div>
                        </div>
                        <div class="card">
                          <div class="card-header" id="headingThree">
                            <h2 class="mb-0">
                              <button class="btn btn-link collapsed custom-btn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" style="white-space: nowrap;">
                                Is it allowed to share accounts?
                              </button>
                            </h2>
                          </div>
                          <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                            <div class="card-body">
                                <p>Due to copyright regulations and to protect the rights of both you and the instructor, each purchased course is intended for 'individual member' use only. Sharing accounts, streaming course videos, or public screenings with others is not allowed. Let's work together to uphold intellectual property rights</p>
                            </div>
                          </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
   
    </asp:Content>