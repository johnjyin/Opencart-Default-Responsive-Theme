<div class="slideshow">
  <div id="slideshow<?php echo $module; ?>" class="nivoSlider" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
    <?php } ?>
  </div>
</div>
<div class="clearbreak"></div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#slideshow<?php echo $module; ?>').nivoSlider();
});
--></script>
<script type="text/javascript">
<!--
$(document).ready(function() {
	var res,
		fixed_padding = 40,
		nivo_slide_container = $("#content .nivoSlider");
	var def_img_width = $(nivo_slide_container).css("width");
	var def_img_height = $(nivo_slide_container).css("height");
	
	var img_url = $("#content .nivoSlider img").attr("src");
	var img_width = /[-][0-9]{2,4}[x]/.exec(img_url)[0];
	img_width = img_width.substring(1, img_width.length-1);
	var img_height = /[x][0-9]{2,4}[.]/.exec(img_url)[0];
	img_height = img_height.substring(1, img_height.length-1);
	
	if (img_width && img_height) {
		def_img_width = img_width;
		def_img_height = img_height;
	}
	
	$(window).resize( function () {
		if (res){clearTimeout(res)};
		res = setTimeout( 
			function(){
				var new_width 	=	window.innerWidth || $(window).width();
				var new_height 	=	Math.round( (new_width - fixed_padding) * (def_img_height / def_img_width) );	
				if ( new_width >= 980 ){
					$(nivo_slide_container).css({ "height": def_img_height, "width": def_img_width });
				} else {
					$(nivo_slide_container).css({ "height": new_height + 'px', "width": new_width + 'px' }); 
					$(nivo_slide_container).css({ "background-size": "100% !important" });
					$(nivo_slide_container).css({ "-webkit-background-size": new_width + 'px ' + new_height + 'px',
													"-moz-background-size": new_width + 'px ' + new_height + 'px',
													"background-size": new_width + 'px ' + new_height + 'px'});
				}
			}, 500 );
	}).trigger('resize');
});

-->
</script>
