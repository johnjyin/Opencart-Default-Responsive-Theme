<!--- ---------------------------------------------------------------
--  Copyright             :  2014
--  Author                :  JOHN J YIN
--	Email				  :	 john.yin@ebizdesigner.com
--  Version               :  0.2
--  Date                  :  18/02/2014
--  Description           :  one extension of Opencart Default theme
--                           to support mobile, tablet
--                         
--                           based on Opencart(v1.5.6) stylesheet.css 
--                           any changes would be marked
--
--  History               :
--      <author>   <time>      <version >       <desc>
--      JOHN	16/02/2014	0.2		initial
--		 - 		18/02/2014	0.2		test all common browsers    
--		-		20/02/2014	0.3		+ window.innerWidth()      
--------------------------------------------------------------- --->

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
				var new_width 	=	window.innerWidth || $(window).width();
				var new_height 	=	Math.round( (new_width - fixed_padding) * (def_img_height / def_img_width) );	
				if ( new_width >= 980 ){
					$(nivo_slide_container).css({ "height": "450px", "width": "980px" });
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
