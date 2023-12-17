<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testVisitorPage.aspx.cs" Inherits="Assignment.MEMBER.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="/style2.css" type="text/css" rel="stylesheet" />
 <style>

        .my-link {
            text-decoration: none;
            color: #000000;
        }

        #event{
            margin-bottom:50px;
        }

        #kungfu{
            margin-bottom:50px;
        }

        #tea{
            margin-bottom:50px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="intro">
    <div class="jumbotron">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                        <div class="l-banner s--course" data-gene="init:banner/initSlider">
                            <h3>
                                Today,
                                <span class="js-banner-cta banner-cta text-center">I want to learn...</span>
                            </h3>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="../pictures/event.jpg" class="carousel-img w-100 img-fluid" alt="..."/>
                            </div>
                            <div class="carousel-item">
                                <img src="../pictures/tea.jpg" class="carousel-img w-100 img-fluid" alt="..."/>
                            </div>
                            <div class="carousel-item">
                                <img src="../pictures/kungfu.jpg" class="carousel-img w-100 img-fluid" alt="..."/>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Festival Course -->
    <br /><br />
    <section id="festival">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-start">
                <h3>
                    Festival Courses
                </h3>
                <p>Explore top-rated courses</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="outer">
                    <a href="testMooncake.aspx" class="my-link">
                        <div class="upper">
                            <img src="../pictures/event1.jpg" />
                            <div class="innertext">
                                <span>View More</span>
                            </div>
                        </div>
                        <div class="lower">
                            <h3>Mooncake Festival</h3>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="outer">
                    <a href="testDuanWu.aspx" class="my-link">
                        <div class="upper">
                            <img src="../pictures/event2.jpg" />
                            <div class="innertext">
                                <span>View More</span>
                            </div>
                        </div>
                        <div class="lower">
                            <h3>Duanwu Festival</h3>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="outer">
                    <a href="testNewYear.aspx" class="my-link">
                        <div class="upper">
                            <img src="../pictures/event3.jpg" />
                            <div class="innertext">
                                <span>View More</span>
                            </div>
                        </div>
                        <div class="lower">
                            <h3>Chinese New Year Festival</h3>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="outer">
                    <a href="testDongZhi.aspx" class="my-link">
                        <div class="upper">
                            <img src="../pictures/event4.jpg" />
                            <div class="innertext">
                                <span>View More</span>
                            </div>
                        </div>
                        <div class="lower">
                            <h3>Dong Zhi Festival</h3>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- KungFu Course -->
<section id="kungfu">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-start">
                <h3>
                    Kung Fu Courses
                </h3>
                <p>Explore top-rated courses</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="outer">
                    <a href="testTaiChi.aspx" class="my-link">
                        <div class="upper">
                            <img src="../pictures/kungfu1.jpeg" />
                            <div class="innertext">
                                <span>View More</span>
                            </div>
                        </div>
                        <div class="lower">
                            <h3>Tai Chi Quan</h3>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="outer">
                    <a href="testFeiHung.aspx" class="my-link">
                        <div class="upper">
                            <img src="../pictures/kung2.jpg" />
                            <div class="innertext">
                                <span>View More</span>
                            </div>
                        </div>
                        <div class="lower">
                            <h3>Wong Fei Hung</h3>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="outer">
                    <a href="testShaoLin" class="my-link">
                        <div class="upper">
                            <img src="../pictures/kungfu3.jpeg" />
                            <div class="innertext">
                                <span>View More</span>
                            </div>
                        </div>
                        <div class="lower">
                            <h3>Shaolin Kung Fu</h3>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="outer">
                    <a href="testYuanJia.aspx" class="my-link">
                        <div class="upper">
                            <img src="../pictures/kung4.jpg" />
                            <div class="innertext">
                                <span>View More</span>
                               
                            </div>
                        </div>
                        <div class="lower">
                            <h3>Huo Yuanjia</h3>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Tea Course -->
    <section id="tea">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-start">
                <h3>
                    Tea Courses
                </h3>
                <p>Explore top-rated courses</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="outer">
                    <a href="testGreenTea.aspx" class="my-link">
                        <div class="upper">
                            <img src="../pictures/tea1.jpg" />
                            <div class="innertext">
                                <span>View More</span>
                            </div>
                        </div>
                        <div class="lower">
                            <h3>Green Tea</h3>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="outer">
                    <a href="testType.aspx" class="my-link">
                        <div class="upper">
                            <img src="../pictures/tea2.jpg" />
                            <div class="innertext">
                                <span>View More</span>
                            </div>
                        </div>
                        <div class="lower">
                            <h3>Type of Tea</h3>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="outer">
                    <a href="testWhiteTea" class="my-link">
                        <div class="upper">
                            <img src="../pictures/tea4.jpg" />
                            <div class="innertext">
                                <span>View More</span>
                            </div>
                        </div>
                        <div class="lower">
                            <h3>White Tea</h3>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="outer">
                    <a href="#" class="my-link">
                        <div class="upper">
                            <img src="../pictures/tea3.jpg" />
                            <div class="innertext">
                                <span>View More</span>
                               
                            </div>
                        </div>
                        <div class="lower">
                            <h3>Tea Set</h3>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
</asp:Content>
