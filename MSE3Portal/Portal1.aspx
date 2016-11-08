<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Portal1.aspx.cs" Inherits="MSE3Portal.Portal1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-md-12 col-sm-12">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <i class="fa fa-tachometer fa-2x" aria-hidden="true"><span style="font-size:22px;">Dashboard</span></i>
        </div>
    </div>
    <div class="row">
        <div id="masonry" class="container-fluid masonry1">
        </div>
        <div id="masonry_ghost" class="hide">
            <div class="row">
                <div class="col-md-3">
                    <div class="thumbnail">
                        <div class="alert alert-1">
                            <a target="_blank" class="hyperlink" href="Portal2.aspx?item=iStation">iStation System</a>
                        </div>
                        <div class="imgs">
                            <input type="hidden" value="11.png" />
                        </div>
                        <div class="caption">
                            <div class="title">Technical Contact: <a target="_blank" href="mailto:Jack.Jia@cn.bosch.com?subject=Suggestion for iStation&body=Thanks for your email">Jia Jack</a> &nbsp;&nbsp;<a target="_blank" href="http://10.8.214.223/iStation/"><i class="fa fa-external-link" style="color: #6C9ABE" aria-hidden="true"></i></a></div>
                            <div class="content hide">
                                iStation
                            </div>
                            <div class="author hide">
                                by <a target="_blank" href="mailto:Jack.Jia@cn.bosch.com?subject=Suggestion for iStation&body=Thanks for your email">Jia Jack(AE/PJ-MSE3-CN)</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <div class="alert alert-2">
                            <a target="_blank" class="hyperlink" href="Portal2.aspx?item=FPY">First Pass Yield System</a>
                        </div>
                        <div class="imgs">
                            <input type="hidden" value="11.png" />
                        </div>
                        <div class="caption">
                            <div class="title">Technical Contact: <a target="_blank" href="mailto:Weiyan.LU@cn.bosch.com?subject=Suggestion for FPY&body=Thanks for your email">Lu Weiyan</a> &nbsp;&nbsp;<a target="_blank" href="http://10.8.140.108/NewFPY/Index.aspx"><i class="fa fa-external-link" style="color: #6C9ABE" aria-hidden="true"></i></a></div>
                            <div class="content hide">
                                FPY
                            </div>
                            <div class="author hide">
                                by <a target="_blank" href="mailto:Weiyan.LU@cn.bosch.com?subject=Suggestion for FPY&body=Thanks for your email">Lu Weiyan(AE/PJ-MSE3-CN)</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <div class="alert alert-3">
                            <a target="_blank" class="hyperlink" href="Portal2.aspx?item=Quality Warning">Quality Warning System</a>
                        </div>
                        <div class="imgs">
                            <input type="hidden" value="11.png" />
                        </div>
                        <div class="caption">
                            <div class="title">Technical Contact: <a target="_blank" href="mailto:fixed-term.Elaine.CAO@cn.bosch.com?subject=Suggestion for Quality Warning&body=Thanks for your email">Cao Elaine</a> &nbsp;&nbsp;<a target="_blank" href="http://10.8.214.223/qualitywarning/main.html"><i class="fa fa-external-link" style="color: #6C9ABE" aria-hidden="true"></i></a></div>
                            <div class="content hide">
                                QW
                            </div>
                            <div class="author hide">
                                by <a target="_blank" href="mailto:fixed-term.Elaine.CAO@cn.bosch.com?subject=Suggestion for Quality Warning&body=Thanks for your email">Cao Elaine(AE/PJ-MSE3-CN)</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <div class="alert alert-4">
                            <a target="_blank" class="hyperlink" href="Portal2.aspx?item=Lesson Learn">eLesson Learn System</a>
                        </div>
                        <div class="imgs">
                            <input type="hidden" value="11.png" />
                        </div>
                        <div class="caption">
                            <div class="title">Technical Contact: <a target="_blank" href="mailto:fixed-term.Elaine.CAO@cn.bosch.com?subject=Suggestion for Lesson Learn&body=Thanks for your email">Cao Elaine</a> &nbsp;&nbsp;<a target="_blank" href="http://10.8.214.223/qualitywarning/main.html"><i class="fa fa-external-link" style="color: #6C9ABE" aria-hidden="true"></i></a></div>
                            <div class="content hide">
                                LL
                            </div>
                            <div class="author hide">
                                by <a target="_blank" href="mailto:fixed-term.Elaine.CAO@cn.bosch.com?subject=Suggestion for Lesson Learn&body=Thanks for your email">Cao Elaine(AE/PJ-MSE3-CN)</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="thumbnail">
                        <div class="alert alert-4">
                            <a target="_blank" class="hyperlink" href="Portal2.aspx?item=eWorkflow">eWorkflow System</a>
                        </div>
                        <div class="imgs">
                            <input type="hidden" value="11.png" />
                        </div>
                        <div class="caption">
                            <div class="title">Technical Contact: <a target="_blank" href="mailto:Jack.Jia@cn.bosch.com?subject=Suggestion for eWorkflow&body=Thanks for your email">Jia Jack</a> &nbsp;&nbsp;<a target="_blank" href="http://10.8.214.223/eWorks/"><i class="fa fa-external-link" style="color: #6C9ABE" aria-hidden="true"></i></a></div>
                            <div class="content hide">
                                eWorkflow
                            </div>
                            <div class="author hide">
                                by <a target="_blank" href="mailto:Jack.Jia@cn.bosch.com?subject=Suggestion for iStation&body=Thanks for your email">Jia Jack(AE/PJ-MSE3-CN)</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <div class="alert alert-3">
                            <a target="_blank" class="hyperlink" href="#">Project Name</a>
                        </div>
                        <div class="imgs">
                            <input type="hidden" value="11.png" />
                        </div>
                        <div class="caption">
                            <div class="title">Technical Contact: <a target="_blank" href="#">Author</a></div>
                            <div class="content hide">
                                Name1
                            </div>
                            <div class="author hide">
                                by <a target="_blank" href="#">Author</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <div class="alert alert-2">
                            <a target="_blank" class="hyperlink" href="#">Project Name</a>
                        </div>
                        <div class="imgs">
                            <input type="hidden" value="11.png" />
                        </div>
                        <div class="caption">
                            <div class="title">Technical Contact: <a target="_blank" href="#">Author</a></div>
                            <div class="content hide">
                                Name2
                            </div>
                            <div class="author hide">
                                by <a target="_blank" href="#">Author</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <div class="alert alert-1">
                            <a target="_blank" class="hyperlink" href="#">Project Name</a>
                        </div>
                        <div class="imgs">
                            <input type="hidden" value="11.png" />
                        </div>
                        <div class="caption">
                            <div class="title">Technical Contact: <a target="_blank" href="#">Author</a></div>
                            <div class="content hide">
                                Name3
                            </div>
                            <div class="author hide">
                                by <a target="_blank" href="#">Author</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        //lightbox.option({
        //    'resizeDuration': 200,
        //    'wrapAround': true
        //})

        $(function () {
            var ghostNode = $('#masonry_ghost').find('.thumbnail'), i, ghostIndexArray = [];
            var ghostCount = ghostNode.length;
            for (i = 0; i < ghostCount; i++) {
                ghostIndexArray[i] = i;
            }
            /*
			ghostIndexArray.sort(function(a, b) {
				if(Math.random() > 0.5) {
					return a - b;
				} else {
					return b - a;
				}
			});
			*/
            var currentIndex = 0;
            var masNode = $('#masonry');
            var imagesLoading = false;

            function getNewItems() {
                var newItemContainer = $('<div/>');
                for (var i = 0; i < ghostCount; i++) {
                    if (currentIndex < ghostCount) {
                        newItemContainer.append(ghostNode.get(ghostIndexArray[currentIndex]));
                        currentIndex++;
                    }
                }
                return newItemContainer.find('.thumbnail');
            }

            function processNewItems(items) {
                try {
                    items.each(function () {
                        var $this = $(this);
                        var imgsNode = $this.find('.imgs');
                        var title = $this.find('.title').text().trim();
                        var author = $this.find('.author').text().trim();
                        var category = $this.find('.content').text().trim();
                        //title = category + ' - ' + title;
                        var lightboxName = 'roadtrip'; // + imgNames[0];
                        var imgNames = imgsNode.find('input[type=hidden]').val().split(',');
                        $.each(imgNames, function (index, item) {
                            imgsNode.append('<a href="case/images/large/' + category + '/' + item + '" data-lightbox="' + lightboxName + '" title="' + title + '"><img style="width:255px;height:100px" src="case/images/large/' + category + '/' + item + '" /></a>');
                        });
                    });
                }
                catch (err) { }
            }

            function initMasonry() {
                var items = getNewItems().css('opacity', 0);
                processNewItems(items);
                masNode.append(items);

                imagesLoading = true;
                items.imagesLoaded(function () {
                    imagesLoading = false;
                    items.css('opacity', 1);
                    masNode.masonry({
                        itemSelector: '.thumbnail',
                        isFitWidth: true
                    });
                });
            }

            function appendToMasonry() {
                var items = getNewItems().css('opacity', 0);
                processNewItems(items);
                masNode.append(items);

                imagesLoading = true;
                items.imagesLoaded(function () {
                    imagesLoading = false;
                    items.css('opacity', 1);
                    masNode.masonry('appended', items);
                });
            }

            initMasonry();

            $(window).scroll(function () {
                if ($(document).height() - $(window).height() - $(document).scrollTop() < 10) {
                    if (!imagesLoading) {
                        appendToMasonry();
                    }
                }
            });

            function randomColor() {
                var rand = Math.floor(Math.random() * 0xFFFFFF).toString(16);
                for (; rand.length < 6;) {
                    rand = '0' + rand;
                }
                return '#' + rand;
            }
        });
    </script>
</asp:Content>

