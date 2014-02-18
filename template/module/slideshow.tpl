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
		def_img_width = 980,
		def_img_height = 450,
		nivo_slide_container = $("#content .nivoSlider");
		
	$(window).resize( function () {
		if (res){clearTimeout(res)};
		res = setTimeout( 
			function(){
				var new_width 	=	$(window).width();
				var new_height 	=	Math.round( (new_width - fixed_padding) * (def_img_height / def_img_width) );	
				if ( new_width >= 980 ){
					$(nivo_slide_container).css({ "height": "450px", "width": "100%" });
				} else {
					$(nivo_slide_container).css({ "height": new_height + 'px', "width": new_width + 'px' }); 
					$(nivo_slide_container).css({ "background-size": new_width + 'px ' + new_height + 'px' });
				}
			}, 500 );
	});
	$(window).trigger('resize');
});

-->
</script>
