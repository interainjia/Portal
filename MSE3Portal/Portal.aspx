<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Portal.aspx.cs" Inherits="MSE3Portal.Portal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <style>
		#masonry
		{
			padding: 0;
			min-height: 450px;
			margin: 0 auto;
		}
		#masonry .thumbnail
		{
			width: 330px;
			margin: 20px;
			padding: 0;
			border-width: 1px;
			-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
					box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
		}
		#masonry .thumbnail .imgs
		{
			padding: 10px;
		}
		#masonry .thumbnail .imgs img
		{
			margin-bottom: 5px;
		}
		#masonry .thumbnail .caption
		{
			background-color: #fff;
			padding-top: 0;
			font-size: 13px;
		}
		#masonry .thumbnail .caption .title
		{
			font-size: 13px;
			font-weight: bold;
			margin: 5px 0;
			text-align: left;
		}
		#masonry .thumbnail .caption .author
		{
			font-size: 11px;
			text-align: right;
		}
		
		
		.lightbox .lb-image
		{
			max-width: none;
		}
		
		/*
		#masonry .thumbnail.style1
		{
			border-color: #d6e9c6;
		}
		#masonry .thumbnail.style1 .caption
		{
			color: #468847;
			background-color: #dff0d8;
			border-color: #d6e9c6;
		}
		#masonry .thumbnail.style1 .caption a
		{
			color: #468847;
			text-decoration: underline;
		}
		
		
		#masonry .thumbnail.style3
		{
			border-color: #428bca;
		}
		#masonry .thumbnail.style3 .caption
		{
			color: #fff;
			background-color: #428bca;
			border-color: #428bca;
		}
		#masonry .thumbnail.style3 .caption a
		{
			color: #fff;
			text-decoration: underline;
		}
		
		#masonry .thumbnail.style4
		{
			border-color: #bce8f1;
		}
		#masonry .thumbnail.style4 .caption
		{
			color: #3a87ad;
			background-color: #d9edf7;
			border-color: #bce8f1;
		}
		#masonry .thumbnail.style4 .caption a
		{
			color: #3a87ad;
			text-decoration: underline;
		}
		*/
	</style>

    <div class="container">
		<div id="masonry" class="container-fluid">
		</div>
		<div id="masonry_ghost" class="hide">
			<div class="thumbnail">
                <div class="alert alert-success">
                    <a target="_blank" href="http://10.8.214.223/iStation/">iStation System</a>
                </div>
				<div class="imgs">
					<input type="hidden" value="Slide1.JPG,Slide2.JPG,Slide3.JPG,Slide4.JPG,Slide5.JPG,Slide6.JPG,Slide7.JPG,Slide8.JPG,Slide9.JPG,Slide10.JPG,Slide11.JPG,Slide12.JPG,Slide13.JPG,Slide14.JPG,Slide15.JPG,Slide16.JPG,Slide17.JPG,Slide18.JPG,Slide19.JPG,Slide20.JPG,Slide21.JPG,Slide22.JPG,Slide23.JPG" />
				</div>
				<div class="caption">
					<div class="title">iStation</div>
					<div class="content hide">
						iStation
					</div>
					<div class="author">
						by <a target="_blank" href="mailto:Jack.Jia@cn.bosch.com?subject=Suggestion for iStation&body=Thanks for your email">Jia Jack(AE/PJ-MSE3-CN)</a>
					</div>
				</div>
			</div>
			<div class="thumbnail">
                <div class="alert alert-success">
                    <a target="_blank" href="http://10.8.140.108/NewFPY/Index.aspx">First Pass Yield System</a>
                </div>
				<div class="imgs">
					<input type="hidden" value="1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg" />
				</div>
				<div class="caption">
					<div class="title">First Pass Yeild</div>
					<div class="content hide">
						FPY
					</div>
					<div class="author">
						by <a target="_blank" href="mailto:Weiyan.LU@cn.bosch.com?subject=Suggestion for FPY&body=Thanks for your email">Lu Weiyan(AE/PJ-MSE3-CN)</a>
					</div>
				</div>
			</div>
			<div class="thumbnail">
                <div class="alert alert-success">
                    <a target="_blank" href="http://10.8.214.223/qualitywarning/main.html">Quality Warning System</a>
                </div>
				<div class="imgs">
					<input type="hidden" value="1.jpg,2.jpg" />
				</div>
				<div class="caption">
					<div class="title">Quality Warning System</div>
					<div class="content hide">
						QW
					</div>
					<div class="author">
						by <a target="_blank" href="mailto:fixed-term.Elaine.CAO@cn.bosch.com?subject=Suggestion for Quality Warning&body=Thanks for your email">Cao Elaine(AE/PJ-MSE3-CN)</a>
					</div>
				</div>
			</div>
		</div>
	</div>

    <script>
		$(function() {
			var ghostNode = $('#masonry_ghost').find('.thumbnail'), i, ghostIndexArray = [];
			var ghostCount = ghostNode.length;
			for(i=0; i<ghostCount; i++){
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
				for(var i=0; i<6; i++) {
					if(currentIndex < ghostCount) {
						newItemContainer.append(ghostNode.get(ghostIndexArray[currentIndex]));
						currentIndex++;
					}
				}
				return newItemContainer.find('.thumbnail');
			}
			
			function processNewItems(items) {
				items.each(function() {
					var $this = $(this);
					var imgsNode = $this.find('.imgs');
					var title = $this.find('.title').text();
					var author = $this.find('.author').text();
					var category = $this.find('.content').text();
					title += '&nbsp;&nbsp;(' + author + ')';
					var lightboxName = 'lightbox_'; // + imgNames[0];
					
					var imgNames = imgsNode.find('input[type=hidden]').val().split(',');
					$.each(imgNames, function (index, item) {
					    imgsNode.append('<a href="case/images/large/' + category + '/' + item + '" data-lightbox="' + lightboxName + '" title="' + title + '"><img src="case/images/large/' + category + '/' + item + '" /></a>');
					});
				});
			}
			
			function initMasonry() {
				var items = getNewItems().css('opacity', 0);
				processNewItems(items);
				masNode.append(items);
				
				imagesLoading = true;
				items.imagesLoaded(function(){
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
				items.imagesLoaded(function(){
					imagesLoading = false;
					items.css('opacity', 1);
					masNode.masonry('appended',  items);
				});
			}
			
			initMasonry();
			
			$(window).scroll(function() {
				
				if($(document).height() - $(window).height() - $(document).scrollTop() < 10) {
					
					if(!imagesLoading) {
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
