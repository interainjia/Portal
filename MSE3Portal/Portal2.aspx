<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Portal2.aspx.cs" Inherits="MSE3Portal.Portal2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <link href="CSS/template.css" type="text/css" rel="stylesheet" />
    <div class="container">
        <div class="row">
            <div class="col-md-1 hidden-sm"></div>
            <div class="col-md-10 col-sm-12">
                <div id="support" style="border-style: solid; border-color: #D7D6DB">
                    <div class="page-banner">
                        <asp:Label ID="lblHeader" runat="server" Text="Project Introduction"></asp:Label>
                    </div>

                    <div class="content-container container">
                        <div class="row">
                            <div class="col-md-1 hidden-sm"></div>
                            <div class="col-md-10 col-sm-12">
                                <div class="row">
                                    <div class="col-sm-12 col-xs-12">
                                        <div id="hc-forum" class="card horizontal-card">
                                            <div class="card-item">
                                                <div class="card-header">
                                                    <div class="card-icon"></div>
                                                </div>
                                                <div class="card-body">
                                                    <h2><a href="#">General Information<i class="fa fa-chevron-right"></i></a></h2>
                                                    <p>
                                                        In the <a href="http://forum.highcharts.com">Highcharts Forum</a> you'll find questions and 
								answers, and can discuss anything with the Highcharts developers directly. A large community is
								ready to help you, and our support engineer monitor the forum and
								attends to unanswered questions daily on business days.
                                                    </p>
                                                    <p class='extra-secondary-info'>The Highsoft Forum has <span class="number">18,683</span> users who have posted <span class="number">75,772</span> posts in <span class="number">19,183</span> different topics</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="stackoverflow" class="card horizontal-card">
                                            <div class="card-item">
                                                <div class="card-header">
                                                    <div class="card-icon"></div>
                                                </div>
                                                <div class="card-body">
                                                    <h2><a href="#">Project / Application Introduction<i class="fa fa-chevron-right"></i></a></h2>
                                                    <p>
                                                        To get help on a specific question or problem,
								<a href="http://stackoverflow.com/tags/highcharts">do a search</a> or 
								<a href="http://stackoverflow.com/questions/ask?tags=highcharts">post a question</a> to Stack Overflow 
								with the tag "highcharts", "highstock" or "highmaps". We monitor these questions and answer daily. Additionally, an army
								of developers are ready to help you and generally you'll receive help quicker than in the forum.
                                                    </p>
                                                    <p class='extra-secondary-info'>
                                                        <span class="number">16,350</span>
                                                        Stack Overflow questions are tagged Highcharts or Highstock
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="uservoice" class="card horizontal-card">
                                            <div class="card-item">
                                                <div class="card-header">
                                                    <div class="card-icon"></div>
                                                </div>
                                                <div class="card-body">
                                                    <h2><a href="#">Demo System<i class="fa fa-chevron-right"></i></a></h2>
                                                    <p>
                                                        To request a feature, please post a suggestion on
								<a href="http://highcharts.uservoice.com/forums/55896-general">UserVoice</a>, or vote for the 
								ones that are already registered.
                                                    </p>
                                                    <p class='extra-secondary-info'>
                                                        <span class="number">876</span> new features are currently
										requested for Highcharts
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="direct-contact" class="card horizontal-card">
                                            <div class="card-item">
                                                <div class="card-header">
                                                    <div class="card-icon"></div>
                                                </div>
                                                <div class="card-body">
                                                    <h2><a href="#">User Manual<i class="fa fa-chevron-right"></i></a></h2>
                                                    <p>
                                                        To contact us through our helpdesk, just send an email to <a href="/cdn-cgi/l/email-protection#fa898f8a8a95888eba92939d9299929b888e89d4999597"><span class="__cf_email__" data-cfemail="a8dbddd8d8c7dadce8c0c1cfc0cbc0c9dadcdb86cbc7c5">[email&#160;protected]</span><script data-cfhash='f9e31' type="text/javascript">/* <![CDATA[ */!function (t, e, r, n, c, a, p) { try { t = document.currentScript || function () { for (t = document.getElementsByTagName('script'), e = t.length; e--;) if (t[e].getAttribute('data-cfhash')) return t[e] }(); if (t && (c = t.previousSibling)) { p = t.parentNode; if (a = c.getAttribute('data-cfemail')) { for (e = '', r = '0x' + a.substr(0, 2) | 0, n = 2; a.length - n; n += 2) e += '%' + ('0' + ('0x' + a.substr(n, 2) ^ r).toString(16)).slice(-2); p.replaceChild(document.createTextNode(decodeURIComponent(e)), c) } p.removeChild(t) } } catch (u) { } }()/* ]]> */</script></a>. One of our support engineers will answer you within approximately 36 hours
								on business days.
                                                    </p>

                                                </div>
                                            </div>
                                        </div>

                                        <div id="github" class="card horizontal-card">
                                            <div class="card-item">
                                                <div class="card-header">
                                                    <div class="card-icon"></div>
                                                </div>
                                                <div class="card-body">
                                                    <h2><a href="#">Technical Specification<i class="fa fa-chevron-right"></i></a></h2>
                                                    <p>
                                                        Read our <a href="https://github.com/highcharts/highcharts/blob/master/repo-guidelines.md#reporting-issues">rules 
								for issue reporting</a> and report it on 
								<a href="https://github.com/highslide-software/highcharts.com/issues">GitHub Issues</a>. 
								If you're not sure it's a bug, please check with us in one of the above channels first.
                                                    </p>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1 hidden-sm"></div>
                        </div>
                    </div>

                    <div class="panel-footer"></div>
                </div>
            </div>
            <div class="col-md-1 hidden-sm"></div>
        </div>
        <div class="row">
            &nbsp;
        </div>
    </div>
</asp:Content>
